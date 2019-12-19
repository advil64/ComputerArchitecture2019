#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#define MAXSTR 100
#define TRUE 1
#define FALSE 0

//Struct prototypes
struct variable{
  /* definitions of the parts of the line */
  int value;
  char name[MAXSTR];
	struct variable *next;
};
struct Gate{
	//name of the operation
	char op[MAXSTR];
	//names of variables involved in operation
	char vars[MAXSTR];
	//next gate in the linked list
	struct Gate *next;
};

//method prototypes
void createGraycode();
void printGrayCode();
void createGate(char *, char *);
void gateTraversal();
struct variable *findVar(char *);
struct variable *createVar(char *, int);
struct variable *populateInputs(struct variable *a, struct variable *b);
int *grayGen(int, int);
int decodeCompare(int, int *, struct variable *c);
void freeVars(struct variable *m);


//file pointer that stores the file
FILE *file;
/* other global variables */
int numOfVars;
int numOfOutputVars;
struct variable **temps;
int **myGrayCode;
struct Gate *Head;
struct Gate *Tail;
struct variable *headTempVariable;
struct variable *tailTempVariable;
struct variable *headMainVariable;
struct variable *tailMainVariable;
struct variable *headOutputVariable;
struct variable *tailOutputVariable;

int main(int argc, char *argv[]){

	//counters
	int i = 0;
	char variables[MAXSTR];
	char temp[MAXSTR];
	//initialize all the heads to null
	Head = NULL;
	headTempVariable = NULL;
	headMainVariable = NULL;
	headOutputVariable = NULL;
  //opened to be read
  file = fopen(argv[1], "r");
  //if there was a problem with openning the pointer is null
  if(file == NULL){
    printf("%s", "error");
    exit(0);
  }
	//store the instruction
	char instruction[MAXSTR];
	//start reading the file
	while(fscanf(file, "%s", instruction) != EOF){
		//check to see what it is exactly
		if(strcmp(instruction, "INPUTVAR") == 0){
			//store the number of vars we neeed to declare
			fscanf(file, "%d ", &numOfVars);
			//loop through num of vars times and store our variables
			for(i = 0; i < numOfVars; i++){
				//allocate memory for the variable
				fscanf(file, "%s ", temp);
				createVar(temp, 1);
			}
		} else if(strcmp(instruction, "OUTPUTVAR") == 0){
			//find the number of output vars and name
			fscanf(file, "%d ", &numOfOutputVars);
			//loop through num of outputvars times and store our variables
			for(i = 0; i < numOfOutputVars; i++){
				//allocate memory for the variable
				fscanf(file, "%s ", temp);
				createVar(temp, 2);
			}
		} else{
			//read the variables line
			fscanf(file,"%[^\n]", variables);
			createGate(instruction, variables);
		}
	}
	//create the graycode
	createGraycode();
  //close the file
  fclose(file);
	//free everything
	freeVars(headMainVariable);
	freeVars(headOutputVariable);
	free(headTempVariable);
  //exit
  return 0;
}

void createGate(char *operation, char *variables){
	//create temp gate to store info
	struct Gate *temp = malloc(sizeof(struct Gate));
	//store the info
	strcpy(temp -> op, operation);
	while(isspace(*variables)) variables++;
	strcpy(temp -> vars, variables);
	temp -> next = NULL;
	//if head is null store in there
	if(Head == NULL){
		Head = temp;
		Tail = temp;
	} else{
		Tail -> next = temp;
		Tail = Tail -> next;
	}
}

void printGrayCode(){
	//declare array indices
	int i, x;
	int rows = pow(2, numOfVars);
  //print our new matrix
  for(i = 0; i < rows; i++){
    //print the cols
    for(x = 0; x < numOfVars+numOfOutputVars; x++){
      //avoid trailing spaces
      printf("%d ", myGrayCode[i][x]);
    }
    if(i-1 != rows){
      printf("\n");
    }
  }
}

