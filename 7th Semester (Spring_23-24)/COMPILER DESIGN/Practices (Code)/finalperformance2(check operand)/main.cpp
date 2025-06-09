#include<bits/stdc++.h>
using namespace std;

int main()
{
    char op[]={'+','/','*','-'};

    string operat[]={"Addition","Division","Multiplication","Subtraction"};
    char input;
    cout<<"Enter an operator symbol: ";
    cin>>input;

    //bool flag = false;

    for(int i= 0; i<sizeof(op); i++){

        if (input==op[i]){
            cout<<op[i] << " is an " << operat[i] << " operator";
            return true;
            break;
        }
    }
    return 0;

}
