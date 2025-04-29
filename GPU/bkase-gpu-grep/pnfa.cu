#include "putil.cu"
#include <vector>
#include <set>

__device__ inline void paddstate(List *, State *, List *);
__device__ inline void pstep(List *, int, List *);

__device__ __shared__ char buf[16384];

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
  int nalt = 0, natom = 0;
  char *dst = buf;
  struct {
    int nalt;
    int natom;
  } paren[128], *p = paren;

  int len = pstrlen(re);
  if (len >= sizeof(buf) / 2) return NULL;

  for (; *re; re++) {
    switch (*re) {
    case PAREN_OPEN: // (
      if (natom > 1) {
        --natom;
        *dst++ = CONCATENATE;
      }
      if (p >= paren + 128) return NULL;
      p->nalt = nalt;
      p->natom = natom;
      p++;
      nalt = 0;
      natom = 0;
      break;
    case ALTERNATE: // |
      if (natom == 0) return NULL;
      while (--natom > 0) *dst++ = CONCATENATE;
      nalt++;
      break;
    case PAREN_CLOSE: // )
      if (p == paren) return NULL;
      if (natom == 0) return NULL;
      while (--natom > 0) *dst++ = CONCATENATE;
      for (; nalt > 0; nalt--) *dst++ = ALTERNATE;
      --p;
      nalt = p->nalt;
      natom = p->natom;
      natom++;
      break;
    case STAR:     // *
    case PLUS:     // +
    case QUESTION: // ?
      if (natom == 0) return NULL;
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
  if (p != paren) return NULL;
  while (--natom > 0) *dst++ = CONCATENATE;
  for (; nalt > 0; nalt--) *dst++ = ALTERNATE;
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
    
    // Pre-compute string length
    int len = 0;
    while (s[len] != '\0') len++;
    
    // Early exit for empty strings
    if (len == 0) return 0;
    
    for (int i = 0; i < len; i++) {
        c = s[i] & 0xFF;
        pstep(clist, c, nlist);
        t = clist;
        clist = nlist;
        nlist = t;

        // Early exit if we find a match
        if (ispmatch(clist))
            return 1;
    }
    return 0;
}

/* Check for a string match at all possible start positions */
__device__ inline int panypmatch(State *start, char *s, List *dl1, List *dl2) {
    // Pre-compute string length
    int len = 0;
    while (s[len] != '\0') len++;
    
    // Early exit for empty strings
    if (len == 0) return 0;
    
    // Try matching at each position
    for (int i = 0; i < len; i++) {
        if (pmatch(start, s + i, dl1, dl2)) {
            return 1;
        }
    }
    return 0;
}

__device__ __shared__ State *st;
__device__ __shared__ State s[128];

// Add host version of pre2post
char* host_pre2post(char* re) {
    static char buf[16384];
    int nalt = 0, natom = 0;
    char *dst = buf;
    struct {
        int nalt;
        int natom;
    } paren[128], *p = paren;

    int len = strlen(re);
    if (len >= sizeof(buf) / 2) return NULL;

    for (; *re; re++) {
        switch (*re) {
        case PAREN_OPEN: // (
            if (natom > 1) {
                --natom;
                *dst++ = CONCATENATE;
            }
            if (p >= paren + 128) return NULL;
            p->nalt = nalt;
            p->natom = natom;
            p++;
            nalt = 0;
            natom = 0;
            break;
        case ALTERNATE: // |
            if (natom == 0) return NULL;
            while (--natom > 0) *dst++ = CONCATENATE;
            nalt++;
            break;
        case PAREN_CLOSE: // )
            if (p == paren) return NULL;
            if (natom == 0) return NULL;
            while (--natom > 0) *dst++ = CONCATENATE;
            for (; nalt > 0; nalt--) *dst++ = ALTERNATE;
            --p;
            nalt = p->nalt;
            natom = p->natom;
            natom++;
            break;
        case STAR:     // *
        case PLUS:     // +
        case QUESTION: // ?
            if (natom == 0) return NULL;
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
    if (p != paren) return NULL;
    while (--natom > 0) *dst++ = CONCATENATE;
    for (; nalt > 0; nalt--) *dst++ = ALTERNATE;
    *dst = 0;

    return buf;
}

// Add new host function for preprocessing
void preprocessRegex(char* regex, State** devStates, int* devNState) {
    if (!regex || !devStates || !devNState) {
        return;
    }
    
    // Convert regex to postfix on host
    char* postfix = host_pre2post(regex);
    if (!postfix) {
        return;
    }
    
    // Convert postfix to NFA on host
    State* start = post2nfa(postfix);
    if (!start) {
        return;
    }
    
    // Initialize the dev pointers in the NFA
    // First pass: count states and initialize dev pointers
    int stateCount = 0;
    State* current = start;
    std::set<State*> visited;
    
    // Use a stack for DFS traversal
    std::vector<State*> stack;
    stack.push_back(start);
    
    while (!stack.empty()) {
        current = stack.back();
        stack.pop_back();
        
        if (visited.find(current) != visited.end()) {
            continue;
        }
        
        visited.insert(current);
        current->dev = NULL;
        stateCount++;
        
        if (current->c == Split) {
            if (current->out != NULL) {
                stack.push_back(current->out);
            }
            if (current->out1 != NULL) {
                stack.push_back(current->out1);
            }
        } else if (current->out != NULL) {
            stack.push_back(current->out);
        }
    }
    
    // Allocate device memory for all states
    State* dev_states;
    cudaError_t err = cudaMalloc(&dev_states, stateCount * sizeof(State));
    if (err != cudaSuccess) {
        return;
    }
    
    // Second pass: copy states to device and set up pointers
    visited.clear();
    stack.clear();
    stack.push_back(start);
    int stateIndex = 0;
    
    while (!stack.empty()) {
        current = stack.back();
        stack.pop_back();
        
        if (visited.find(current) != visited.end()) {
            continue;
        }
        
        visited.insert(current);
        
        // Copy state to device
        err = cudaMemcpy(dev_states + stateIndex, current, sizeof(State), cudaMemcpyHostToDevice);
        if (err != cudaSuccess) {
            return;
        }
        current->dev = dev_states + stateIndex;
        stateIndex++;
        
        if (current->c == Split) {
            if (current->out != NULL) {
                stack.push_back(current->out);
            }
            if (current->out1 != NULL) {
                stack.push_back(current->out1);
            }
        } else if (current->out != NULL) {
            stack.push_back(current->out);
        }
    }
    
    // Third pass: update pointers in device memory
    visited.clear();
    stack.clear();
    stack.push_back(start);
    
    while (!stack.empty()) {
        current = stack.back();
        stack.pop_back();
        
        if (visited.find(current) != visited.end()) {
            continue;
        }
        
        visited.insert(current);
        
        if (current->dev != NULL) {
            if (current->out != NULL) {
                err = cudaMemcpy(&(current->dev->out), &(current->out->dev), sizeof(State*), cudaMemcpyHostToDevice);
                if (err != cudaSuccess) {
                    return;
                }
            }
            if (current->out1 != NULL) {
                err = cudaMemcpy(&(current->dev->out1), &(current->out1->dev), sizeof(State*), cudaMemcpyHostToDevice);
                if (err != cudaSuccess) {
                    return;
                }
            }
            
            if (current->c == Split) {
                if (current->out != NULL) {
                    stack.push_back(current->out);
                }
                if (current->out1 != NULL) {
                    stack.push_back(current->out1);
                }
            } else if (current->out != NULL) {
                stack.push_back(current->out);
            }
        }
    }
    
    *devStates = dev_states;
    *devNState = stateCount;
}

__global__ void parallelMatch(char *bigLine, u32 *tableOfLineStarts,
                              int numLines, State* devStates,
                              unsigned char *devResult) {
    // Each thread gets its own state lists
    List d1, d2;
    
    // Get the start state from device memory
    State* start = devStates;
    
    for (int i = blockIdx.x * blockDim.x + threadIdx.x; i < numLines; 
         i += gridDim.x * blockDim.x) {
        char *lineSegment = bigLine + tableOfLineStarts[i];
        devResult[i] = panypmatch(start, lineSegment, &d1, &d2) ? 1 : 0;
    }
}

void pMatch(char *bigLine, u32 *tableOfLineStarts, int numLines, int numRegexs,
            int time, char *regexLines, u32 *regexTable, char **lines,
            u32 *hostLineStarts) {
    if (!bigLine || !tableOfLineStarts || !regexLines || !regexTable || !lines || !hostLineStarts) {
        return;
    }
    
    if (numLines <= 0 || numRegexs <= 0) {
        return;
    }
    
    // Create CUDA streams for concurrent operations
    cudaStream_t stream1, stream2;
    cudaStreamCreate(&stream1);
    cudaStreamCreate(&stream2);
    
    // Copy regex table value from device to host
    u32 host_regex_offset;
    cudaError_t err = cudaMemcpyAsync(&host_regex_offset, regexTable, sizeof(u32), 
                                    cudaMemcpyDeviceToHost, stream1);
    if (err != cudaSuccess) {
        return;
    }
    
    // Allocate device memory for results
    unsigned char *devResult;
    err = cudaMallocAsync(&devResult, numLines * sizeof(unsigned char), stream1);
    if (err != cudaSuccess) {
        return;
    }
    
    // Initialize results to 0
    err = cudaMemsetAsync(devResult, 0, numLines * sizeof(unsigned char), stream1);
    if (err != cudaSuccess) {
        return;
    }
    
    // Copy the regex string from device to host
    char host_regex[1024] = {0};
    int i = 0;
    char current_char;
    do {
        err = cudaMemcpyAsync(&current_char, regexLines + host_regex_offset + i, 
                            sizeof(char), cudaMemcpyDeviceToHost, stream2);
        if (err != cudaSuccess) {
            return;
        }
        host_regex[i] = current_char;
        i++;
    } while (current_char != '\0' && i < 1023);
    
    // Wait for regex string copy to complete
    cudaStreamSynchronize(stream2);
    
    // Preprocess regex and get NFA states
    State* devStates = NULL;
    int devNState = 0;
    preprocessRegex(host_regex, &devStates, &devNState);
    
    // Wait for memory operations to complete
    cudaStreamSynchronize(stream1);
    
    cudaFuncSetCacheConfig(parallelMatch, cudaFuncCachePreferL1);

    // Use maximum threads per block for better occupancy
    int blockSize = 256;
    int gridSize = (numLines + blockSize - 1) / blockSize;
    
    // Launch kernel with preprocessed states
    parallelMatch<<<gridSize, blockSize, 0, stream1>>>(bigLine, tableOfLineStarts, numLines, 
                                                     devStates, devResult);
    
    if (!time) {
        // Allocate host memory for results
        unsigned char *hostResult = (unsigned char *)malloc(numLines * sizeof(unsigned char));
        
        // Copy results back to host
        err = cudaMemcpyAsync(hostResult, devResult, numLines * sizeof(unsigned char),
                           cudaMemcpyDeviceToHost, stream1);
        if (err != cudaSuccess) {
            free(hostResult);
            return;
        }
        
        // Wait for kernel and memory copy to complete
        cudaStreamSynchronize(stream1);
        
        // Process results
        for (int i = 0; i < numLines; i++) {
            if (hostResult[i] == 1)
                printf("%s\n", lines[0] + hostLineStarts[i]);
        }
        free(hostResult);
    } else {
        // Just wait for kernel to complete
        cudaStreamSynchronize(stream1);
    }

    // Cleanup
    cudaFreeAsync(devStates, stream1);
    cudaFreeAsync(devResult, stream1);
    
    // Wait for cleanup to complete
    cudaStreamSynchronize(stream1);
    
    // Destroy streams
    cudaStreamDestroy(stream1);
    cudaStreamDestroy(stream2);
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