/*
 * Regular expression implementation.
 * Supports only ( | ) * + ?.  No escapes.
 * Compiles to NFA and then simulates NFA
 * using Thompson's algorithm.
 *
 * See also http://swtch.com/~rsc/regexp/ and
 * Thompson, Ken.  Regular Expression Search Algorithm,
 * Communications of the ACM 11(6) (June 1968), pp. 419-422.
 *
 * Copyright (c) 2007 Russ Cox.
 *
 * Can be distributed under the MIT license, see bottom of file.
 */

#include <cuda.h>
#include <cuda_runtime_api.h>
#include <iostream>
#include <vector>

#include "cycleTimer.h"
#include "pnfa.h"

char *post;

int checkCmdLine(int argc, char **argv, char **fileName, char **regexFile,
                 int *time) {
  int visualize, simplified, postfix;
  SimpleReBuilder builder;
  State *start;

  parseCmdLine(argc, argv, &visualize, &postfix, time, &simplified, fileName,
               regexFile);

  // argv index at which regex is present
  int regexIndex = 1 + visualize + postfix + *time + simplified;
  if (fileName != NULL)
    regexIndex += 2;

  if (argc <= regexIndex) {
    usage(argv[0]);
    exit(EXIT_SUCCESS);
  }

  char *regexBuffer = (char *)malloc(strlen(argv[regexIndex]) + 1);
  strcpy(regexBuffer, argv[regexIndex]);
  simplifyRe(&regexBuffer, &builder);
  free(regexBuffer);

  post = re2post(builder.re);
  if (post == NULL) {
    fprintf(stderr, "bad regexp %s\n", argv[regexIndex]);
    return 1;
  }

  if (simplified == 1) {
    char *clean_simplified = stringifyRegex(builder.re);
    printf("\nSimplified Regex: %s\n", clean_simplified);
    free(clean_simplified);
    exit(0);
  }

  /* destruct the simpleRe */
  _simpleReBuilder(&builder);

  if (postfix == 1) {
    char *clean_post = stringifyRegex(post);
    printf("\nPostfix buffer: %s\n", clean_post);
    free(clean_post);
    exit(0);
  }

  if (visualize == 1) {
    start = post2nfa(post);
    visualize_nfa(start);
    exit(0);
  }

  return regexIndex;
}

