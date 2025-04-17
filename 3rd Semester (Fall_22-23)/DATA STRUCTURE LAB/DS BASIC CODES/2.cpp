#include<iostream>
using namespace std;

int main(){
    int x [10];//= new int[2];
    int even=0, odd=0;
    for(int i=0; i<10; i++){
        cin>>x[i];
    }
    for(int i=0; i<10; i++){
        if(x[i]%2==0){
            even++;
        }
        else{
            odd++;
        }
    }
    cout<<"Even: " <<even<<"\n";
    cout<<"Odd: "<<odd;
}
