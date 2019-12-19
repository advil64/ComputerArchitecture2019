#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE 0

//our prototypes
int ** createMatrix(FILE *myFile, int myRows, int myCols);
void freeMyMatrix(int **myMatrix, int myRows);
int check(int **myMatrix, int rows, int cols);
int rowSums(int **matrix, int rows, int cols);
int colSums(int **matrix, int rows, int cols);
int diagSums(int **matrix, int rows, int cols);
int checkRepeats(int **matrix, int rows);

int main(int argc, char *argv[]){

  //file pointer that stores the file
  FILE *file;
  //opened to be read
  file = fopen(argv[1], "r");
  //if there was a problem with openning the pointer is null
  if(file == NULL){
    printf("%s", "error");
    exit(0);
  }
  //declare all the row and cols values
  int rows;
  int cols;
  //store the dimensions of the first matrix
  fscanf(file, "%d\n", &rows);
  //cols and rows is the same
  cols = rows;
  //create our first matrix
  int **matrix = createMatrix(file, rows, cols);
  //check to see if its magic
  if(checkRepeats(matrix, rows) && check(matrix, rows, cols)){
    printf("magic");
  } else{
    printf("not-magic");
  }
  //free them matrices
  freeMyMatrix(matrix, rows);
  //close the file
  fclose(file);
  //exit
  return 0;
}

int checkRepeats(int **myMatrix, int rows){
  //declare
  int i = 0;
  int p = 0;
  int temp = 0;
  int count = 0;
  //create a straight array of all the ints
  int *straight = (int *)malloc(rows*rows*sizeof(int));
  //fill up our straight matrix
  for(i = 0; i < rows; i++){
    for(p = 0; p < rows; p++){
      temp = myMatrix[i][p];
      straight[count] = temp;
      count++;
    }
  }
  //start checking
  for(i = 0; i < rows*rows; i++){
    temp = straight[i];
    for(p = 0; p < i; p++){
      if(straight[p] == temp){
        free(straight);
        return FALSE;
      }
    }
  }
  free(straight);
  return TRUE;
}

int check(int **myMatrix, int rows, int cols){
  //everything gotta add up to the magic number
  int magicNumber;
  //check the rows
  if(!rowSums(myMatrix, rows, cols)){return FALSE;}
  //check the columns
  if(!colSums(myMatrix, rows, cols)){return FALSE;}
  //check the diagonals
  if(!diagSums(myMatrix, rows, cols)){return FALSE;}
  //if everything checks out its true
  return TRUE;
}

int ** createMatrix(FILE *myFile, int myRows, int myCols){
	//declare indices
	int x,i;
  x = 0;
  i = 0;
  //matrix stores int pointers
  int **myMatrix = (int **)malloc(myRows*sizeof(int*));
  //create row pointer
  int *myRow;
  //fill the values of out matrix
  for(x = 0; x < myRows; x++){
    //create a new row
    myRow = (int *)malloc(myCols*sizeof(int));
    for(i = 0; i < myCols; i++){
      //scan the numbers and store em
      fscanf(myFile ,"%d\t", &myRow[i]);
    }
    //put the row in the matrix compare with myMatrix[x]
    myMatrix[x] = myRow;
  }
  //return the stuffed matrix
  return myMatrix;
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

int rowSums(int **matrix, int rows, int cols){
  //index
  int i, r, sum, tracker;
  //define
  i = 0;
  r = 0;
  sum = 0;
  tracker = 0;
  //find the row sum
  for(i = 0; i < cols; i++){
    //sum up the first row
    tracker += matrix[0][i];
  }
  //loop through the rows
  for(r = 1; r < rows; r++){
    for(i = 0; i < cols; i++){
      sum += matrix[r][i];
    }
    //check if its the same
    if(sum != tracker){return FALSE;}
    //otherwise reset the sum
    sum = 0;
  }
  //return true if its all good
  return TRUE;
}

int colSums(int **matrix, int rows, int cols){
    //index
  int l, m, n, o, p;
  //declare p and m
  p = 0;
  m = 0;
  //find the row sum
  for(l = 0; l < rows; l++){
    //sum up the first row
    m += matrix[l][0];
  }
  //loop through the rows
  for(n = 1; n < cols; n++){
    for(o = 0; o < rows; o++){
      p += matrix[o][n];
    }
    //check if its the same
    if(p != m){return FALSE;}
    //otherwise reset the sum
    p = 0;
  }
  //return true if its all good
  return TRUE;
}

int diagSums(int **matrix, int rows, int cols){
  //tracker
  int tracker, i, sum;
  tracker = 0;
  i = 0;
  sum = 0;
  //loop through the first diagonal
  for(i = 0; i < rows; i++){
    //add up the diagonals
    tracker += matrix[i][i];
  }
  //now the other diagonal
  for(i = rows-1; i > -1; i--){
    //add up the diagonals
    sum += matrix[i][i];
  }
  //ternary operator for return
  return (sum == tracker);
}
