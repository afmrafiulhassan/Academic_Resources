#include<iostream>
using namespace std;

int main()
{
    int arr1[6] = {1,4,6,3,6,9};
    int arr2[6] = {5,8,7,12,21,63};
    int arr3[10];
    int n=0;

    cout<<endl;
    cout<<"Array 1 elements "<<endl;
    for(int i=0; i<6; i++)
    {
        cout<<arr1[i]<<"\t";
    }

    cout<<endl;
    cout<<"Array 2 elements "<<endl;
    for(int i=0; i<6; i++)
    {
        cout<<arr2[i]<<"\t";
    }

    for(int i = 0 ; i < 6; i++)
    {
        for (int j = 0 ; j < 6; j++)
        {
            if(arr1[i] == arr2[j])
            {
                arr3[n] = arr2[j];
                n++;
            }
        }
    }

    if(n == 0)
    {
        cout<<"\n\nNo Common Element"<<endl<<endl;
    }
    else
    {
        cout<<"\n\nThe common elements: "<<endl;
        for (int i = 0; i<n; i++)
        {
                cout << arr3[i] << " ";
        }
        cout<<endl<<endl;
    }
}