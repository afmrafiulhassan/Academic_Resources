#include<iostream>
using namespace std;

string ciphersEncode(string s,int j)
{
    int k=0;
    for(int i=0;i<s.size();i++)
    {
        if(k==j)
        {
            s[i]+=2;
            k=0;
            k--;
        }
        k++;
    }
    return s;
}
int main()
{
   string s;
   int j;
   cout<<"Input the String: ";
   getline(cin,s);

   cout<<"Input the integer: ";
   cin>>j;

   int size=s.size();
   cout<<"New String : ";
   cout<<ciphersEncode(s,j)<<endl;

}
