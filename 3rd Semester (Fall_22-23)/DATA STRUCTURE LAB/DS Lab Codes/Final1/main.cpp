#include <iostream>
using namespace std;

int main()
{
    int a[10][10], b[10][10], multi[10][10], row1, row2, col1, col2, i, j, k;

    cout << "Enter rows and columns for first matrix: ";
    cin >> row1 >> col1;
    cout << "Enter rows and columns for second matrix: ";
    cin >> row2 >> col2;

    while (col1!=row2)
    {
        cout << "Error! column of first matrix not equal to row of second."<<"\n";

        cout << "Enter rows and columns for first matrix: ";
        cin >> row1 >> col1;

        cout << "Enter rows and columns for second matrix: ";
        cin >> row2 >> col2;
    }
    cout << endl << "Enter elements of matrix 1:" << endl;

    for(i = 0; i < row1; ++i)
        for(j = 0; j < col1; ++j)
        {
            cout << "Enter element a" << i + 1 << j + 1 << " : ";
            cin >> a[i][j];
        }

    cout << endl << "Enter elements of matrix 2:" << endl;

    for(i = 0; i < row2; ++i)
        for(j = 0; j < col2; ++j)
        {
            cout << "Enter element b" << i + 1 << j + 1 << " : ";
            cin >> b[i][j];
        }

    for(i = 0; i < row1; ++i)
        for(j = 0; j < col2; ++j)
        {
            multi[i][j]=0;
        }

    for(i = 0; i < row1; ++i)
        for(j = 0; j < col2; ++j)
            for(k = 0; k < col1; ++k)
            {
                multi[i][j] += a[i][k] * b[k][j];
            }
    cout << endl << "Result:"<<"\n\n"<<"Output Matrix: " << endl;

    for(i = 0; i < row1; ++i)
    for(j = 0; j < col2; ++j)
    {
        cout << " " << multi[i][j];
        if(j == col2-1)
            cout << endl;
    }

    return 0;
}
