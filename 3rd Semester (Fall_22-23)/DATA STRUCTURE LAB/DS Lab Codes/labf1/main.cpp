#include<iostream>
using namespace std;

class Stack1 {
	int* Stack, Top, MaxSize;
public:
	Stack1(int);
	~Stack1();
	bool isEmpty();
	bool isFull();
	bool push(int Element);
	bool pop();
	int topElement();
	void show();
	int getTop();
	int linSearch(int x);
};

Stack1::Stack1(int Size) {
	MaxSize = Size;
	Stack = new int[MaxSize];
	Top = 0;
}

bool Stack1 :: isEmpty() {
	return (Top == 0);
}
bool Stack1 :: isFull() {
	return (Top == MaxSize);
}
bool Stack1 :: push(int Element) {
	if (isFull()) { cout << "Stack is Full\n"; return false; }
	Stack[Top++] = Element;
	return true;
}
bool Stack1 :: pop() {
	if (isEmpty()) { cout << "Stack empty\n"; return false; }
	Top--;
	cout << "Element poped";
	return true;
}
int Stack1 :: topElement() {
	return Stack[Top - 1];
}
void Stack1 :: show() {
	if (isEmpty()) { cout << "Stack empty\n"; return; }
	cout << "Stack elements: \n";
	for (int i = Top - 1; i >= 0; i--) cout << Stack[i] << endl;
}
int Stack1::getTop() {
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
}

int main() {
	int choice =0, n;
	cout << "1. Create Stack with user entered size and values.";
	cout << "\nEnter Stack size: ";
	cin >> n;
	Stack1 Stack(n);

	while (choice!=9)
	{
		cout << "\n2. Push element to the stack.  \n3. Pop element from the stack.   \n4. Check Stack Overflow State. (Yes / No)\n";
		cout << "5. Check Stack Underflow State. (Yes / No)  \n6. Search an element in the stack. \n7. Display elements from the stack.";
		cout << "\n8. Show the count of the number of elements in the stack.  \n9. Exit.\n";
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
			if (Stack.isFull() == true) {
				cout << "Yes, in overflow state.";
			}
			else {
				cout << "No, not in overflow state.";
			}
		}
		else if (choice == 5) {
			if (Stack.isEmpty() == true) {
				cout << "Yes, in undeflow state.";
			}
			else {
				cout << "No, not in underflow state.";
			}
		}
		else if (choice == 6) {
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
		else if (choice == 7) {
			Stack.show();
		}
		else if (choice == 8) {
			cout << "Total number of elemment: " << Stack.getTop();
		}
		else if (choice == 9) {
			exit(0);
		}
	}


}