int main(int argc, char **argv) {
  int i, timerOn, parallel = 1;
  char *fileName = NULL, *regexFile = NULL, **lines = NULL, **regexs = NULL;
  int num_lines, num_regexs;

  SimpleReBuilder builder;
  State *start;
  double startTime, endTime, endReadFile, endCopyStringsToDevice, endPMatch;

  int regexIndex = checkCmdLine(argc, argv, &fileName, &regexFile, &timerOn);

  // sequential matching
  if (parallel != 1) {

    start = post2nfa(post);
    if (start == NULL) {
      fprintf(stderr, "error in post2nfa %s\n", post);
      return 1;
    }

    // if no file is specified
    if (fileName == NULL) {
      startTime = CycleTimer::currentSeconds();
      for (i = regexIndex + 1; i < argc; i++) {
        if (anyMatch(start, argv[i]))
          printf("%d: %s\n", i - (regexIndex), argv[i]);
      }
      endTime = CycleTimer::currentSeconds();
    } else {
      startTime = CycleTimer::currentSeconds();

      readFile(fileName, &lines, &num_lines);
      unsigned char result[num_lines];
      for (i = 0; i < num_lines; i++) {
        if (anyMatch(start, lines[i]))
          result[i] = 1;
        else
          result[i] = 0;
      }

      endTime = CycleTimer::currentSeconds();

      for (i = 0; i < num_lines; i++) {
        if (result[i] == 1)
          printf("%s", lines[i]);
      }
    }

  }

  // parallel matching
  else {
    if (fileName == NULL) {
      printf("Enter a file \n");
      exit(EXIT_SUCCESS);
    }

    // match just a single regex
    if (regexFile == NULL) {
      startTime = CycleTimer::currentSeconds();
      char *regexBuffer = (char *)malloc(strlen(argv[regexIndex]) + 1);
      strcpy(regexBuffer, argv[regexIndex]);
      simplifyRe(&regexBuffer, &builder);
      free(regexBuffer);

      char *device_regex;
      int postsize = (strlen(builder.re) + 1) * sizeof(char);
      cudaMalloc((void **)&device_regex, postsize);
      cudaMemcpy(device_regex, builder.re, postsize, cudaMemcpyHostToDevice);

      // this doesn't actually give you the number of lines in num_lines whyyyyyyyyy
      // it basically just reads it into lines and calls it good :)
      readFile(fileName, &lines, &num_lines);
      endReadFile = CycleTimer::currentSeconds();

      char *device_line;
      u32 *device_line_table;

      // set the table of indices
      // additionally, go over lines array and set \n to be \0 (whilst also incrementing num_lines)
      u32 *table = (u32 *)malloc(sizeof(u32) * strlen(*lines));
      table[0] = 0;
      int num_lines = 0;
      int len = strlen(lines[0]);
      for (int i = 0; i < len; i++) {
        // printf("%c", (lines[0])[i]);
        if ((lines[0])[i] == '\n') {
          table[++num_lines] = i + 1;
          lines[0][i] = 0;
          // printf("char preced: %c\n", (lines[0])[i- 1] );
          // printf("INCREMENT\n");
        }
      }

      if (len > 0 && (lines[0][len - 1] != '\n')) {
        ++num_lines;
        table[num_lines] = len;
      }

      // if ((lines[0])[len - 1] == '\n') /*if at the end file not '\n', then we not forgot last offset */
      //   --num_lines;

      cudaMalloc((void **)&device_line_table, sizeof(u32) * (len));
      cudaMalloc((void **)&device_line, sizeof(char) * (len + 1));

      cudaMemcpy(device_line_table, table, sizeof(u32) * (len), cudaMemcpyHostToDevice);
      cudaMemcpy(device_line, *lines, sizeof(char) * (len + 1), cudaMemcpyHostToDevice);

      endCopyStringsToDevice = CycleTimer::currentSeconds();

      u32 host_regex_table[1]; /*offsets to regexes on host*/
      u32 *device_regex_table; /*this array will contain host_regex_table*/
      host_regex_table[0] = 0; /*in case of one regex offset must be 0*/
      cudaMalloc((void **)&device_regex_table, sizeof(u32));
      cudaMemcpy(device_regex_table, host_regex_table, sizeof(u32), cudaMemcpyHostToDevice); /*copy regex offset to device*/
      pMatch(device_line, device_line_table, num_lines, 1, timerOn, device_regex, device_regex_table, lines, table);

      endPMatch = CycleTimer::currentSeconds();
    }
    
    // match a bunch of regexs
    else {
      startTime = CycleTimer::currentSeconds();
      readFile(regexFile, &regexs, &num_regexs);
      readFile(fileName, &lines, &num_lines);
      endReadFile = CycleTimer::currentSeconds();
      
      // the following stuff is for passing in the search file to the gpu
      char *device_line;
      u32 *device_line_table;

      // set the table of indices
      // additionally, go over lines array and set \n to be \0 (whilst also incrementing num_lines)
      u32 *table = (u32 *)malloc(sizeof(u32) * strlen(*lines));
      table[0] = 0;
      int num_lines = 0;
      int len = strlen(lines[0]);
      for (int i = 0; i < len; i++) {
        // printf("%c", (lines[0])[i]);
        if ((lines[0])[i] == '\n') {
          table[++num_lines] = i + 1;
          lines[0][i] = 0;
          // printf("char preced: %c\n", (lines[0])[i- 1] );
          // printf("INCREMENT\n");
        }
      }

      if (len > 0 && (lines[0][len - 1] != '\n')) {
        ++num_lines;
        table[num_lines] = len;
      }

      // printf("num_lines: %d\n", num_lines);

      cudaMalloc((void **)&device_line_table, sizeof(u32) * (len));
      cudaMalloc((void **)&device_line, sizeof(char) * (len + 1));

      cudaMemcpy(device_line_table, table, sizeof(u32) * (len), cudaMemcpyHostToDevice);
      cudaMemcpy(device_line, *lines, sizeof(char) * (len + 1), cudaMemcpyHostToDevice);



      // orig
      char * device_regex;
			u32 * device_regex_table;
			u32 * host_regex_table = (u32 *) malloc(sizeof(u32) * strlen(*regexs));
			host_regex_table[0] = 0;
			int num_regexs = 0;
	
			len = strlen(regexs[0]);
			for (int i = 0; i < len; i++) {
				if (regexs[0][i] == '\n' || regexs[0][i] == 0) {
				
					host_regex_table[++num_regexs] = i+1;
					regexs[0][i] = 0;			
			
          char * regexBuffer = (char*)malloc(strlen(regexs[0] + host_regex_table[num_regexs-1])+1);
          strcpy(regexBuffer, regexs[0] + host_regex_table[num_regexs-1]);
          simplifyRe(&regexBuffer, &builder);
          free(regexBuffer);

					strcpy(regexs[0] + host_regex_table[num_regexs-1],builder.re);
				}
			}

      if (len > 0 && (regexs[0][len - 1] != '\n')) {
        ++num_regexs;

        // null-terminate last regex
        regexs[0][len] = 0;

        char *regexBuffer = (char*)malloc(strlen(regexs[0] + host_regex_table[num_regexs - 1]) + 1);
        strcpy(regexBuffer, regexs[0] + host_regex_table[num_regexs - 1]);
        simplifyRe(&regexBuffer, &builder);
        free(regexBuffer);

        strcpy(regexs[0] + host_regex_table[num_regexs - 1], builder.re);
      }

			cudaMalloc((void**)&device_regex_table, sizeof (u32) * (len ));		
			cudaMalloc((void**)&device_regex, sizeof (char) * (len + 1));		

			cudaMemcpy(device_regex_table, host_regex_table, sizeof(u32) * (len), cudaMemcpyHostToDevice);
			cudaMemcpy(device_regex, *regexs, sizeof(char) * (len + 1), cudaMemcpyHostToDevice);
			
			endCopyStringsToDevice = CycleTimer::currentSeconds();

			pMatch(device_line, device_line_table, num_lines, num_regexs, timerOn, device_regex, device_regex_table, lines, table);
			endPMatch = CycleTimer::currentSeconds();





      // // // work from here
      // std::vector<std::string> regex_list;
      // int start = 0;
      // len = strlen(regexs[0]);

      // // iter through regexs[0], which is just the entire regex file
      // // sperate into regex list based on \n or \0 terminator
      // for (int i = 0; i <= len; i++) {
      //   if (regexs[0][i] == '\n' || regexs[0][i] == 0) {
      //     regexs[0][i] = 0;
      //     if (i - start > 0) {
      //       regex_list.emplace_back(regexs[0] + start);
      //     }
      //     start = i + 1;
      //   }
      // }
      
      // int num_regexs = regex_list.size();
      // std::vector<std::string> simplified;
      // std::vector<u32> offsets;
      
      // std::string regex_concat;
      // u32 offset = 0;
      
      // // go back through collected regexs and 
      // for (const auto& r : regex_list) {
      //   char* regexBuffer = (char*)malloc(r.length() + 1);
      //   strcpy(regexBuffer, r.c_str());
      
      //   simplifyRe(&regexBuffer, &builder); // updates builder.re
      //   simplified.emplace_back(builder.re);
      //   offsets.push_back(offset);
      
      //   regex_concat += builder.re;
      //   regex_concat += '\0';  // null terminate each regex
      //   offset += strlen(builder.re) + 1;
      
      //   free(regexBuffer);
      // }
      
      // // Step 3: transfer to GPU
      // char* device_regex;
      // u32* device_regex_table;
      
      // cudaMalloc((void**)&device_regex_table, sizeof(u32) * num_regexs);
      // cudaMalloc((void**)&device_regex, sizeof(char) * regex_concat.size());
      
      // cudaMemcpy(device_regex_table, offsets.data(), sizeof(u32) * num_regexs, cudaMemcpyHostToDevice);
      // cudaMemcpy(device_regex, regex_concat.data(), regex_concat.size(), cudaMemcpyHostToDevice);

      // endCopyStringsToDevice = CycleTimer::currentSeconds();

      // // printf("num regex: %d\n", num_regexs);
      // // for (int i = 0; i < num_regexs; i++) {
      // //   std::cout << "regex[" << i << "] = " << simplified[i] << std::endl;
      // // }

      // pMatch(device_line, device_line_table, num_lines, num_regexs, timerOn,
      //        device_regex, device_regex_table, lines, table);
      // endPMatch = CycleTimer::currentSeconds();
    }
  }

  // print timing details
  if (timerOn && !parallel) {
    printf("\nSequential Time taken %.4f \n\n", (endTime - startTime));
  } else if (timerOn && parallel) {
    printf("\nParallel ReadFile Time taken %.4f \n", (endReadFile - startTime));
    printf("\nParallel CopyStringsToDevice Time taken %.4f \n",
           (endCopyStringsToDevice - endReadFile));
    printf("\nParallel pMatch Time taken %.4f \n\n",
           (endPMatch - endCopyStringsToDevice));
    printf("\nParallel Total Time taken %.4f \n\n", (endPMatch - startTime));
  }

  return EXIT_SUCCESS;
}

/*
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated
 * documentation files (the "Software"), to deal in the
 * Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute,
 * sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall
 * be included in all copies or substantial portions of the
 * Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
 * KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 * PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS
 * OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */