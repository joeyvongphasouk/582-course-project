// #include "putil.cu"

// __device__ inline void paddstate(List *, State *, List *);
// __device__ inline void pstep(List *, int, List *);


// // __device__ __shared__ char buf[8000];

// __device__ inline int pstrlen(char *str) {
//   int len = 0;
//   while (*str != 0) {
//     len++;
//     str += 1;
//   }
//   return len;
// }

// /*
//  * Convert infix regexp re to postfix notation.
//  * Insert ESC (or 0x1b) as explicit concatenation operator.
//  * Cheesy parser, return static buffer.
//  */
// __device__ inline char *pre2post(char *re, char *dst) {
//   int nalt, natom;
//   struct {
//     int nalt;
//     int natom;
//   } paren[100], *p;
//   p = paren;
//   nalt = 0;
//   natom = 0;
//   char *start = dst;

//   int len = pstrlen(re);
//   if (len >= 256)
//     return NULL;
//   for (; *re; re++) {
//     switch (*re) {
//     case PAREN_OPEN: // (
//       if (natom > 1) {
//         --natom;
//         *dst++ = CONCATENATE;
//       }
//       if (p >= paren + 100)
//         return NULL;
//       p->nalt = nalt;
//       p->natom = natom;
//       p++;
//       nalt = 0;
//       natom = 0;
//       break;
//     case ALTERNATE: // |
//       if (natom == 0)
//         return NULL;
//       while (--natom > 0)
//         *dst++ = CONCATENATE;
//       nalt++;
//       break;
//     case PAREN_CLOSE: // )
//       if (p == paren)
//         return NULL;
//       if (natom == 0)
//         return NULL;
//       while (--natom > 0)
//         *dst++ = CONCATENATE;
//       for (; nalt > 0; nalt--)
//         *dst++ = ALTERNATE;
//       --p;
//       nalt = p->nalt;
//       natom = p->natom;
//       natom++;
//       break;
//     case STAR:     // *
//     case PLUS:     // +
//     case QUESTION: // ?
//       if (natom == 0)
//         return NULL;
//       *dst++ = *re;
//       break;
//     default:
//       if (natom > 1) {
//         --natom;
//         *dst++ = CONCATENATE;
//       }
//       *dst++ = *re;
//       natom++;
//       break;
//     }
//   }
//   if (p != paren)
//     return NULL;
//   while (--natom > 0)
//     *dst++ = CONCATENATE;
//   for (; nalt > 0; nalt--)
//     *dst++ = ALTERNATE;
//   *dst = 0;

//   return start;
// }

// /* Compute initial state list */
// __device__ inline List *pstartlist(State *start, List *l) {
//   l->n = 0;

//   List addStartState;
//   paddstate(l, start, &addStartState);
//   return l;
// }

// /* Check whether state list contains a match. */
// __device__ inline int ispmatch(List *l) {
//   int i;

//   for (i = 0; i < l->n; i++) {
//     if (l->s[i]->c == Match)
//       return 1;
//   }
//   return 0;
// }

// /* Add s to l, following unlabeled arrows. */
// __device__ inline void paddstate(List *l, State *s, List *addStateList) {
//   addStateList->n = 0;
//   PUSH(addStateList, s);
//   /* follow unlabeled arrows */
//   while (!IS_EMPTY(addStateList)) {

//     s = POP(addStateList);

//     // lastlist check is present to ensure that if
//     // multiple states point to this state, then only
//     // one instance of the state is added to the list
//     if (s == NULL)
//       ;
//     else if (s->c == Split) {
//       PUSH(addStateList, s->out);
//       PUSH(addStateList, s->out1);
//     } else {
//       l->s[l->n++] = s;
//     }
//   }
// }

// /*
//  * pstep the NFA from the states in clist
//  * past the character c,
//  * to create next NFA state set nlist.
//  */
// __device__ inline void pstep(List *clist, int c, List *nlist) {
//   int i;
//   State *s;
//   nlist->n = 0;
//   for (i = 0; i < clist->n; i++) {
//     s = clist->s[i];

//     if (s->c == c || s->c == Any) {
//       List addStartState;
//       paddstate(nlist, s->out, &addStartState);
//     }
//   }
// }

// /* Run NFA to determine whether it matches s. */
// __device__ inline int pmatch(State *start, char *s, List *dl1, List *dl2) {
//   int c;
//   List *clist, *nlist, *t;

//   clist = pstartlist(start, dl1);
//   nlist = dl2;
//   for (; *s; s++) {
//     c = *s & 0xFF;
//     pstep(clist, c, nlist);
//     t = clist;
//     clist = nlist;
//     nlist = t; // swap clist, nlist

//     // check for a match in the middle of the string
//     //	if (ispmatch(clist))
//     // return 1;
//   }
//   return ispmatch(clist);
// }

// /* Check for a string match at all possible start positions */
// __device__ inline int panypmatch(State *start, char *s, List *dl1, List *dl2) {
//   int isMatch = pmatch(start, s, dl1, dl2);
//   /*	int index = 0;
//           int len = pstrlen(s);
//           while (!isMatch && index < len) {
//                   isMatch = pmatch(start, s + index, dl1, dl2);
//                   index ++;
//           }
//   */
//   return isMatch;
// }
// __device__ State **regexNFAs;

// __global__ void parallelMatch(char *bigLine, u32 *tableOfLineStarts,
//                               int numLines, int numRegexs, int time,
//                               char *regexLines, u32 *regexTable,
//                               unsigned char *devResult) {

//   extern __shared__ char sharedMem[];
//   State **st_shared = (State **)sharedMem;
//   char *postfixBuf = (char *)(st_shared + 1);

//   for (int j = 0; j < numRegexs; j++) {
//       if (threadIdx.x == 0) {
//           char *re = regexLines + regexTable[j];
//           char *postfix = pre2post(re, postfixBuf);

    
//       pnstate = 0;
//       states = regexNFAs[j];  // assign per-regex memory
    
//       State *localSt = ppost2nfa(postfix);
    
//       // Use shared memory pointer to pass start state to other threads
//       st_shared[0] = localSt;
//     }
//     __syncthreads();
    
//     State *st = st_shared[0];
    
//     __syncthreads();

//     List d1;
//     List d2;

//     int i;
//     for (i = blockIdx.x * blockDim.x + threadIdx.x; i < numLines;
//          i += gridDim.x * blockDim.x) {
      
//       // modified so that the devResult would pass if already matched
//       // ensures ruleset matches over everything
//       if (devResult[i] == 1) continue;
//       char *lineSegment = bigLine + tableOfLineStarts[i];
//       if (panypmatch(st, lineSegment, &d1, &d2))
//         devResult[i] = 1;
//     }
//   }
// }

// __global__ void test(char *bigLine, u32 *tableOfLineStarts, int numLines,
//                      unsigned char *devResult) {
//   for (int k = 0; k < 2000; k++) {
//     for (int i = blockIdx.x * blockDim.x + threadIdx.x; i < numLines;
//          i += gridDim.x * blockDim.x) {
//       char *lineSegment = bigLine + tableOfLineStarts[i];
//       for (int j = 0; j < pstrlen(lineSegment); j++) {
//         if (lineSegment[i] == '\n')
//           devResult[i] = 1;
//         else
//           devResult[i] = 0;
//         break;
//       }
//     }
//   }
// }

// void pMatch(char *bigLine, u32 *tableOfLineStarts, int numLines, int numRegexs,
//             int time, char *regexLines, u32 *regexTable, char **lines,
//             u32 *hostLineStarts) {

//   cudaFuncSetCacheConfig(parallelMatch, cudaFuncCachePreferShared);


//   // new changes -----------
//   int maxStatesPerRegex = 100; // arbitrary max state count

//   // alloc array for nfa pointers on host and device
//   State **h_regexNFAs = (State **)malloc(numRegexs * sizeof(State *));
//   for (int i = 0; i < numRegexs; i++) {
//     cudaMalloc((void **)&h_regexNFAs[i], maxStatesPerRegex * sizeof(State));
//   }
//   State **d_regexNFAs;
//   cudaMalloc(&d_regexNFAs, numRegexs * sizeof(State *));

//   // copy over pointers
//   cudaMemcpy(d_regexNFAs, h_regexNFAs, numRegexs * sizeof(State *), cudaMemcpyHostToDevice);
//   cudaMemcpyToSymbol(regexNFAs, &d_regexNFAs, sizeof(State **));
//   // changes end -----------


//   unsigned char *devResult;
//   cudaMalloc(&devResult, numLines * sizeof(unsigned char));
//   size_t sharedMemSize = sizeof(State *) + 256 * sizeof(char);
//   parallelMatch<<<512, 160, sharedMemSize>>>(bigLine, tableOfLineStarts, numLines, numRegexs,
//                               time, regexLines, regexTable, devResult);
//   // parallelMatch<<<512, 160>>>(bigLine, tableOfLineStarts, numLines, numRegexs,
//   //   time, regexLines, regexTable, devResult);
//   // test<<<512,160>>>(bigLine, tableOfLineStarts, numLines, devResult);
//   cudaDeviceSynchronize();

//   cudaError_t error = cudaGetLastError();
//   if (error != cudaSuccess) {
//     printf("CUDA Error: %s\n", cudaGetErrorString(error));
//     exit(-1);
//   }

//   if (!time) {
//     unsigned char *hostResult =
//         (unsigned char *)malloc(numLines * sizeof(unsigned char));
//     cudaMemcpy(hostResult, devResult, numLines * sizeof(unsigned char),
//                cudaMemcpyDeviceToHost);

//     for (int i = 0; i < numLines; i++) {
//       if (hostResult[i] == 1)
//         PRINT(time, "%s\n", lines[0] + hostLineStarts[i]); //[i % numLines]);
//     }
//   }

//   cudaFree(devResult);
//   cudaFree(bigLine);
//   cudaFree(tableOfLineStarts);

//   // free newly added states as well
//   for (int i = 0; i < numRegexs; i++) {
//     cudaFree(h_regexNFAs[i]);
//   }
//   free(h_regexNFAs);
//   cudaFree(d_regexNFAs);
// }


#include "putil.cu"

__device__ inline void paddstate(List *, State *, List *);
__device__ inline void pstep(List *, int, List *);

__device__ __shared__ char buf[8000];

__device__ inline int pstrlen(char *str) {
  int len = 0;
  while (*str != 0) {
    len++;
    str += 1;
  }
  return len;
}

/*
 * Convert infix regexp re to postfix notation.
 * Insert ESC (or 0x1b) as explicit concatenation operator.
 * Cheesy parser, return static buffer.
 */
__device__ inline char *pre2post(char *re) {
  int nalt, natom;
  char *dst;
  struct {
    int nalt;
    int natom;
  } paren[100], *p;

  p = paren;
  dst = buf;
  nalt = 0;
  natom = 0;

  int len = pstrlen(re);
  if (len >= sizeof buf / 2)
    return NULL;
  for (; *re; re++) {
    switch (*re) {
    case PAREN_OPEN: // (
      if (natom > 1) {
        --natom;
        *dst++ = CONCATENATE;
      }
      if (p >= paren + 100)
        return NULL;
      p->nalt = nalt;
      p->natom = natom;
      p++;
      nalt = 0;
      natom = 0;
      break;
    case ALTERNATE: // |
      if (natom == 0)
        return NULL;
      while (--natom > 0)
        *dst++ = CONCATENATE;
      nalt++;
      break;
    case PAREN_CLOSE: // )
      if (p == paren)
        return NULL;
      if (natom == 0)
        return NULL;
      while (--natom > 0)
        *dst++ = CONCATENATE;
      for (; nalt > 0; nalt--)
        *dst++ = ALTERNATE;
      --p;
      nalt = p->nalt;
      natom = p->natom;
      natom++;
      break;
    case STAR:     // *
    case PLUS:     // +
    case QUESTION: // ?
      if (natom == 0)
        return NULL;
      *dst++ = *re;
      break;
    default:
      if (natom > 1) {
        --natom;
        *dst++ = CONCATENATE;
      }
      *dst++ = *re;
      natom++;
      break;
    }
  }
  if (p != paren)
    return NULL;
  while (--natom > 0)
    *dst++ = CONCATENATE;
  for (; nalt > 0; nalt--)
    *dst++ = ALTERNATE;
  *dst = 0;

  return dst;
}

/* Compute initial state list */
__device__ inline List *pstartlist(State *start, List *l) {
  l->n = 0;

  List addStartState;
  paddstate(l, start, &addStartState);
  return l;
}

/* Check whether state list contains a match. */
__device__ inline int ispmatch(List *l) {
  int i;

  for (i = 0; i < l->n; i++) {
    if (l->s[i]->c == Match)
      return 1;
  }
  return 0;
}

/* Add s to l, following unlabeled arrows. */
__device__ inline void paddstate(List *l, State *s, List *addStateList) {
  addStateList->n = 0;
  PUSH(addStateList, s);
  /* follow unlabeled arrows */
  while (!IS_EMPTY(addStateList)) {

    s = POP(addStateList);

    // lastlist check is present to ensure that if
    // multiple states point to this state, then only
    // one instance of the state is added to the list
    if (s == NULL)
      ;
    else if (s->c == Split) {
      PUSH(addStateList, s->out);
      PUSH(addStateList, s->out1);
    } else {
      l->s[l->n++] = s;
    }
  }
}

/*
 * pstep the NFA from the states in clist
 * past the character c,
 * to create next NFA state set nlist.
 */
