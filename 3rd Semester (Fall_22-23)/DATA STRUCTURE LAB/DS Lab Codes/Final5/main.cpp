#include<iostream>
using namespace std;

void array_input(int arr[],int n) {
	cout << "Enter the elements: ";
	for (int i = 0; i < n; i++)
	{
		cin >> arr[i];
	}
}
void array_output(int arr[], int n) {
	cout << "Elements of the array: ";
	for (int i = 0; i < n; i++)
	{
		cout << arr[i];
	}
}
void print_reverse(int arr[], int n) {
	cout << "Reverse array: ";
	for (int i = n; i >= n; i--)
	{
		cout << arr[i];
	}
}
void insert_end(int arr[], int n) {
	cout << "Enter a number for last index: ";
	cin >> arr[n-1];
	cout<<"Array inserted.";
}

void insert_position(int arr[], int n) {
	int pos,element;
	cout << "Enter the position: ";
	cin >> pos;
	if (pos < n) {
		cout << "Enter the element: ";
		cin >> arr[pos];
	}
}
void delete_end(int arr[], int *n) {

}


void delete_x() {

}
void search_x(int arr[], int n) {
	int x;
	cout << "Enter the number you want to search: ";
	cin >> x;
	for (int i = 0; i < n; i++) {
		if (arr[i] == x) {
			cout << x << "Found at index number: " << i;
			break;
		}
	}
}


int main() {
	int n, x,choice;
	while(choice != 12){
		cout << "1. Array Input.\n2. Print array.\n3. Print reverse array. \n4. Insert End Element\n5. Insert data into a specifit position.\n6. Delete End data\n";
		cout << "7. Delete Specific Data from array. \n8. Delete a data of specific position. \n9. Print Highest and Lowest.\n10. Print the number of the element in the array\n";
		cout << "11. Find Specific number index in array.\n12. Exit.\n";
		cin >> choice;
		if(choice ==1){
        cout << "Enter how many elements you want: ";
	  	cin >> n;
		int arr[n];
			array_input(arr,n);
		}
		else if(choice == 2){
			array_output(arr, n);
		}
		else if(choice == 3){
			print_reverse(arr, n);
		}
		else if(choice == 4){
            insert_end(arr, n);
		}
		else if(choice ==5){

		}
		else if(choice ==7){

		}
		else if(choice ==8){

		}
		else if(choice ==9){

		}
		else if(choice ==10){

		}
		else if(choice ==11){

		}
		else if(choice ==12){
		}
		else{
			cout<<"Wrong user input.";
		}
	}
}
