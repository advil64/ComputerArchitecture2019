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
int filler(int **matrix);
void freeMyMatrix(int **matrix, int rows);

int main(int argc, char *argv[]){
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
  if(filler(matrix)){
    //we successfully filled the matrix
    print(matrix);
  } else{
    //we have an unsolvable matrix
    printf("no-solution");
  }
  //free the matrix and return 0
  freeMyMatrix(matrix, 16);
  return 0;
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

//check if the grid is full
int gridStatus(int **matrix){
  int isFull, i, x;
  isFull = TRUE;
  for(i = 0; i < 16; i++){
    for(x = 0; x < 16; x++){
      if(matrix[i][x] == 0x2D){
        isFull = FALSE;
      }
    }
  }
  return isFull;
}

int filler(int **matrix){
  //index variables
  int i,x,l;
  int left, top;
  //check to see if the grid is full and return true if it is
  if(gridStatus(matrix)){
    return TRUE;
  }
  //otherwise traverse and fill in the dashes
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
            //we found a number that works for all three
            matrix[i][x] = l;
            //recursively call the function again
            if(filler(matrix)){
              return TRUE;
            }
            //otherwise we made a mistake in assignment
            matrix[i][x] = 0x2D;
          }
          //none of the numbers worked so far so backtrack to an earlier number
          return FALSE;
        }
      }
    }
  }
  return FALSE;
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