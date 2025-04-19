#include<iostream>
using namespace std;

int main()
{
    int arr1[5] = {1,2,3,4,5};
    int arr2[5] = {6,7,8,9,10};
    int mergedArray[10];

    cout<<endl;
    cout<<"Array 1 elements "<<endl;
    for(int i=0; i<5; i++)
    {
        cout<<arr1[i]<<"\t";
    }

    cout<<endl;
    cout<<"Array 2 elements "<<endl;
    for(int i=0; i<5; i++)
    {
        cout<<arr2[i]<<"\t";
    }

    for(int i=0; i<5; i++)
    {
        mergedArray[i] = arr1[i];
    }

    for(int i=5, j=0; i<10 && j<5; i++,j++)
    {
        mergedArray[i] = arr2[j];
    }
    cout<<endl;
    cout<<"After merged "<<endl;
    for(int i=0; i<10; i++)
    {
        cout<<mergedArray[i]<<"\t";
    }

    cout<<endl;
    cout<<"In reverse order "<<endl;
    for(int i=9; i>=0; i--)
    {
        cout<<mergedArray[i]<<"\t";
    }
    cout<<endl;


}