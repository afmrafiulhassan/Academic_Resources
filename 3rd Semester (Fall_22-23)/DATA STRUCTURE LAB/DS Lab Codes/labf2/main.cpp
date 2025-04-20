#include <iostream>
using namespace std;

int *cirQueue;
int front = -1, rear = -1, n;

void init(int x){
	n = x;
	cirQueue = new int[n];
}
void insertCQ(int val) {
   if ((front == 0 && rear == n-1) || (front == rear+1)) {
      cout<<"Queue Overflow\n";
      return;
   }
   if (front == -1) {
      front = 0;
      rear = 0;
   } else {
      if (rear == n - 1)
      rear = 0;
      else
      rear = rear + 1;
   }
   cirQueue[rear] = val ;
}
void check(){
	if ((front == 0 && rear == n-1) || (front == rear+1)) {
      cout<<"Queue Overflow\n";
   }
   else if (front == -1) {
      cout<<"Queue Underflow\n";
   }
}
void deleteCQ() {
   if (front == -1) {
      cout<<"Queue Underflow\n";
      return ;
   }
   cout<<"Element deleted from queue is : "<<cirQueue[front]<<endl;

   if (front == rear) {
      front = -1;
      rear = -1;
   } else {
      if (front == n - 1)
      front = 0;
      else
      front = front + 1;
   }
}
void displayCQ() {
   int f = front, r = rear;
   if (front == -1) {
      cout<<"Queue is empty\n"<<endl;
      return;
   }
   cout<<"Queue elements are: ";
   if (f <= r) {
      while (f <= r){
         cout<<cirQueue[f]<<" ";
         f++;
      }
   } else {
      while (f <= n - 1) {
         cout<<cirQueue[f]<<" ";
         f++;
      }
      f = 0;
      while (f <= r) {
         cout<<cirQueue[f]<<" ";
         f++;
      }
   }
   cout<<endl;
}
int main() {
	int x;
	cout<<"Enter the size of the queue: ";
	cin>>x;
	init(x);
   	int choice, val;
   	cout<<"1)Enqueue\n";
   	cout<<"2)Dequeue\n";
   	cout<<"3)Overflow\n";
   	cout<<"4)Underflow\n";
   	cout<<"5)Display\n";
   	cout<<"6)Number of element\n";
   	cout<<"7)Circular Queue List\n";
   	cout<<"8)Update\n";
   	cout<<"9)Exit\n";
   	do {
    	cout<<"Enter choice: "<<endl;
      	cin>>choice;
      	switch(choice) {
        	case 1:
         	cout<<"Input for insertion: "<<endl;
         	cin>>val;
         	insertCQ(val);
         	break;
        case 2:
        	deleteCQ();
        	break;
        case 3:
        	displayCQ();
        	break;
        case 4:
        	check();
        	break;
        case 5:
        	displayCQ();
        	break;
        case 9:
        	cout<<"Exit";
         	break;
        default: cout<<"Incorrect!";
      }
   } while(choice != 4);
   return 0;
}
