/* reading from file requires standard io library*/
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int isTruncateable(int a);

/*read/write will be handled  by main method for this question*/
int main(int argc, char **argv){

	/*declarations, name of file and file pointer*/
	FILE *file;
	int numValues;
	int count = 0;
	int curr;

	/*now open the given file*/
	file = fopen(argv[1], "r");

	if(file == NULL){
		printf("%s", "File does not exist");
		exit(0);
	}

	/*read the first number in the file*/
	fscanf(file, "%d", &numValues);

	/*have a while loop run through the remaining ints*/
	while(count < numValues){
		//read the character from file
		fscanf(file, "%d", &curr);
		if(isTruncateable(curr) == 1){
			printf("yes\n");
		}
		else{
			printf("no\n");
		}
		count++;
	}

	/*dont forget to close the file!*/
	fclose(file);
	return 0;
}

int isTruncateable(int a){

	//counter in the forloop
	int i;

	if(a == 0){

		/*0 is not a prime number*/
		return 0;
	}

	while(a != 0){

		/*check if the int is a prime number*/
		for(i = 2; i < a/2; ++i){

			//check if the remainder is 0 when divided i
			if(a%i == 0){
				return 0;
			}
		}
		/*divide by 10 to truncate the integer after check*/
		a = a/10;
	}
return 1;
}
