#include<bits/stdc++.h>
using namespace std;

int main()
{
    cout << "Please choose an operation: " << endl;
    cout << "1. For | operation, input the symbol" << endl;
    cout << "2. For . operation, input the symbol" << endl;
    cout << "3. For * operation, input the symbol" << endl;

    char check;
    cin >> check;

//
//for or  |
//

    string a, b;
    char ab;

//
//for .
//
    string c;
//
// for enclouser *
//

    string en;
    char en2;

    if (check == '|')
    {
        cin >> a  >> ab >> b;
    }

    if (check == '.')
    {
        cin >> c;
    }

    if (check == '*')
    {
        cin >> en >> en2;
    }

    switch(check)
    {

    case '|':
        cout << "{" << a << "," << b<< "}" << endl;
        break;

    case '.':
        for (int i = 0; i < c.length(); i = i+ 2)
        {
            cout << c[i];
        }
        break;

    case '*':

        for(int i = 0; i < 6; i++)
        {
            for (int j = 0; j < i; j++)
            {
                cout << en ;
            }
            cout << endl;
        }
    }


    return 0;

}
