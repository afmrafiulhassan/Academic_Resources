#include<iostream>
using namespace std;

void iSort(int arr[],int n){

    int exchange=0;
    int comp=0;
    for(int i = 1; i<n; i++) {
        int temp = arr[i];
        int j = i-1;
        for(;j>=0; j--) {
                ++comp;
            if(arr[j] > temp) {
                ++exchange;
                arr[j+1] = arr[j];
            }
            else {
                break;
            }
        }
        arr[j+1] = temp;
    }
    cout<<"Number of Exchange: "<<exchange<<endl;
    cout<<"Number of Comparison: "<<comp<<endl;
}
void PrintArray(int arr[],int size)
{
    for(int i=0;i<size;i++)
    {
        cout<<arr[i]<<" ";
    }
    cout<<endl;
}
int main()
{
    int arr[8]={92, 82, 21, 16, 18, 95, 25, 10};
    cout<<"Before Sorting: ";
    PrintArray(arr,8);
    iSort(arr,8);
    cout<<"After Sorting: ";
    PrintArray(arr,8);

    return 1;
}
