/* reading from file requires standard io library and others*/
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#define TRUE 1
#define FALSE 0
 
/* global vars */
int hits, misses, prefetchSize, blockSize, cacheSize, sets, assoc = 0;
int phits, pmisses, preads, pwrites = 0;
int reads, writes = 0;
int b, s, mask;
struct set **myCache;
struct set **pCache;
long time = 0;
char *replacement;
 
/* struct declarations */
struct line{
  /* definitions of the parts of the line */
  int tagBits;
  int dirtyBit;
  long time;
  int validBit;
};
struct set{
  /* a set is an array of lines */
  struct line **myLines;
};
 
/* method prototyping */
struct set ** createCache();
void read(int, int, int);
void write(int, int, int);
void freeMyCache();
void preFetch(int);
void SimplePreFetch(int);
void pwrite(int, int, int);
void pread(int, int, int);
 
/*read/write will be handled by other methods for this question*/
int main(int argc, char **argv){
  /* declarations, name of file and file pointer */
  FILE *traceFile = fopen(argv[6], "r");
  cacheSize = atoi(argv[1]);
  blockSize = atoi(argv[2]);
  prefetchSize = atoi(argv[5]);
  /* conduct checks */
  if(traceFile == NULL){
    printf("error");
    exit(0);
  } else if(ceil(log2(cacheSize)) != floor(log2(cacheSize))){
    printf("error");
    exit(0);
  } else if(ceil(log2(blockSize)) != floor(log2(blockSize))){
    printf("error");
    exit(0);
  }
  /* calculate the association */
  char *assocString = argv[4];
  replacement = argv[3];
  /* get number of sets */
  if(strcmp(assocString, "direct") == 0){
    /* number of sets gets divided by 1 */
    sets = cacheSize/blockSize/1;
    assoc = 1;
  } else if(strcmp(assocString, "assoc") == 0){
    /* we have a fully associative cache */
    sets = 1;
    assoc = cacheSize/blockSize;
  } else if(assocString[5] == ':'){
    /* number of sets gets divided by association */
    assoc = atoi(&assocString[6]);
    /* check assoc is power of 2 */
    if(ceil(log2(assoc)) != floor(log2(assoc))){
      printf("error");
      exit(0);
    }
    sets = cacheSize/blockSize/assoc;
  } else{
    printf("error");
    exit(0);
  }
  /* find block offset size and set index size */
  b = log(blockSize)/log(2);
  s = log(sets)/log(2);
  /* our mask has to be all ones to get set index bits */
  mask = (1<<s) - 1;
  /* store instruction and address */
  char instruction;
  int address, tag, setIndex;
	/* int nDig, bitsToShift = 0; */
  /* allocate the sets and lines */
  myCache = createCache(sets, assoc, blockSize, cacheSize);
  pCache = createCache(sets, assoc, blockSize, cacheSize);
  /* loop through trace to exectute instructions */
  while(fscanf(traceFile, "%c %x\n", &instruction, &address) != EOF){
	/* zero append to address as needed 
	nDig = floor(log2(abs(address))) + 1;
	bitsToShift = nDig - 48;
	address <<= bitsToShift; */
  /* calculate the index bits and tag bits */
  setIndex = (((address >> b) & mask));
  tag = address >> (b+s);
    if(instruction == 'R'){
      /* call the read method */
      read(setIndex, tag, address);
      pread(setIndex, tag, address);
    } else if(instruction == 'W'){
      /* call the write method */
      writes++;
      pwrites++;
      write(setIndex, tag, address);
      pwrite(setIndex, tag, address);
    }
  }
  printf("no-prefetch\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", preads, pwrites, phits, pmisses);
  printf("with-prefetch\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", reads, writes, hits, misses);
  freeMyCache();
  fclose(traceFile);
  return 0;
}