void createGraycode(){
	//declare indices
	int x,gray,count = 0;
	//create the graycode storage
	int rows = pow(2,numOfVars);
	myGrayCode = malloc(rows*sizeof(int*));
	struct variable *temp;
	//create row pointer
  int *myRow;
	//loop through each line and create rows
	for(x = 0; x < rows; x++){
    //create a new row
    myRow = (int *)malloc((numOfOutputVars+numOfVars)*sizeof(int));
		//find the graycode
		gray = x ^ (x >> 1);
		//store the gray code in the array
		for(count = numOfVars-1; count >= 0; count--){
			if(gray == 0){myRow[count] = 0;}
			else if (!(gray & 1)){myRow[count] = 0;}
			else{myRow[count] = 1;}
			gray >>= 1;
		}
		//update the main vars
		temp = headMainVariable;
		for(count = 0; count < numOfVars; count++){
			temp -> value = myRow[count];
			temp = temp -> next;
		}
		//find the necessary outputs
		gateTraversal();
		temp = headOutputVariable;
		//loop through the generated outputs and add to graycode
		for(count = numOfVars; count < numOfOutputVars+numOfVars; count++){
			//add the output to graycode
			myRow[count] = temp -> value;
			temp = temp -> next;
		}
    //put the row in the matrix compare with myMatrix[x]
    myGrayCode[x] = myRow;
  }
	printGrayCode();
}

