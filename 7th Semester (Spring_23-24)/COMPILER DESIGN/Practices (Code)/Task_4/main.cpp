#include <iostream>
#include <string>
#include <cstring>

using namespace std;

char str[] = {'!','@','#','$','%'};

bool isKeyword(string input) {
    string keywords[40][20] = {"main", "switch", "break", "while", "do", "for", "int"};

  for (int i=0; i<40; i++) {
    if (strcmp(input, keywords[i])==0)
        {
            return true;
        }
    }
    return false;
}
bool isIdentifier(string input){

for(int i=0; i<5; i++){

    if(str[i]==input[0]){

        return false;
    }

    if(isdigit(input[0])){

        return false;
    }
    return true;
    }
}


/*bool isIdentifier(string input)
{
    if (!isalpha(input[0]))

    {
        return false;
    }

    for (char ch : input)
        {
        if (!isalnum(ch)) {
            return false;
        }
    }

    return true;
}*/

bool isNumber(string input) {

    for (char ch : input) {
        if (!isdigit(ch)) {
            return false;
        }
    }

    return true;
}

int main() {
    string input;
    cout << "Please enter an input: ";
    cin>>input;

    if (isKeyword(input))
        {
        cout<<"It's a keyword"<<endl;
        }
        else {
            cout<<"It's not a keyword"<<endl;
        }
    if (isIdentifier(input))
        {
        cout<<"It's an identifier"<<endl;
        }
        else {
        cout<<"It's not an identifier"<<endl;
        }
    if (isNumber(input)) {
        cout<<"It's a number"<<endl;
    } else {
        cout<<"Its not a number"<<endl;
    }

    return 0;
}
