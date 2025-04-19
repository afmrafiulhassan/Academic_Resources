#include<iostream>
using namespace std;

struct Node
{
    int data;
    Node* next;
};
void insert(Node** head, int node_data)
{
    Node* newNode = new Node;
    newNode->data = node_data;
    newNode->next = (*head);
    (*head) = newNode;
}
void show(Node* node)
{
    while (node != NULL)
    {
        cout << node->data << "\t";
        node = node->next;
    }
    cout << "\n";
}

void linSearch(Node* node, int x) {
    bool found = false;
    while (node != NULL)
    {
        if (node->data == x) {
            cout << "Item Found\n";
            found = true;
            break;
        }
        node = node->next;
    }
    if (!found) {
        cout << "Item Not Found\n";
    }
}
void deleteElement(Node** node, int x) {
    Node* temp = *node;
    Node* prev = NULL;
    if (temp != NULL && temp->data == x)
    {
        *node = temp->next;
        delete temp;
        return;
    }
   else
    {
        while (temp != NULL && temp->data != x)
        {
            prev = temp;
            temp = temp->next;
        }
       if (temp == NULL)
            return;

       prev->next = temp->next;
       delete temp;
    }
}
void showHead(Node * head) {
    cout << head->data<<"\n";
}

int main() {
    Node* head = NULL;
    cout<<"Enter the data you want to import: ";
    int x;
    cin >> x;
    for (int i = 0; i < x; i++){
        int d;
        cin >> d;
        insert(&head, d);
        }
    showHead(head);
    show(head);
    int del;
    cout<< "Enter the number you want to delete: ";
    cin>>del;
    deleteElement(&head, del);
    show(head);
    int s;
    cout << "Enter the number you want to search: ";
    cin >> s;
    linSearch(head, s);
}