/* fetch the prefetch size amount of values */
void SimplePreFetch(int address){
  /* counters */
  int leastTime = time;
  int x, setIndex, tag, leastIndex = 0;
  struct line **ptempLines;
  
  setIndex = ((address >> b) & mask);
  tag = address >> (b+s);
  /* fetch the lines at setindex */
  ptempLines = pCache[setIndex]->myLines;
  leastTime = time;
  /* check if your prefetch already exists in cache */
  for(x = 0; x < assoc; x++){
    if(ptempLines[x] -> validBit == 0){
      /* we need to read from memory */
      preads++;
      /* add your line here */
      struct line *ptempLine = calloc(1, sizeof(struct line));
      ptempLine -> validBit = 1;
      ptempLine -> tagBits = tag;
      ptempLine -> dirtyBit = 0;
      ptempLine -> time = time++;
      ptempLines[x] = ptempLine;
      break;
    } else{
      /* find the least time FIFO */
      if(ptempLines[x] -> time < leastTime){
        leastTime = ptempLines[x] -> time;
        leastIndex = x;
      }
    }
  }
  /* if x == assoc then we did not find any free spots or the address */
  if(x == assoc){
    /* we need to read from memory */
    preads++;
    /* free the previous data */
    free(ptempLines[leastIndex]);
    /* add your line here */
    struct line *tempLine = calloc(1, sizeof(struct line));
    tempLine -> validBit = 1;
    tempLine -> tagBits = tag;
    tempLine -> dirtyBit = 0;
    tempLine -> time = time++;
    ptempLines[leastIndex] = tempLine;
  }
}

/* read function */
void pwrite(int setIndex, int tag, int address){
  /* counters */
  int i;
  /* extract the lines that need to be searched */
  struct line **linesAtSet = pCache[setIndex]->myLines;
  /* check the cache at setindex */
  for(i = 0; i < assoc; i++){
    if(linesAtSet[i] -> validBit == 0 || linesAtSet[i] -> tagBits != tag){
      /* check all the lines before jumping to conclusions */
      continue;
    }
    else if(linesAtSet[i] -> tagBits == tag){
      /* update the dirty bit */
      linesAtSet[i] -> dirtyBit = 1;
      if(replacement[0] == 'l'){
        linesAtSet[i] -> time = time++; 
      }
      phits++;
      return;
    }
  }
  /* ladies and gentlemen... we have a miss */
  pmisses++;
  /* conduct a prefetch */
  SimplePreFetch(address);
}

/* without prefetch read function */
void pread(int setIndex, int tag, int address){
  /* counters */
  int i;
  /* extract the lines that need to be searched */
  struct line **linesAtSet = pCache[setIndex]->myLines;
  /* check the cache at setindex */
  for(i = 0; i < assoc; i++){
    if(linesAtSet[i] -> validBit == 0 || linesAtSet[i] -> tagBits != tag){
      /* check all the lines before jumping to conclusions */
      continue;
    }
    else if(linesAtSet[i] -> tagBits == tag){
      if(replacement[0] == 'l'){
        linesAtSet[i] -> time = time++; 
      }
      phits++;
      return;
    }
  }
  /* ladies and gentlemen... we have a miss */
  pmisses++;
  /* conduct a prefetch */
  SimplePreFetch(address);
}
 
/* Lets free some cache! */
void freeMyCache(){
  /* declare counter */
  int i;
  /* loop through our array of sets */
  for(i = 0; i < sets; i++){
    /* free all the "temps" */
    free(myCache[i] -> myLines);
    free(pCache[i] -> myLines);
  }
  /* free the cache itself */
  free(myCache);
  free(pCache);
}
 
/* calloc our cache simulation */
struct set ** createCache(){
  /* declarations */
  int i, x;
  struct set **cache = calloc(sets, sizeof(struct set*));
  /* start allocating */
  for(i = 0; i < sets; i++){
    /* allocate memory for each set */
    cache[i] = calloc(1, sizeof(struct set));
    /* we want to create numSets sets and associativity lines in each one */
    cache[i] -> myLines = calloc(assoc, sizeof(struct line*));
    /* loop through the lines in myLines */
    for(x = 0; x < assoc; x++){
      cache[i] -> myLines[x] = calloc(1, sizeof(struct line));
    }
  }
  return cache;
}
 