__device__ inline void pstep(List *clist, int c, List *nlist) {
  int i;
  State *s;
  nlist->n = 0;
  for (i = 0; i < clist->n; i++) {
    s = clist->s[i];

    if (s->c == c || s->c == Any) {
      List addStartState;
      paddstate(nlist, s->out, &addStartState);
    }
  }
}

/* Run NFA to determine whether it matches s. */
__device__ inline int pmatch(State *start, char *s, List *dl1, List *dl2) {
  int c;
  List *clist, *nlist, *t;

  clist = pstartlist(start, dl1);
  nlist = dl2;
  for (; *s; s++) {
    c = *s & 0xFF;
    pstep(clist, c, nlist);
    t = clist;
    clist = nlist;
    nlist = t; // swap clist, nlist

    // check for a match in the middle of the string
    //	if (ispmatch(clist))
    // return 1;
  }
  return ispmatch(clist);
}

/* Check for a string match at all possible start positions */
__device__ inline int panypmatch(State *start, char *s, List *dl1, List *dl2) {
  int isMatch = pmatch(start, s, dl1, dl2);
  /*	int index = 0;
          int len = pstrlen(s);
          while (!isMatch && index < len) {
                  isMatch = pmatch(start, s + index, dl1, dl2);
                  index ++;
          }
  */
  return isMatch;
}

__device__ __shared__ State *st;
__device__ __shared__ State s[100];

__global__ void parallelMatch(char *bigLine, u32 *tableOfLineStarts,
                              int numLines, int numRegexs, int time,
                              char *regexLines, u32 *regexTable,
                              unsigned char *devResult) {

  for (int j = 0; j < numRegexs; j++) {
    // printf("%s\n", regexLines + regexTable[i]);

    if (threadIdx.x == 0) {
      pre2post(regexLines + regexTable[j]);

      char *postfix = buf;

      pnstate = 0;
      states = s;

      st = ppost2nfa(postfix);
    }

    __syncthreads();

    List d1;
    List d2;

    int i;
    for (i = blockIdx.x * blockDim.x + threadIdx.x; i < numLines;
         i += gridDim.x * blockDim.x) {
      
      // modified so that the devResult would pass if already matched
      // ensures ruleset matches over everything
      if (devResult[i] == 1) continue;
      char *lineSegment = bigLine + tableOfLineStarts[i];
      if (panypmatch(st, lineSegment, &d1, &d2))
        devResult[i] = 1;
    }
    
    __syncthreads();
  }
}

__global__ void test(char *bigLine, u32 *tableOfLineStarts, int numLines,
                     unsigned char *devResult) {
  for (int k = 0; k < 2000; k++) {
    for (int i = blockIdx.x * blockDim.x + threadIdx.x; i < numLines;
         i += gridDim.x * blockDim.x) {
      char *lineSegment = bigLine + tableOfLineStarts[i];
      for (int j = 0; j < pstrlen(lineSegment); j++) {
        if (lineSegment[i] == '\n')
          devResult[i] = 1;
        else
          devResult[i] = 0;
        break;
      }
    }
  }
}

void pMatch(char *bigLine, u32 *tableOfLineStarts, int numLines, int numRegexs,
            int time, char *regexLines, u32 *regexTable, char **lines,
            u32 *hostLineStarts) {

  cudaFuncSetCacheConfig(parallelMatch, cudaFuncCachePreferShared);

  unsigned char *devResult;
  cudaMalloc(&devResult, numLines * sizeof(unsigned char));

  parallelMatch<<<512, 160>>>(bigLine, tableOfLineStarts, numLines, numRegexs,
                              time, regexLines, regexTable, devResult);
  // test<<<512,160>>>(bigLine, tableOfLineStarts, numLines, devResult);
  cudaDeviceSynchronize();

  cudaError_t error = cudaGetLastError();
  if (error != cudaSuccess) {
    printf("CUDA Error: %s\n", cudaGetErrorString(error));
    exit(-1);
  }

  if (!time) {
    unsigned char *hostResult =
        (unsigned char *)malloc(numLines * sizeof(unsigned char));
    cudaMemcpy(hostResult, devResult, numLines * sizeof(unsigned char),
               cudaMemcpyDeviceToHost);

    for (int i = 0; i < numLines; i++) {
      if (hostResult[i] == 1)
        PRINT(time, "%s\n", lines[0] + hostLineStarts[i]); //[i % numLines]);
    }
  }

  cudaFree(devResult);
  cudaFree(bigLine);
  cudaFree(tableOfLineStarts);
}