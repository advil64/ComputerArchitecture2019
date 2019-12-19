/* reading from file requires standard io library*/
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <ctype.h>
#define TRUE 1
#define FALSE 0
 
//prototypes
int ** readInit(FILE *file);
int checkRow(int value, int *row);
void print(int **myMatrix);
int checkBox(int **matrix, int left, int right, int value);
int checkRow(int value, int *row);
int checkCol(int value, int row, int **matrix);
void filler(int **matrix);
void freeMyMatrix(int **matrix, int rows);
void finalCheck(int **matrix);
int detectDashes(int  **matrix);
 
int main(int argc, char *argv[]){
  //counter for detect matrix while loop
  int count = 0;
  //file pointer that stores the file
  FILE *file = NULL;
  //opened to be read
  file = fopen(argv[1], "r");
  //if there was a problem with openning the pointer is null
  if(file == NULL){
    printf("%s", "error");
    exit(0);
  }
  //initialize and assign matrix
  int **matrix = readInit(file);
  //fill the matrix
  filler(matrix);
  //detect all the dashes
  while(detectDashes(matrix)){
    //maybe we have more luck this time
    filler(matrix);
    //check the count
    if(count >= 16){
      //this is a bad matrix
      printf("no-solution");
      //free and exit the program
      freeMyMatrix(matrix, 16);
      exit(0);
    }
    //increase count
    count++;
  }
  //do a final check of the matrix
  finalCheck(matrix);
  //print the matrix
  print(matrix);
  //free the matrix and return 0
  freeMyMatrix(matrix, 16);
  free(file);
  return 0;
}
 
//this method detects any dashes and alerts of their prescence
int detectDashes(int **matrix){
  //declare variable
  int i,x;
  //traverse the matrix and check for dashes
  for(i = 0; i < 16; i++){
    for(x = 0; x < 16; x++){
      //check if the element is a dash
      if(matrix[i][x] == 0x2D){
        //return false
        return TRUE;
      }
    }
  }
  //we did not detect dashes
  return FALSE;
}
 
void freeMyMatrix(int **myMatrix, int myRows){
  //declare index
  int x;
  //filler code
  for(x = 0; x < myRows; x++){
    //free my rows
    free(myMatrix[x]);
  }
  //free the matrix itself
  free(myMatrix);
}
 
void filler(int **matrix){
  //index variables
  int i,x,l;
  int left, top;
  //boolean variable
  int bool = 0;
  //traverse and fill in the dashes
  for(i = 0; i < 16; i++){
    for(x = 0; x < 16; x++){
      //check if the element is a dash
      if(matrix[i][x] == 0x2D){
        //go through the 16 values to see if all work
        for(l = 0; l < 16; l++){
          //calculate left and top
          left = x/4;
          top = i/4;
          //carry out the checks
          if(checkRow(l, matrix[i]) && checkCol(l, x, matrix) && checkBox(matrix, left, top, l)){
            //if these conditions are met for the second time there are multiple options
            if(bool){
              //set bool to convey the message
              bool = FALSE;
              //there are too many options for this element, calculate the others
              break;
            }
            //we found a number that works for all three
            bool = TRUE;
            matrix[i][x] = l;
          }
        }
        //check if bool is true
        if(bool){
          //we're good to go and reset bool
          bool = FALSE;
        } else{
          //reset the element back to a -
          matrix[i][x] = 0x2D;
        }
      }
    }
  }
}
 
void finalCheck(int **matrix){
  //declare the ints
  int i, x, l, left, top;
  //traverse the matrix
  for(i = 0; i < 16; i++){
    for(x = 0; x < 16; x++){
      //we need to check if there is an int missing in the row/column
      for(l = 0; l < 16; l++){
        //calculate left and top
        left = x/4;
        top = i/4;
        //run the three checks
        if(!checkRow(l, matrix[i]) && !checkCol(l, x, matrix) && !checkBox(matrix, left, top, l)){
          //the int exists and we're good
          continue;
        } else{
          //an int does not exist and this is a bad board
          //print the bad news
          printf("no-solution");
          //print the matrix for debugging
          //print(matrix);
          //free the matrix
          freeMyMatrix(matrix, 16);
          //exit out
          exit(0);
        }
      }
    }
  }
}
 
void print(int **myMatrix){
  //index variables
  int i,x;
  //print our new matrix
  for(i = 0; i < 16; i++){
    //print the cols
    for(x = 0; x < 16; x++){
      //avoid trailing spaces
      if(x-1 == 16){
        printf("%X", myMatrix[i][x]);
      } else{
        printf("%X\t", myMatrix[i][x]);
      }
    }
    if(i-1 != 16){
      printf("\n");
    }
  }
}
 
int checkRow(int value, int *row){
  //index variables
  int i;
  //we check the other elements of the row to see if it is allowed
  for(i = 0; i < 16; i++){
    //check to see if these are the same as value
    if(row[i] == value){
      //exit and return false
      return FALSE;
    }
  }
  //otherwise the value is not present
  return TRUE;
}
 
int checkCol(int value, int col, int **matrix){
  //index variables
  int i;
  //basically the same as the check row
  for(i = 0; i < 16; i++){
    //check to see if these are the same as value
    if(matrix[i][col] == value){
      //exit and return false
      return FALSE;
    }
  }
  //otherwise the value is not present
  return TRUE;
}
 
int checkBox(int **matrix, int left, int top, int value){
  //index variables
  int i,x;
  //check within the given box
  for(i = top*4; i < top*4+4; i++){
    for(x = left*4; x < left*4+4; x++){
      //check each box
      if(matrix[i][x] == value){
        return FALSE;
      }
    }
  }
  //value was not found and we are good to go
  return TRUE;
}
 
int ** readInit(FILE *myFile){
  //index variables
  int i,x;
  char temp;
  //matrix stores int pointers
  int **myMatrix = malloc(16*sizeof(int*));
  //create a new row marray
  int *row = malloc(16*sizeof(int));
  //fill the values of out matrix
  for(x = 0; x < 16; x++){
    //create a new row
    row = (int *)malloc(16*sizeof(int));
    for(i = 0; i < 16; i++){
      //scan the numbers and store em dash is stored as 2d
      fscanf(myFile,"%c\t", &temp);
      //check if temp is a dash
      if(temp == '-'){
        row[i] = 0x2D;
      } else{
        if(isdigit(temp) != 0){
          //conver to int
          row[i] = temp - '0';
        } else{
          //get a switch statement in there
          switch(temp){
            case 'A':
              row[i] = 10;
              break;
            case 'B':
              row[i] = 11;
              break;
            case 'C':
              row[i] = 12;
              break;
            case 'D':
              row[i] = 13;
              break;
            case 'E':
              row[i] = 14;
              break;
            case 'F':
              row[i] = 15;
              break;
          }
        }
      }
    }
    //put the row in the matrix compare with myMatrix[x]
    myMatrix[x] = row;
  }
  //return stuffed matrix
  return myMatrix;
}

