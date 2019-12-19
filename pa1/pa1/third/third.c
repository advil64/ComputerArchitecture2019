#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE 0

struct node{
  //contains the data of the node
  int data;
  //contains a pointer to the next node
  struct node *next;
};

struct bucket{
  //stores hashcode
  int hashCode;
  //stores headnode
  struct node *head;
};

//we need an array of buckets(global variable)
struct bucket *(buckets[1000]) = {NULL};

void add(int value,struct bucket **point);
void freeList();
void search(int value);

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
  //stores the instruction
  char instruction;
  //stores the new value
  int value;
  //while loop to scan all values
  while(TRUE){
    //if we reached EOF break
    if(fscanf(file, "%c\t%d\n", &instruction, &value) == EOF){
      break;
    }
    //if the instruction is i, insert
    if(instruction == 'i'){
      //calculate the hash code
      int code = abs(value) % 1000;
        //add to array list
        add(value, &buckets[code]);
    } else{
      //search for the given value
      search(value);
    }
  }
  fclose(file);
  freeList();
  return 0;
}

void freeList(){
  struct node* temp = NULL;
  struct node *temp2 = NULL;
  int i;
  for(i = 0; i < 1000; i++){
    if(buckets[i] != NULL){
      temp = buckets[i]->head;
      while (temp != NULL) {
        struct node *temp2 = temp;
        temp = temp->next;
        free(temp2);
      }
      free(buckets[i]);
    }
  }
}

void add(int value, struct bucket **myBucket){
  //find the hashcode
  int hash = value % 1000;
  //check if its head is empty
  if(*myBucket == NULL){
    //allocate a new space in the heap for mybucket
    *myBucket = malloc(sizeof(struct bucket));
    //set myBucket's hashcode
    (*myBucket)->hashCode = hash;
    //create a new node for the headNode
    (*myBucket)->head = malloc(sizeof(struct node));
    //set the head value
    (*myBucket)->head->data = value;
    //set the next as well
    (*myBucket)->head->next = NULL;
    //print confirmation
    printf("inserted\n");
  } else{
    //see if its already here, if not insert it
    struct node* finder = (*myBucket)->head;
    struct node* prev = NULL;
    //loop through the nodes
    while(finder != NULL){
      //if its in the linked list
      if(finder->data < value){
        //loop through
        prev = finder;
        finder = finder->next;
        //dont bother doing much else
        continue;
      } else if(finder -> data > value){
        //allocate a new node
        struct node* temp = malloc(sizeof(struct node));
        //new node's next becomes finder
        temp->next = finder;
        //previous.next becomes a new node
        prev->next = temp;
        //print confirmation
        printf("inserted\n");
        //exit
        return;
      } else if (finder->data == value){
        //print confirmation
        printf("duplicate\n");
        //exit out of the method
        return;
      }
    }
    //new node is the greatest
    struct node* temp = malloc(sizeof(struct node));
    //temp's next is null
    temp->next = NULL;
    //set the temp value
    temp->data = value;
    //previous.next is temp
    prev->next = temp;
    //print confirmation
    printf("inserted\n");
  }
}

void search(int value){
  //find the hashcode
  int hash = abs(value) % 1000;
  //find the position in our array
  struct bucket* searchBucket = buckets[hash];
  //check to see if the bucket is empty
  if(searchBucket == NULL){
    //nothing's in our bucket
    printf("absent\n");
    //exit
    return;
  }
  //start at the head for search
  struct node* finder = searchBucket->head;
  //loop till the end
  while(finder != NULL){
    //check if finder is equal to data
    if(finder->data == value){
      //we found it! print confirmation
      printf("present\n");
      //exit
      return;
    }
    //loop through
    finder = finder->next;
  }
  //not found print confirmation
  printf("absent\n");
}
