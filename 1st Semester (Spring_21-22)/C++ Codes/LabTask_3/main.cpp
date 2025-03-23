#include <iostream>
#include<string.h>
using namespace std;

int main()
{
    char Name[40]="A.F.M RAFIUL HASSAN";
    char ID[20]="22-47048-1";
    for(int i=0;i<20;i++)
    {
        cout<<Name[i];
    }
    cout<<"\n";
    for(int i=0;i<20;i++)
    {
        cout<<ID[i];
    }
    cout<<"\n\nThe length of Name is: "<<strlen(Name)<<endl<<endl;
    cout<<"The length of ID is: "<<strlen(ID)<<endl<<endl;
    if(strcmp(Name,ID)==0)
    {
        cout<<"Strings are equal"<<endl<<endl;
    }
    else if(strcmp(Name,ID)==1)
    {
        cout<<"Name is greater "<<endl<<endl;
    }
    else
    {
        cout<<"ID is greater "<<endl<<endl;
    }
    strcat(Name,ID);
    cout<<"Name: "<<Name<<endl<<endl;
    strcpy(Name,ID);
    cout<<"Name: "<<Name<<endl;
    cout<<"ID: "<<ID<<endl;
    return 0;
}
