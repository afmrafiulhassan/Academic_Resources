#include<iostream>
using namespace std;
void change(int *ac, int *bc) {
	int temp;
	temp = *ac;
	*ac = *bc;
	*bc = temp;

}
void bSort(int arr[], int n)
{
	int i, j;
	for (i = 0; i < n - 1; i++)
		for (j = 0; j < n - i - 1; j++) {
			if (arr[j] > arr[j + 1]) {
				change(&arr[j], &arr[j + 1]);
			}
		}
}

int bSearch(int arr[], int x,int n) {
	int low = 0, high = n - 1, mid;
	while (low <= high) {
		mid = low+ (high-low) / 2;
		if (arr[mid] == x) {
			return mid;
		}
		if (arr[mid] <x) {
			low = mid + 1;
		}
		else {
			high = mid  - 1;
		}
	}
	return -1;
}
int main() {
	int n,x;
	cout << "Enter the elements you want: ";
	cin >> n;
    int arr[n];
    cout<<"Enter the Elements: ";
    for (int i=0; i<n; i++)
    {
        cin >> arr[i];
    }
	bSort(arr,n);
	cout<<"Enter the item to search: ";
	cin >>x;
	for (int i = 0; i < n; i++) {
		cout <<"\n"<<arr[i]<<endl;
	}
	int res = bSearch(arr,x, n);
	if (res != -1) {
		cout <<"\n"<< arr[res]<<" found in position: " << res << "." << "\n";
	}
	else {
		cout << "Number is not present in the array.";
	}
}
