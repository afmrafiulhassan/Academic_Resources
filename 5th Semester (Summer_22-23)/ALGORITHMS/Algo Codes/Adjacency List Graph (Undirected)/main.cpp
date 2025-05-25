#include <bits/stdc++.h>
using namespace std;

struct node
{
    int data;
    node *next;
};
void addedge(node *array[], int s, int d)
{
    node *newnode = new node();
    newnode->data = d;
    newnode->next = NULL;

    newnode->next = array[s];
    array[s] = newnode;

    newnode = new node();
    newnode->data = s;
    newnode->next = NULL;

    newnode->next = array[d];
    array[d] = newnode;
}

void display(node *array[], int v)
{
    for (int i = 1; i <= v; i++)
    {
        node *check = array[i];
        cout << i;
        while (check)
        {
            cout << "->" << check->data << "->";
            check = check->next;
        }
        cout << "NULL" << endl;
    }
    cout << endl;
}

int main()
{
    int v = 5;
    node *array[v] = {NULL};
    addedge(array, 1, 2);
    addedge(array, 2, 3);
    addedge(array, 2, 4);
    addedge(array, 1, 4);
    addedge(array, 4, 5);
    addedge(array, 5, 3);
    display(array, v);
    return 0;
}
