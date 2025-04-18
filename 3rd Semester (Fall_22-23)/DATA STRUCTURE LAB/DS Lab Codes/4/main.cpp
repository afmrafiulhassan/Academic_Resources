#include<iostream>
using namespace std;
int main(){
	int x[3][3];
	int y[3][3];
	int z[3][3];
	int res[3][3];
	for(int i =0; i<3; i++){
		for(int j =0; j<3; j++){
			cin>>x[i][j];
		}
		//cout<<"\n";
	}
	for(int i =0; i<3; i++){
		for(int j =0; j<3; j++){
			cin>>y[i][j];
		}
		//cout<<"\n";
	}
	for(int i =0; i<3; i++){
		for(int j =0; j<3; j++){
			cin>>z[i][j];
		}
		//cout<<"\n";
	}

	for(int i =0; i<3; i++){
		for(int j =0; j<3; j++){
			res[i][j]=x[i][j]+y[i][j]+z[i][j];
		}
	}
	for(int i =0; i<3; i++){
		for(int j =0; j<3; j++){
			cout<<res[i][j]<<" ";
		}
		cout<<"\n";
	}

}