void gateTraversal(){
	//store the operation
	char operation[MAXSTR];
	char vars[MAXSTR];
	int amtVars, i, amtOuts, output, amtSelec = 0;
	//temp variables for our vars
	char name1[MAXSTR];
	char name2[MAXSTR];
	char name3[MAXSTR];
	int *inputs;
	//values
	int value1;
	int value2;
	//temp structs for our vars
	struct variable *var1;
	struct variable *var2;
	struct variable *var3;
	struct variable *inputsHead = NULL;
	int *graycode;
	//temp gate pointer to traverse the gate
	struct Gate *temp = Head;
	//loop through all the gates using the correct variables
	while(temp != NULL){
		//reset the inputs just in case
		inputsHead = NULL;
		//store the current operation and vars
		strcpy(operation, temp -> op);
		strcpy(vars, temp -> vars);
		//figure out the correct method
		if(strcmp(operation, "NOT") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s", name1, name2);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			//find the output variable
			var2 = findVar(name2);
			var2 -> value = !value1;
		}else if(strcmp(operation, "OR") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = value1 || value2; 
		}else if(strcmp(operation, "AND") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = value1 & value2; 
		}else if(strcmp(operation, "NAND") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = !(value1 & value2); 
		}else if(strcmp(operation, "NOR") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = !(value1 || value2); 
		}else if(strcmp(operation, "XOR") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = (value1 ^ value2); 
		}else if(strcmp(operation, "XNOR") == 0){
			//call the not method using the correct variables
			sscanf(vars,"%s %s %s", name1, name2, name3);
			//we need to take the not of var one and store it in var two, find var 1
			if(!(isdigit(*name1))){
				var1 = findVar(name1);
				value1 = var1 -> value;
			} else{
				//convert the name into a number
				value1 = atoi(name1);
			}
			if(!(isdigit(*name2))){
				var2 = findVar(name2);
				value2 = var2 -> value;
			} else{
				//convert the name into a number
				value2 = atoi(name2);
			}
			var3 = findVar(name3);
			var3 -> value = !(value1 ^ value2); 
		} else if(strcmp(operation, "DECODER") == 0){
			//decoder has an additional input
			sscanf(vars,"%d ", &amtVars);
			//get rid of the non spaces until the first space
			while(!isspace(*vars)){
				memmove(vars, vars+1, strlen(vars));
			}
			//get rid of the last white space too
			memmove(vars, vars+1, strlen(vars));
			//scan and populate the inputs linked list
			for(i = 0; i < amtVars; i++){
				if(isdigit(*vars)){
					//scan each name and store in output
					sscanf(vars,"%d ", &output);
					//make a new variable and append this to the tail
					var3 = inputsHead;
					if(var3 != NULL){
						//loop till you reach the end
						while(!(var3 -> next == NULL)){
							var3 = var3 -> next;
						}
						//put the output in the list with some random name
						var3 -> next = calloc(1, sizeof(struct variable));
						var3 = var3 -> next;
						var3 -> value = output;
					} else{
						//put the output in the list with some random name
						inputsHead = calloc(1, sizeof(struct variable));
						inputsHead -> value = output;
					}
				} else{
					//scan and populate the selectors linked list
					sscanf(vars,"%s ", name1);
					//find the name in a linked list and store in var1
					var1 = findVar(name1);
					//call method to add the data to linked list
					inputsHead = populateInputs(inputsHead, var1);
				}
				//get rid of the non spaces until the first space
				while(!isspace(*vars)){
					memmove(vars, vars+1, strlen(vars));
				}
				//get rid of the last white space too
				memmove(vars, vars+1, strlen(vars));
			}
			//we will have 2^amtvars outputs in decoder
			amtOuts = pow(2, amtVars);
			//loop amtouts times and find output each time
			for(i = 0; i < amtOuts; i++){
				//store the graycode in the array
				graycode = grayGen(i, amtVars);
				//compare each element of linked list to each element of array and get output
				output = decodeCompare(amtVars, graycode, inputsHead);
				//find the output name to put it in
				sscanf(vars,"%s ", name2);
				//get rid of the non spaces until the first space
				while(!isspace(*vars) && strlen(vars) > 0){
					memmove(vars, vars+1, strlen(vars));
				}
				//get rid of the last white space too
				if(i != amtOuts-1){memmove(vars, vars+1, strlen(vars));}
				var2 = findVar(name2);
				var2 -> value = output;
			}
			//FREE THE INPUTS
			freeVars(inputsHead);
		}else if(strcmp(operation, "MULTIPLEXER") == 0){
			//decoder has an additional input
			sscanf(vars,"%d ", &amtVars);
			//get rid of the non spaces until the first space
			while(!isspace(*vars)){
				memmove(vars, vars+1, strlen(vars));
			}
			//get rid of the last white space too
			memmove(vars, vars+1, strlen(vars));
			//we need to allocate space for the inputs array
			inputs = calloc(amtVars, sizeof(int));
			//loop through until all the inputs are read
			for(i = 0; i < amtVars; i++){
				//check if the variable is a var or hardcoded
				if(isdigit(*vars)){
					//scan each name and store in name1
					sscanf(vars,"%d ", &inputs[i]);
				} else{
					//get the name of the input
					sscanf(vars,"%s ", name3);
					//get the corresponding variable
					var3 = findVar(name3);
					//store the variable's value in the array of inputs
					inputs[i] = var3 -> value;
				}
				//get rid of the non spaces until the first space
				while(!isspace(*vars)){
					memmove(vars, vars+1, strlen(vars));
				}
				//get rid of the last white space too
				memmove(vars, vars+1, strlen(vars));
			}
			//number of selectors is log base 2 of number of inputs
			amtSelec = log2(amtVars);
			//now that the inputs are stored in an array, we read the selectors
			for(i = 0; i < amtSelec; i++){
				//check to see if the selector is a digit
				if(isdigit(*vars)){
					//scan each name and store in output
					sscanf(vars,"%d ", &output);
					//make a new variable and append this to the tail
					var3 = inputsHead;
					if(var3 != NULL){
						//loop till you reach the end
						while(!(var3 -> next == NULL)){
							var3 = var3 -> next;
						}
						//put the output in the list with some random name
						var3 -> next = calloc(1, sizeof(struct variable));
						var3 = var3 -> next;
						var3 -> value = output;
					} else{
						//put the output in the list with some random name
						inputsHead = calloc(1, sizeof(struct variable));
						inputsHead -> value = output;
					}
				} else{
					//scan and populate the selectors linked list
					sscanf(vars,"%s ", name1);
					//find the name in a linked list and store in var1
					var1 = findVar(name1);
					//call method to add the data to linked list
					inputsHead = populateInputs(inputsHead, var1);
				}
				//get rid of the non spaces until the first space
				while(!isspace(*vars)){
					memmove(vars, vars+1, strlen(vars));
				}
				//get rid of the last white space too
				memmove(vars, vars+1, strlen(vars));
			}
			//now we need to find the correct graycode sequence
			for(i = 0; i < amtVars; i++){
				//store the graycode in the array
				graycode = grayGen(i, amtSelec);
				//check to see if the outputs is 1 and all bits are the same
				if(decodeCompare(amtSelec, graycode, inputsHead)){
					//take the ith input from the array and assign to output
					output = inputs[i];
					//find the name of the variable to update output
					sscanf(vars,"%s ", name2);
					//find the variable itself
					var2 = findVar(name2);
					//update var's value
					var2 -> value = output;
					//we found the correct sequence to break out of the loop
					break;
				}
			}
			//free the inputs
			freeVars(inputsHead);
			free(inputs);
		}
		temp = temp -> next;
	}
}

