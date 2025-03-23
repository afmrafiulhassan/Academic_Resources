#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int x, t, p = 1, sum = 0, res;
    cout << "Enter value of x: ";
    cin >> x;
    cout << "Enter number of terms: ";
    cin >> t;
    cout << "The values of the series: " << endl;
    for (int i = 0; i < t; i++)
    {
        if (i % 2 == 0)
        {
            res = pow(x, p);
        }
        else
        {
            res = pow(x, p) * (-1);
        }
        cout << res << endl;

            sum = sum + res;
            p = p + 2;
    }

    cout << "The Sum = " << sum << endl;
    return 0;
}
