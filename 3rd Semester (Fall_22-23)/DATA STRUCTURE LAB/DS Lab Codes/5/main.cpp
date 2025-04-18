#include<iostream>
using namespace std;

int main(){
    int N;
    int P;
    int fac=1;
    cin>>N;
    for(int i = 2; i <= N; i++){
        P = 1;
        for(int j = 2; j <= i/2; j++){
             if(i % j == 0 && N!= 0 && N!=1){
                 P = 0;
             }
        }
    }
    if(P==1){
        for(int i=1; i<=N;i++){
            fac *=i;
        }
        cout<<fac;
    }
    else{
        cout<<"Error! Not a prime number.";
    }
}
