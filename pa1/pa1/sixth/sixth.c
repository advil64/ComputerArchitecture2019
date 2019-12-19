#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE 0

void createString(char myString[]);
void transform(char **myWordPtr, int length);
void shiftChars(char **wordPtr, int length);
int checkVowel(char myChar);

int main(int argc, char *argv[]){
  //index
  int i = 0;
  //read string from argument and store in array
  for(i = 1; i < argc; i++){
    createString(argv[i]);
    //print a space
    printf(" ");
  }
  //make c new line?
  printf("\n");
  //return
  return 0;
}

void createString(char myString[]){
  //temp char
  char temp;
  //length of each word
  int length = 0;
  //loop thorugh all the words in the array
  while(TRUE){
    temp = myString[length];
    //if its \0 we reached the end and want to exit
    if(temp == '\0'){
      //transform and print
      transform(&myString, length);
      //end the loop
      break;
    } else{
      //increment your subcount
      length++;
    }
  }
}

void transform(char **myWordPtr, int length){
  //count for the consonants before the vowel
  int count = 0;
  //index
  int i = 0;
  //get the word
  char *myWord = *myWordPtr;
  //check if the first letter is a vowel
  if(checkVowel(myWord[0])){
    //print the existing word
    for(i = 0; i < length; i++){printf("%c", myWord[i]);}
    //add a yay at the end
    printf("y");
    printf("a");
    printf("y");
  } else{
    //increment count the first was not a vowel
    count++;
    //starts with a consonant and we want to find the first vowel
    for(i = 1; i < length; i++){
      //check if the currrent i is a vowel
      if(checkVowel(myWord[i])){
        //break and move the lettters up till count to the end
        break;
      }
      count++;
    }
    //shift the chars one by one
    for(i = 0; i < count; i++){
      //shift the first char to the end
      shiftChars(&myWord, length);
    }
    //print the existing word
    for(i = 0; i < length; i++){printf("%c", myWord[i]);}
    //add ay to the end
    printf("a");
    printf("y");
  }
  //return the new word
  return;
}

void shiftChars(char **wordPtr, int length){
  //index
  int i = 0;
  //transfer to a char array
  char *word = *wordPtr;
  //store the first char in a temp char
  char temp = word[0];
  //shift all the chars down
  for(i = 1; i < length; i++){word[i-1] = word[i];}
  //last char is temp
  word[length-1] = temp;
}

int checkVowel(char myChar){
  //switch statement to see if its a vowel
  switch(myChar){
    //check against all the vowels
    case 'a':return TRUE;
      break;
    case 'e': return TRUE;
     break;
    case 'i': return TRUE;
      break;
    case 'o': return TRUE;
      break;
    case 'u': return TRUE;
      break;
    case 'A':return TRUE;
      break;
    case 'E': return TRUE;
     break;
    case 'I': return TRUE;
      break;
    case 'O': return TRUE;
      break;
    case 'U': return TRUE;
      break;
    default: return FALSE;
      break;
  }
}


