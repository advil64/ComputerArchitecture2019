/* reading from file requires standard io library*/
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>
#define TRUE 1
#define FALSE 0
 
void initTest(FILE *, double **, int, int);
void initTrain(FILE *, double **, double **, int, int);
void print(double **, int, int);
double ** transpose(double **, int, int);
double ** multiply(double **, int, int, double **, int, int);
void invert (double **, int, int);
void makeOnes(double **, int);
void makeZeros(double **, int);
void freeMyMatrix(double **, int);
double ** specialMultiply(double **, int, int, double **, int, int);
 
int main(int argc, char *argv[]){
  int x;
  //store the attributes of the house
  int attributes, trainex, testex;
  //file pointer that stores the file
  FILE *train;
  FILE *test;
  //opened to be read
  train = fopen(argv[1], "r");
  test = fopen(argv[2], "r");
  //if there was a problem with openning the pointer is null
  if(train == NULL || test == NULL){
    printf("%s", "error");
    exit(0);
  }
  //scan and store attributes
  fscanf(train, "%d\n", &attributes);
  fscanf(train, "%d\n", &trainex);
  fscanf(test, "%d\n", &testex);
  //increase the attributes by one to account for the y-intercept
  attributes += 1;
  //store the two matrices
  double **testMatrix = malloc(testex*sizeof(double*));
  double **housePrices = malloc(trainex*sizeof(double*));
  double **trainMatrix = malloc(trainex*sizeof(double*));
  //read from the file and store the values
  initTrain(train, trainMatrix, housePrices, attributes, trainex);
  initTest(test, testMatrix, attributes-1, testex);
  //transpose the training data to continue to the next step
  double **transposed = transpose(trainMatrix, attributes, trainex);
  //print our results
  //print(transposed, attributes, trainex);
  //transpose times itself
  double **transposetimesItself = multiply(transposed, attributes, trainex, trainMatrix, trainex, attributes);
  //print our results
  // printf("\n");
  // print(transposetimesItself, attributes, attributes);
  //invert our multiplied matrix
  invert(transposetimesItself, attributes, attributes);
  //print our results
  // printf("\n");
  // print(transposetimesItself, attributes, attributes);
  //multiply the inverse by the transpose
  double **inverseTimesTranspose = multiply(transposetimesItself, attributes, attributes, transposed, attributes, trainex);
  //print our results
  // printf("\n");
  // print(inverseTimesTranspose, attributes, trainex);
  //finally we get our weights
  double **weights = multiply(inverseTimesTranspose, attributes, trainex, housePrices, trainex, 1);
  //print our results
  // printf("\n");
  // print(weights, attributes, 1);
  //calculate the test case answers
  double **result = specialMultiply(testMatrix, testex, attributes-1, weights, attributes, 1);
  //print our results
  // printf("\n");
  for(x = 0; x < testex; x++){
    //print our result
    printf("%0.0lf\n", result[x][0]);
  }
  //free all the matrices
  freeMyMatrix(testMatrix, testex);
  freeMyMatrix(trainMatrix, trainex);
  freeMyMatrix(housePrices, trainex);
  freeMyMatrix(result, testex);
  freeMyMatrix(weights, attributes);
  freeMyMatrix(inverseTimesTranspose, attributes);
  freeMyMatrix(transposetimesItself, attributes);
  freeMyMatrix(transposed, attributes);
  free(train);
  free(test);
  //return 
  return 0;
}

double ** specialMultiply(double **matrix1, int r1, int c1, double **matrix2, int r2, int c2){
  //declare indices
  int i,l;
  //store new matrix in this guy
  double **myResult = malloc(r1*sizeof(double*));
  //sum to keep track of each element
  double sum = 0;
  //create a row pointer
  double *myRow;
  //lets start multiplying! (rows of new matrix)
  for(i = 0; i < r1; i++){
    //create a new row
    myRow = malloc(sizeof(double));
    //reset the sum
    sum = matrix2[0][0];
    //multiply and add for each element
    for(l = 0; l < c1; l++){
      //arr1 sums the row nd arr2 the column
      sum += matrix1[i][l] * matrix2[l+1][0];
    }
    //fills up one column at a time
    myRow[0] = sum;
    //insert row into matrix
    myResult[i] = myRow;
  }
  return myResult;
}

