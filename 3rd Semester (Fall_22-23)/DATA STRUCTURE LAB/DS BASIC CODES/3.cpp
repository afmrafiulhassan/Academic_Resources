#include<iostream>
using namespace std;

void determine(int low, int high){
    int x[high-low+1];
    int j=0;
    for(int i=low; i<=high; i++){
        if(i%2!=0){
            cout<<i<<" ";
        }
    }
    //return x;
}
int main(){
    int st, en;
    cout<<"Starting value: ";
    cin>>st;
    cout<<"Ending value: ";
    cin>>en;
    determine(st, en);
}