/* read function */
void read(int setIndex, int tag, int address){
  /* counters */
  int i;
  /* extract the lines that need to be searched */
  struct line **linesAtSet = myCache[setIndex]->myLines;
  /* check the cache at setindex */
  for(i = 0; i < assoc; i++){
    if(linesAtSet[i] -> validBit == 0 || linesAtSet[i] -> tagBits != tag){
      /* check all the lines before jumping to conclusions */
      continue;
    }
    else if(linesAtSet[i] -> tagBits == tag){
      if(replacement[0] == 'l'){
        linesAtSet[i] -> time = time++; 
      }
      hits++;
      return;
    }
  }
  /* ladies and gentlemen... we have a miss */
  misses++;
  /* conduct a prefetch */
  preFetch(address);
}
 
/* fetch the prefetch size amount of values */
void preFetch(int address){
  /* counters */
  int leastTime = time;
  int leastIndex = 0;
  int i, x, setIndex, tag;
  int curraddress = address;
  struct line **tempLines;
  int replaced = FALSE;
  /* add 4 to the current address prefetch number of times */
  for(i = 0; i <= prefetchSize; i++){
    replaced = FALSE;
    setIndex = ((curraddress >> b) & mask);
    tag = curraddress >> (b+s);
    /* fetch the lines at setindex */
    tempLines = myCache[setIndex]->myLines;
    leastTime = time;
    /* check if your prefetch already exists in cache */
    for(x = 0; x < assoc; x++){
      if(tempLines[x] -> validBit == 0){
        /* we need to read from memory */
        reads++;
        /* add your line here */
        struct line *tempLine = calloc(1, sizeof(struct line));
        tempLine -> validBit = 1;
        tempLine -> tagBits = tag;
        tempLine -> dirtyBit = 0;
        tempLine -> time = time++;
        tempLines[x] = tempLine;
        replaced = TRUE;
        break;
      }
      else if(tempLines[x] -> tagBits == tag){
        /* the address exists, nothing needs to be added */
        replaced = TRUE;
        break;
      } else{
        /* find the least time FIFO */
        if(tempLines[x] -> time < leastTime){
          leastTime = tempLines[x] -> time;
          leastIndex = x;
        }
      }
    }
    /* if x == assoc then we did not find any free spots or the address */
    if(!replaced){
      /* we need to read from memory */
      reads++;
      /* free the previous data */
      free(tempLines[leastIndex]);
      /* add your line here */
      struct line *tempLine = calloc(1, sizeof(struct line));
      tempLine -> validBit = 1;
      tempLine -> tagBits = tag;
      tempLine -> dirtyBit = 0;
      tempLine -> time = time++;
      tempLines[leastIndex] = tempLine;
    }
    /* update the curr address */
    curraddress += blockSize;  
  }
}
 
/* read function */
void write(int setIndex, int tag, int address){
  /* counters */
  int i;
  /* extract the lines that need to be searched */
  struct line **linesAtSet = myCache[setIndex]->myLines;
  /* check the cache at setindex */
  for(i = 0; i < assoc; i++){
    if(linesAtSet[i] -> validBit == 0 || linesAtSet[i] -> tagBits != tag){
      /* check all the lines before jumping to conclusions */
      continue;
    }
    else if(linesAtSet[i] -> tagBits == tag){
      /* update the dirty bit */
      linesAtSet[i] -> dirtyBit = 1;
      if(replacement[0] == 'l'){
        linesAtSet[i] -> time = time++; 
      }
      hits++;
      return;
    }
  }
  /* ladies and gentlemen... we have a miss */
  misses++;
  /* conduct a prefetch */
  preFetch(address);
}