// Bst 



#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node *left;
    struct node *right;
} *root;

// Function to insert a node into the BST
void insert(int data) {
    char cho;
    struct node *temp, *q;
    temp = (struct node *)malloc(sizeof(struct node));
    temp->data = data;
    temp->left = NULL;
    temp->right = NULL;

    if (root == NULL) {
        root = temp;
        return;
    }

    q = root;
    while (1) {
        printf("Enter on which side of %d you want to add new number:\n", q->data);
        printf("Press 'l' for left and 'r' for right\n");
        scanf(" %c", &cho);

        if (cho == 'l') {
            if (q->left == NULL) {
                q->left = temp;
                break;
            }
            q = q->left;
        } else if (cho == 'r') {
            if (q->right == NULL) {
                q->right = temp;
                break;
            }
            q = q->right;
        } else {
            printf("Invalid Input\n");
        }
    }
}

int main() {
    root = NULL;
    int choice, data;

    while (1) {
        printf("Choose operation on binary search tree:\n");
        printf("1) Insert\n");
        printf("2) Preorder Traversal\n");
        printf("3) Inorder Traversal\n");
        printf("4) Postorder Traversal\n");
        printf("5) Height\n");
        printf("6) Leaf Nodes\n");
        printf("7) Count Nodes\n");
        printf("8) Mirror Image\n");
        printf("9) Exit\n");

        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter the data to insert: ");
                scanf("%d", &data);
                insert(data);
                break;
            case 2:
                // Implement the Preorder Traversal
                break;
            case 3:
                // Implement the Inorder Traversal
                break;
            case 4:
                // Implement the Postorder Traversal
                break;
            case 5:
                // Implement the Height function
                break;
            case 6:
                // Implement the Leaf Nodes function
                break;
            case 7:
                // Implement the Count Nodes function
                break;
            case 8:
                // Implement the Mirror Image function
                break;
            case 9:
                exit(0);
            default:
                printf("Invalid Input!\n");
        }
    }

    return 0;
}
