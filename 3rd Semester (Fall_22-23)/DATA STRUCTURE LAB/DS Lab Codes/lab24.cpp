#include <iostream>
using namespace std;

int main()
{
    int arr, count = 0, num;
    cout<<"Input a number to search: ";
    cin>>num;

    cout<<"Input the size of first array: ";
    cin>>arr;

    int Array[10];
    cout<<"\nInput the element of an array that repeated of "<< num <<" is: ";
    for(int i=0; i<10; i++)
    {
        cin >> Array[i];
    }

    cout<<"\n\nThe array with repeated " << num << " is: ";

    for(int i=0; i<10; i++)
    {
        cout << Array[i] << " ";
    }

    for (int i = 0; i < 10; i++)
    {
        if (Array[i] == num)
        {
            count++;
        }
    }

    cout << "\n\nThe number occurs "<< count <<" times in the array." << endl << endl;
    return 0;
}
