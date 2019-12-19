#include<stdio.h>
#include<stdlib.h>
#define TRUE 1
#define FALSE 0

struct treenode{
  signed int data;
  struct treenode *left;
  struct treenode *right;
};

//prototypes
struct treenode* allocate_node(signed int value);
void addNode(signed int value);
void search(signed int value, struct treenode *curr, int height);
int deleteNode(signed int value);
int deleteRootNode(signed int value);
void freeMyTree(struct treenode *curr);

//create the root
struct treenode *root = NULL;

int main(int argc, char ** argv){
  //file pointer that stores the file
  FILE *file;
  //my int declarations
  char instruction;
  signed int value;
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
    if(fscanf(file, "%c\t%i\n", &instruction, &value) == EOF){
      break;
    }
    //if the instruction is i, insert
    if(instruction == 'i'){
      //add to array list
      addNode(value);
    } else if(instruction == 's'){
      //search for the given value
      search(value, root, 1);
    } else{
      //delete the given value
      if(value == root -> data){
        //confirm
        if(deleteRootNode(value)){
          //print confirmation
          printf("success\n");
        } else{
          //print confirmation
          printf("fail\n");
        }
      }
      else{
        //its a regular node
        if(deleteNode(value)){
          //print confirmation
          printf("success\n");
        } else{
          //print confirmation
          printf("fail\n");
        }
      }
    }
  }
  //free the tree
  freeMyTree(root);
  //close the file reader
  fclose(file);
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

int deleteNode(signed int value){
  //temp int
  signed int temp = 0;
  //parent node
  struct treenode *parent = NULL;
  //traversal node
  struct treenode *curr = root;
  //loop until you found your target
  while(curr != NULL && curr -> data != value){
    //update parent
    parent = curr;
    //check BST stuff
    if(curr -> data > value){
      //if curr is greater than value go left
      curr = curr -> left;
    } else{
      //go right
      curr = curr -> right;
    }
  }
  //if curr is null, we have failed
  if(curr == NULL){
    //print confirmation
    return FALSE;
  } else{
    //we found our node check children
    if(curr -> left == NULL && curr -> right == NULL){
      //we have a leaf node check if its right or left
      if(curr -> data > parent -> data){
        //its right
        parent -> right = NULL;
      } else{
        //its left
        parent -> left = NULL;
      }
      //free curr
      free(curr);
    } else if(curr -> left == NULL){
      if(parent -> right == curr){
        //left is null
        parent -> right = curr -> right;
        //free curr
        free(curr);
      } else {
        //parent's left is curr
        parent -> left = curr -> right;
        //free curr
        free(curr);
      }
    } else if(curr -> right == NULL){
      if(parent -> right == curr){
        //left is null
        parent -> right = curr -> left;
        //free curr
        free(curr);
      } else {
        //parent's left is curr
        parent -> left = curr -> left;
        //free curr
        free(curr);
      }
    } else{
      //both children are null update parent to curr
      parent = curr;
      //change curr to its right child
      curr = curr -> right;
      //loop through till temp's left is null
      while(curr -> left != NULL){
        //update temp
        curr = curr -> left;
      }
      //delete the temp node and replace its value with the root
      temp = curr -> data;
      //delete the temp node
      deleteNode(curr -> data);
      //update parent's data
      parent -> data = temp;
    }
  }
  //print confirmation
  return TRUE;
}

int deleteRootNode(signed int value){
  //temporary int
  signed int temporary = 0;
  //temp node
  struct treenode *temp;
  //check if the root has only one child or no children
  if(root -> left == NULL && root -> right == NULL){
    //free the root
    free(root);
    //just set the root to NULL
    root = NULL;
    //return true
    return TRUE;
  } else if(root -> left == NULL){
    //set temp to be the right child
    temp = root -> right;
    //free the heap space for current root
    free(root);
    //set root's right to be the new root
    root = temp;
    //return confirmation
    return TRUE;
  } else if(root -> right == NULL){
    //set temp to be the right child
    temp = root -> right;
    //free the heap space for current root
    free(root);
    //set root's right to be the new root
    root = temp;
    //return confirmation
    return TRUE;
  } else{
    //root has two children find the minimum in the right side
    temp = root -> right;
    //loop through till temp's left is null
    while(temp -> left != NULL){
      //update temp
      temp = temp -> left;
    }
    //delete the temp node and replace its value with the root
    temporary = temp -> data;
    //delete the temp node
    deleteNode(temp -> data);
    //update root's data
    root -> data = temporary;
    //return true
    return TRUE;
  }
}

void addNode(signed int value){
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

void search(signed int value, struct treenode *curr, int height){
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

struct treenode* allocate_node(signed int value){
  //allocates the space for the new node
  struct treenode * temp = malloc(sizeof(struct treenode));
  //sets the crrect data
  temp -> data  = value;
  //make the children null pointers
  temp -> left = NULL;
  temp -> right = NULL;
  return temp;
}