void freeMyMatrix(double **myMatrix, int myRows){
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
 
void invert (double **myMatrix, int rows, int cols){
  //create a new matrix with double cols
  double **augmented = malloc(rows*sizeof(double*));
  //declare indices
  int x,i;
  //create row pointer
  double *myRow;
  //fill the values of out matrix
  for(x = 0; x < rows; x++){
    //create a new row
    myRow = malloc(cols*2*sizeof(double)); 
    for(i = 0; i < cols; i++){
      //put in the existing numbers
      myRow[i] = myMatrix[x][i]; 
    }
    //put in the zeros and ones
    for(i = 0; i < cols; i++){
      //check if its a diagonal
      if(i==x){
        myRow[i+cols] = 1;
      } else{
        myRow[i+cols] = 0;
      }
    }
    //put the row in the matrix compare with myMatrix[x]
    augmented[x] = myRow;
  }
  //traverse the matrix and find the fraction for each row
  makeZeros(augmented, rows);
  makeOnes(augmented, rows);
  //now make myMatrix the inverse
  for(x = 0; x < rows; x++){
    for(i = 0; i < cols; i++){
      //make myMatrix element equal to augmented matrix
      myMatrix[x][i] = augmented[x][i+cols];
    }
  }
  //free the augmented matrix
  freeMyMatrix(augmented, rows);
}

void makeOnes(double **matrix, int dimen){
  //declare index and fraction
  int index, j;
  double fraction;
  //loop through the diagonal
  for(index = 0; index < dimen; index++){
    //calculate the fraction for each digaonal entry
    fraction = matrix[index][index];
    //go through and multiply all the entries by the fraction
    for(j = 0; j < dimen*2; j++){
      //divide by the fraction
      matrix[index][j] /= fraction;
    }
  }
}
 
void makeZeros(double **matrix, int dimen){
  //declare an index and scalar
  int index, j, x;
  double scalar;
  //traverse the matrix to find all to make zero
  for(index = 0; index < dimen; index++){
    for(j = 0; j < dimen; j++){
      //check that you are not in a diagonal
      if(index != j){
        //calculate the scalar of the 1 row
        scalar = matrix[j][index] / matrix[index][index];
        //subtract the row by this
        for(x = 0; x < dimen*2; x++){
          //subtract the current row by the diagonal row times scalar
          matrix[j][x] -= (matrix[index][x]*scalar);
        }
      }
    }
  }
}
 
double ** multiply(double **matrix1, int r1, int c1, double **matrix2, int r2, int c2){
  //declare indices
  int i,x,l;
  //store new matrix in this guy
  double **myResult = malloc(r1*sizeof(double*));
  //sum to keep track of each element
  double sum = 0;
  //create a row pointer
  double *myRow;
  //lets start multiplying! (rows of new matrix)
  for(i = 0; i < r1; i++){
    //create a new row
    myRow = malloc(c2*sizeof(double));
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
 
double ** transpose(double **myMatrix, int rows, int cols){
  //create a temp matrix to store the values
  double **temp = malloc(rows*sizeof(double*));
  //declare indices
  int x,i;
  //create row pointer
  double *myRow;
  //fill the values of out matrix
  for(x = 0; x < rows; x++){
    //create a new row
    myRow = malloc(cols*sizeof(double)); 
    for(i = 0; i < cols; i++){
      //transpose em
      myRow[i] = myMatrix[i][x];
    }
    //put the row in the matrix compare with myMatrix[x]
    temp[x] = myRow;
  }
  //make the train matrix equal to temp
  return temp;
}
 
void print(double **myMatrix, int rows, int cols){
  //declare array indices
  int i, x;
  //print our new matrix
  for(i = 0; i < rows; i++){
    //print the cols
    for(x = 0; x < cols; x++){
      //avoid trailing spaces
      if(x-1 == cols){
        printf("%lf", myMatrix[i][x]);
      } else{
        printf("%lf\t", myMatrix[i][x]);
      }
    }
    if(i-1 != rows){
      printf("\n");
    }
  }
}
 
void initTest(FILE *myFile, double **myMatrix, int cols, int rows){
  //declare indices
  int x,i;
  //create row pointer
  double *myRow;
  //fill the values of out matrix
  for(x = 0; x < rows; x++){
    //create a new row
    myRow = malloc(cols*sizeof(double)); 
    for(i = 0; i < cols; i++){
      //scan the numbers and store em
      fscanf(myFile ,"%lf%*[,]", &myRow[i]);
    }
    //put the row in the matrix compare with myMatrix[x]
    myMatrix[x] = myRow;
  }
}
 
void initTrain(FILE *myFile, double **myMatrix, double **housePrices, int cols, int rows){
  //declare indices
  int x,i;
  //create row pointer
  double *myRow;
  double *myHouseRow;
  //fill the values of out matrix
  for(x = 0; x < rows; x++){
    //create a new row
    myRow = malloc(cols*sizeof(double));
    myHouseRow = malloc(sizeof(double));
    //the first one in the row is a 1
    myRow[0] = 1;
    for(i = 1; i < cols; i++){
      //scan the numbers and store em
      fscanf(myFile ,"%lf%*[,]", &myRow[i]);
    }
    //scan the last col and store the house price
    fscanf(myFile, "%lf\n", &myHouseRow[0]);
    //put the row in the matrix compare with myMatrix[x]
    myMatrix[x] = myRow;
    housePrices[x] = myHouseRow;
  }
}