#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE 0

void helper(char string[]);

int main(int argc, char *argv[]){
  //index
  int i = 0;
  for(i = 1; i < argc; i++){
    helper(argv[i]);
  }
  //return
  return 0;
}

void helper(char string[]){
 //count to keep track of the loop
  int count = 0;
  //char to keep track of curent char
  char temp;
  //check if it is an empty string
  if(string[0] == ' '){
    //exit and don't print anything 
    return;
  }
  //loop until we get to the end of the given string
  while(TRUE){
    //check each character
    temp = string[count];
    //if its \0 or space, print the char before
    if(temp == ' '){
      printf("%c", string[count-1]);
    } else if(temp == '\0'){
      //print and break if you are at the end of a file
      printf("%c", string[count-1]);
      break;
    } 
    //increment count
    count++;
  }
}