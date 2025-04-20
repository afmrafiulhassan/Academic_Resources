#include <iostream>
using namespace std;

int comparison = 0;
int exchange = 0;
void intchange(int *ac, int *bc) {
    int temp = *ac;
    *ac = *bc;
    *bc = temp;
    exchange++;
}
void sSort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        int min = i;
        for (int j = i + 1; j < n; j++) {
            if (arr[j] < arr[min]) {
                min = j;
                comparison++;
            }
        }
         if (min != i) {
             intchange(&arr[min], &arr[i]);
         }
    }
}

int main()
{

    int arr[8] = { 92, 82, 21, 16, 18, 95, 25, 10 };
    int n = sizeof(arr) / sizeof(arr[0]);
    sSort(arr, n);
    for (int i = 0; i < n; i++) {
        cout << arr[i] << "\n";
    }
    cout << "\nNumber of Exchanges: " << exchange;
    cout << "\nNumber of Comparison: " << comparison;
}
