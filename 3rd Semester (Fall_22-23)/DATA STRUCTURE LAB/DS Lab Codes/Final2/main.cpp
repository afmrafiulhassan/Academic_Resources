#include<iostream>
using namespace std;
int main(){
	int x, y;
	cout<<"Enter the number of row: ";
	cin>>x;
	cout<<"Enter the number of column: ";
	cin>>y;
	int arr[x][y];
	for(int i=0; i<x; i++){
		for(int j=0; j<y; j++){
			cin>>arr[i][j];
		}
	}
	for(int i=0; i<x; i++){
		for(int j=0; j<y; j++){
			if(j<i){
				cout<<" "<<"\t";
			}
			else{
				cout<<arr[i][j]<<"\t";
			}
		}
		cout<<"\n";
	}
}
