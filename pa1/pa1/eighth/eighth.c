#include<stdio.h>
#include<stdlib.h>
#define TRUE 1
#define FALSE 0

struct treenode{
  int data;
  struct treenode *left;
  struct treenode *right;
};

//prototypes
struct treenode* allocate_node(int value);
void addNode(int value);
void search(int value, struct treenode *curr, int height);
void freeMyTree(struct treenode *curr);

//create the root
struct treenode *root = NULL;

int main(int argc, char ** argv){
  //file pointer that stores the file
  FILE *file;
  //my int declarations
  char instruction;
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
      addNode(value);
    } else{
      //search for the given value
      search(value, root, 1);
    }
  }
  //done, get rid of the tree
  freeMyTree(root);
  //return 0 to exit
  return 0;
}

void freeMyTree(struct treenode *curr){
  //create the new node
  if(curr == NULL){
    //exit out
    return;
  }
  //call free on left the next one
  freeMyTree(curr -> left);
  //call on the right child too
  freeMyTree(curr -> right);
  //free curr
  free(curr);
  //exit out
  return;
}

void addNode(int value){
  //height tracker
  int height = 1;
  //check if root is null
  if(root == NULL){
    //allocate the root
    root = allocate_node(value);
    //confirmation
    printf("inserted %d\n", height);
    //exit out of the method
    return;
  }
  //create a pointer to point to current node
  struct treenode *current = root;
  //root is not null so update the height
  height++;
  while(TRUE){
    //create the new node
    if(current == NULL){
      //redirect the pointer to be the value that allocate node gives
      current = allocate_node(value);
      //print confirmation
      printf("inserted %d\n", height);
      //exit out
      return;
    } else if(current -> data > value){
      //check if current's left is null
      if(current -> left == NULL){
        //set current's left
        current -> left = allocate_node(value);
        //confirm
        printf("inserted %d\n", height);
        //exit
        return;
      }
      //call addnode on left the next one
      current = (current -> left);
    } else if(current -> data < value){
      //check if current's right is null
      if(current -> right == NULL){
        //set current's left
        current -> right = allocate_node(value);
        //confirm
        printf("inserted %d\n", height);
        //exit
        return;
      }
      //call add node on right
      current = (current -> right);
    } else{
      //print confirmation
      printf("duplicate\n");
      //exit
      return;
    }
    height++;
  }
}

void search(int value, struct treenode *curr, int height){
  //create the new node
  if(curr == NULL){
    //print confirmation
    printf("absent\n");
    //exit out
    return;
  } else if(curr -> data > value){
    //call addnode on left the next one
    search(value, curr -> left, height+1);
  } else if(curr -> data < value){
    //call add node on right
    search(value, curr -> right, height+1);
  } else{
    //print confirmation
    printf("present %d\n", height);
    //exit
    return;
  }
}

struct treenode* allocate_node(int value){
  //allocates the space for the new node
  struct treenode * temp = malloc(sizeof(struct treenode));
  //sets the crrect data
  temp -> data  = value;
  //make the children null pointers
  temp -> left = NULL;
  temp -> right = NULL;
  return temp;
}