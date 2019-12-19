#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE 0

//our prototypes
int ** createMatrix(FILE *myFile, int myRows, int myCols);
void freeMyMatrix(int **myMatrix, int myRows);
int ** multiply(int **matrix1, int r1, int c1, int **matrix2, int r2, int c2);
void print(int **myMatrix, int rows, int cols);

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
  int rows1;
  int cols1;
  int rows2;
  int cols2;
  //store the dimensions of the first matrix
  fscanf(file, "%d\t%d\n", &rows1, &cols1);
  //create our first matrix
  int **matrix1 = createMatrix(file, rows1, cols1);
  //store the dimensions of the second matrix
  fscanf(file, "\n%d\t%d\n", &rows2, &cols2);
  //create our second matrix
  int **matrix2 = createMatrix(file, rows2, cols2);
  //check if dimensions are ok
  if(cols1 != rows2){
    //free matrices
    freeMyMatrix(matrix1, rows1);
    freeMyMatrix(matrix2, rows2);
    //close the file
    fclose(file);
    //print bad matrix error
    printf("bad-matrices");
    //exit
    return 0;
  }
  //multiply our matrices
  int **result = multiply(matrix1, rows1, cols1, matrix2, rows2, cols2);
  //print our result
  print(result, rows1, cols2);
  //free our matrices
  freeMyMatrix(matrix1, rows1);
  freeMyMatrix(matrix2, rows2);
  freeMyMatrix(result, rows1);
  //close the file
  fclose(file);
  //exit
  return 0;
}

void print(int **myMatrix, int rows, int cols){
	//declare array indices
	int i, x;
  //print our new matrix
  for(i = 0; i < rows; i++){
    //print the cols
    for(x = 0; x < cols; x++){
      //avoid trailing spaces
      if(x-1 == cols){
        printf("%d", myMatrix[i][x]);
      } else{
        printf("%d\t", myMatrix[i][x]);
      }
    }
    if(i-1 != rows){
      printf("\n");
    }
  }
}

int ** multiply(int **matrix1, int r1, int c1, int **matrix2, int r2, int c2){
	//declare indices
	int i,x,l;
  //store new matrix in this guy
  int **myResult = (int **)malloc(r1*sizeof(int*));
  //sum to keep track of each element
  int sum = 0;
  //create a row pointer
  int *myRow;
  //lets start multiplying! (rows of new matrix)
  for(i = 0; i < r1; i++){
    //create a new row
    myRow = (int *)malloc(c2*sizeof(int));
    //columns of new matrix
    for(x = 0; x < c2; x++){
      //reset the sum
      sum = 0;
      //multiply and add for each element
      for(l = 0; l < c1; l++){
        //arr1 sums the row nd arr2 the column
        sum = sum + matrix1[i][l] * matrix2[l][x];
      }
      //fills up one column at a time
      myRow[x] = sum;
    }
    //insert row into matrix
    myResult[i] = myRow;
  }
  return myResult;
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

int ** createMatrix(FILE *myFile, int myRows, int myCols){
	//declare indices
	int x,i;
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