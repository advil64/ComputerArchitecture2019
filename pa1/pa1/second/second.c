#include <stdio.h>
#include <stdlib.h>
#define TRUE 1
#define FALSE 0

struct node
{
    //contains the data of the node
    int data;
    //contains a pointer to the next node
    struct node *next;
};

void add(int value, int *count);
void free_list();
void print_list(int count);
void delete(int value, int *count);


//store the head node
struct node *head = NULL;

int main(int argc, char *argv[]){

    //stored in this file pointer
    FILE *file;
    //number of nodes in the linked list
    int count = 0;

    //store the i or d
    char instruction;
    //store the data
    int value;
    //opened to be read
    file = fopen(argv[1], "r");
    //if there was a problem with openning the pointer is null
    if(file == NULL){
  		printf("%s", "error");
  		exit(0);
  	}
    //run through the file and add nodes to the linked list
    while(TRUE){
        //if it is the end of file, then break the loop
        if(fscanf(file, "%c\t%d\n", &instruction, &value) == EOF){
            break;
        }
        //if the instruction is i, insert
        if(instruction == 'i'){
            //add to array list
            add(value, &count);
        } else{
          //delete the given value
          delete(value, &count);
        }
    }
    fclose(file);
    print_list(count);
    free_list();
    return 0;
}

void add(int value, int *count){
  struct node* finder = head;
  while(finder != NULL){
    if (finder->data == value){
      return;
    }
    finder = finder->next;
  }
  
  //create the new node
  struct node* temp = malloc(sizeof(struct node));
  //change the data to the value given
  temp->data = value;
  temp->next = NULL;

  if(head == NULL){
    temp->next = head;
    head = temp;
    *count = *count +1;
    return;
  }
  
  //create a curr node and copy head
  struct node* curr = head;
  //add new head
  if(curr->data > value){
    temp->next = head;
    //change head to the temp
    head = temp;
    *count = *count +1;
  } else{
    while(curr != NULL){
      //if the current.next.data is greater, then insert
      if(curr->data < value){
        if(curr->next == NULL || curr->next->data > value){
          //insert the temp node
          temp->next = curr->next;
          curr->next = temp;
          *count = *count +1;
          return;
        }
      }
      curr = curr->next;
    }
  }
}

void free_list(){
  struct node* temp = head;
  while (temp != NULL) {
    struct node *temp2 = temp;
    temp = temp->next;
    free(temp2);
  }
}

void print_list(int count){
  //get a reference to the head node
  struct node* temp = head;
  //print the number of nodes
  printf("%d\n", count);
  //loop through the array
  while(temp != NULL){
    if(temp->next != NULL){
      printf("%d\t", temp->data);
      temp = temp->next;
    } else{
      printf("%d", temp->data);
      temp = temp->next;
    }
  }
}

void delete(int value, int *count){

  if(head == NULL){
    return;
  }
  //keep current and previous pointers to delete from linked list
  struct node* temp = head;
  while(temp->data == value){
    head = head->next;
    free(temp);
    temp = head;
    //decrement count
      *count = *count - 1;
      if(temp == NULL){
      return;
    }
  }
  struct node* curr = head->next;
  struct node* prev = head;
  //loop through all the nodes in the linked list
  while(curr != NULL){
    //if we find the correct node, delete it 
    if(curr->data == value){
      //get rid of curr
      prev->next = curr->next;
      //get rid of curr
      free(curr);
      //replace with new curr
      curr = prev->next;
      //decrement count
      *count = *count - 1;
    } else{
      //cycle through all the nodes
      prev = curr;
      curr = curr->next;
    }
  }
}
