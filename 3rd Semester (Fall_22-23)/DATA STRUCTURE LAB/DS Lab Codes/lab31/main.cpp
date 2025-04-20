#include<iostream>
using namespace std;
int main()
{
    int a[5][5], transpose[5][5], row, column, i, j;

   cout << "Enter the rows of matrix: ";
   cin >> row;
   cout << "Enter the columns of matrix: ";
   cin >> column;

   cout << "\n ---------------Enter Elements of Matrix ---------------: " << endl;

   for (int i = 0; i < row; ++i) {
      for (int j = 0; j < column; ++j) {
         cout << "\nEnter Element a" << i + 1 << j + 1 << ": ";
         cin >> a[i][j];
      }
   }

   cout << "\nEntered Matrix: " << endl;
   for (int i = 0; i < row; ++i) {
      for (int j = 0; j < column; ++j) {
         cout << " " << a[i][j];
         if (j == column - 1)
            cout << endl << endl;
      }
   }

   for (int i = 0; i < row; ++i)
      for (int j = 0; j < column; ++j) {
         transpose[j][i] = a[i][j];
      }

   cout << "\nTranspose of Matrix: " << endl;
   for (int i = 0; i < column; ++i)
      for (int j = 0; j < row; ++j) {
         cout << " " << transpose[i][j];
         if (j == row - 1)
            cout << endl << endl;
      }

   return 0;
}