//compare
int decodeCompare(int size, int *graycode, struct variable *inputHead){
	//counters
	int i = 0;
	//temp variable for looping
	struct variable *temp = inputHead;
	//loop through graycode array and compare bitwise
	for(i = 0; i < size; i++){
		//if a bit is off, return false
		if(graycode[i] != temp -> value){
			return 0;
		}
		//increment the temp
		temp = temp -> next;
	}
	//all bits are the same
	return 1;
}

//calculate the graycode
int *grayGen(int x, int amtVars){
	int gray, count = 0;
	int *temp = calloc(amtVars, sizeof(int));
	//find the graycode
	gray = x ^ (x >> 1);
	//store the gray code in the array
	for(count = amtVars-1; count >= 0; count--){
		if(gray == 0){temp[count] = 0;}
		else if (!(gray & 1)){temp[count] = 0;}
		else{temp[count] = 1;}
		gray >>= 1;
	}
	//return the filled in array
	return temp;
}

struct variable *populateInputs(struct variable *inputsHead, struct variable *toCopy){
	struct variable *temp = inputsHead;
	//if the head is null, we store there and return it
	if(inputsHead == NULL){
		inputsHead = calloc(1, sizeof(struct variable));
		strcpy(inputsHead -> name, toCopy -> name);
		inputsHead -> value = toCopy -> value;
	} else{
		//traverse to the end of the linked list
		while(temp -> next != NULL){
			temp = temp -> next;
		}
		//store all the other inputs
		temp -> next = calloc(1, sizeof(struct variable));
		temp = temp -> next;
		strcpy(temp -> name, toCopy -> name);
		temp -> value = toCopy -> value;
	}
	return inputsHead;
}

struct variable *createVar(char *toCreate, int type){
	//main variable
	if(type == 1){
		//if head is null we have to set head
		if(headMainVariable == NULL){
			headMainVariable = calloc(1, sizeof(struct variable));
			strcpy(headMainVariable -> name, toCreate);
			tailMainVariable = headMainVariable;
			return headMainVariable;
		} else{
			tailMainVariable -> next = calloc(1, sizeof(struct variable));
			tailMainVariable = tailMainVariable -> next;
			strcpy(tailMainVariable -> name, toCreate);
			return tailMainVariable;
		}
	}
	//output variable
	else if(type == 2){
		//if head is null we have to set head
		if(headOutputVariable == NULL){
			headOutputVariable = calloc(1, sizeof(struct variable));
			strcpy(headOutputVariable -> name, toCreate);
			tailOutputVariable = headOutputVariable;
			return headOutputVariable;
		} else{
			tailOutputVariable -> next = calloc(1, sizeof(struct variable));
			tailOutputVariable = tailOutputVariable -> next;
			strcpy(tailOutputVariable -> name, toCreate);
			return tailOutputVariable;
		}
	}
	//temp variable
	else if(type == 3){
		//if head is null we have to set head
		if(headTempVariable == NULL){
			headTempVariable = calloc(1, sizeof(struct variable));
			strcpy(headTempVariable -> name, toCreate);
			tailTempVariable = headTempVariable;
			return headTempVariable;
		} else{
			tailTempVariable -> next = calloc(1, sizeof(struct variable));
			tailTempVariable = tailTempVariable -> next;
			strcpy(tailTempVariable -> name, toCreate);
			return tailTempVariable;
		}
	}
	return NULL;
}

struct variable *findVar(char *toFind){
	//counters
	int i = 0;
	struct variable *curr = headMainVariable;
	//loop through the initial variable arrays
	for(i = 0; i < numOfVars; i++){
		if(strcmp(curr -> name, toFind) == 0){
			return curr;
		} curr = curr -> next;
	}
	curr = headTempVariable;
	//check the temp variables
	while(curr != NULL){
		if(strcmp(curr -> name, toFind) == 0){
			return curr;
		} curr = curr -> next;
	}
	curr = headOutputVariable;
	//lastly check the ouput variables
	for(i = 0; i < numOfOutputVars; i++){
		if(strcmp(curr -> name, toFind) == 0){
			return curr;
		} curr = curr -> next;
	}
	//return null if the string does not exist
	return createVar(toFind, 3);
}

void freeVars(struct variable *M){
	//temp variable for looping
	struct variable *temp = M;
	struct variable *next;
	//loop through and free all the variables
	while(temp != NULL){
		next = temp -> next;
		free(temp);
		temp = next;
	}
}