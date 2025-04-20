#include <iostream>
using namespace std;

int comparison=0, exchange=0;
void swap(int *ac, int *bc)
{
    int temp = *ac;
    *ac = *bc;
    *bc = temp;
}

void bSort(int arr[], int n)
{
    int i, j;
    for (i = 0; i < n-1; i++)
    {
        for (j = 0; j < n-i-1; j++)
        {
            comparison++;
            if (arr[j] > arr[j+1])
                {
                    exchange++;
                    swap(&arr[j], &arr[j+1]);
                }
        }
    }
}

void printArray(int arr[], int size)
{
    int i;
    for (i = 0; i < size; i++)
    {
        cout << arr[i] << " ";
    }
    cout << endl;
}
int main()
{
    int n;
    cout << "Size of array: ";
    cin >> n;
    int arr[n];
    cout << "Elements of the array: ";
    for(int i = 0; i < n; i++)
    {
        cin >> arr[i];
    }

    bSort(arr, n);
    cout<<"The Sorted Array: ";
    printArray(arr, n);
    cout << "\nNumber of Comparison: " << comparison << endl;
    cout << "\nNumber of Exchange: " << exchange << endl;
    return 0;
}
