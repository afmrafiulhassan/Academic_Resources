#include<iostream>
using namespace std;

struct Node {
    int data;
    struct Node* next;
    struct Node* prev;
};

class Stack1 {
    Node* start, * eend;
    int Top, MaxSize;

public:
	Stack1(int);
	~Stack1();
	void createStack(int);
	bool isEmpty();
	bool isFull();
	bool push(int Element);
	bool pop();
	int topElement();
	void show();
	int getTop();
	int linSearch(int x);
};

void Stack1::createStack(int data)
{
    Node *st, *temp;
    temp = new Node;
    temp->data = data;
    temp->next = NULL;
    if (start == NULL)
    {
        temp->prev = NULL;
        start = temp;
        eend = temp;
    }
    else
    {
        st= start;
        while (st->next != NULL)
            st = st->next;
        st->next = temp;
        temp->prev = st;
    }
}
bool Stack1 :: isEmpty() {
	return (Top == 0);
}
bool Stack1 :: isFull() {
	return (Top == MaxSize);
}
bool Stack1 :: push(int Element) {
	if (start!=NULL) {
        int data;
        cout<<"Enter the data you want to insert: ";
        cin>>data;
        Node* temp = new Node;
        temp->data = data;
        temp->next = NULL;
        eend->next = temp;
        temp->prev = eend;
        eend = temp;
        Top++;
        return true;
	}
	else {
        cout<< "\nYou have not created the first element.\n";
	}
}
bool Stack1::pop(){
    if(start!=NULL){
        return false;
    }
        Node* temp;
    temp = start;
    while (temp->next != NULL)
    {
        temp = temp->next;
    }
    eend = temp->prev;
    (temp->prev)->next = NULL;
    free(temp);
    Top--;
    return true;
}
/*int Stack1 :: topElement() {
	return Stack[Top - 1];
}*/
/*void Stack1 :: show() {
	if (isEmpty()) { cout << "Stack empty\n"; return; }
	cout << "Stack elements: \n";
	for (int i = Top - 1; i >= 0; i--) cout << Stack[i] << endl;
}*/
/*int Stack1::getTop() {
	return Top;
}
int Stack1::linSearch(int x) {
	int index=-1;
	for (int i = 0; i < Top; i++) {
		if (Stack[i] == x) {
			index = i;
			break;
		}
	}
	return index;
}

Stack1 ::~Stack1() {
	delete[] Stack;
}*/

int main() {
	int choice =0, n;
	cout << "1. Create Stack with user entered size and values.";
	cout << "\nEnter Stack size: ";
	cin >> n;
	Stack1 Stack(n);

	while (choice!=8)
	{
		cout << "\n2. Push element to the stack.  \n3. Pop element from the stack.\n";
		cout << "4. Check Stack Underflow State. (Yes / No)  \n5. Search an element in the stack. \n6. Display elements from the stack.";
		cout << "\n7. Show the count of the number of elements in the stack.  \n8. Exit.\n";
		cout << "\nEnter your choice: ";
		cin >> choice;
		if (choice == 2) {
			cout << "How many items you want to add: ";
			int x;
			cin >> x;
			if (x > n) {
				cout << "Can not add more item than the array size.\nIt will cause overflow.\nExiting program.\nPlease rerun the program.";
				exit(0);
			}
			else {
				for (int i = 0; i < x; i++) {
					int num;
					cin >> num;
					Stack.push(num);
				}
			}
		}
		else if (choice == 3) {
			Stack.pop();
		}
		else if (choice == 4) {
			if (Stack.isEmpty() == true) {
				cout << "Yes, in underflow state.";
			}
			else {
				cout << "No, not in underflow state.";
			}
		}
		else if (choice == 5) {
			int num;
			cout << "enter the number you want to search: ";
			cin >> num;
			if (Stack.linSearch(num)== -1) {
				cout << "Item not found.";
			}
			else {
				cout << "Item found at index " << Stack.linSearch(num);
			}
		}
		else if (choice == 6) {
			Stack.show();
		}
		else if (choice == 7) {
			cout << "Total number of elemment: " << Stack.getTop();
		}
		else if (choice == 8) {
			exit(0);
		}
	}
}
