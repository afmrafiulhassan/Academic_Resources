#include<iostream>
using namespace std;

int main(){
    int x [10];//= new int[2];
    for(int i=0; i<10; i++){
        cin>>x[i];
    }
    for(int i=9; i>=0; i--){
        cout<<x[i]<<" ";
    }
}
