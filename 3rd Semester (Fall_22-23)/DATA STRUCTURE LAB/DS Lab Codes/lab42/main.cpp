#include<iostream>
using namespace std;
int comp = 0;
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
		comp++;
	}
	return -1;
}
int main() {
	int n,x;
	cout << "Enter the number: ";
	cin >> x;
	int arr[] = { 92, 82, 21, 16, 18, 95, 25, 10 };
	n = sizeof(arr) / sizeof(arr[0]);
	bSort(arr,n);
	for (int i = 0; i < n; i++) {
		cout << arr[i]<<endl;
	}
	int res = bSearch(arr,x, n);
	if (res != -1) {
		cout << arr[res]<<" found at index " << res << " of the sorted array. " << "\n";
	}
	else {
		cout << "Number not found.";
	}
	cout << "Number of comparison: " << comp;


}
