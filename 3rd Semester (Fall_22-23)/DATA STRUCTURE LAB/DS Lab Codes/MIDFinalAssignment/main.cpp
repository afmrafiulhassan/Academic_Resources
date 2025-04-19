#include<iostream>
using namespace std;

int linSrch(int arr[], int N, int x){
	for(int i=0; i<N; i++){
		if(arr[i] ==x){
			return i;
		}
	}
	return -1;
}
void arrElDel(int arr[], int x, int *n){
	int d = *n;
	for(int i=linSrch(arr,*n,x); i<*n; i++){
        arr[i]=arr[i+1];
	}
	d--;
	*n=d;
}
void show(int arr[], int n){
	for(int i=0; i<n; i++){
            cout<<arr[i]<<" ";
	}
	cout<<"\n";
}
int main(){
    int T;
    cin>>T;
    int N, k;
    int siz[T];
    int pop[T][10000];
    if(T>=1 && T<=1000)
    for(int l=0;l<T; l++){
	    cin>>N>>k;
	    int arr[N];
	    for(int j=0; j<N; j++){
	        cin>>arr[j];
	    }
	    for(int j=0; j<k; j++){
	    	bool delFrnd = false;
		    for(int l =0; l<N-1; l++){
		        if(arr[l]<arr[l+1] ){
		            arrElDel(arr,arr[l],&N);
		            delFrnd = true;
		            break;
		        }
		    }
		    if(delFrnd ==false){
		    	arrElDel(arr,arr[N-1],&N);
			}
		}
		siz[l] =N;
		for(int i=0; i<N; i++){
			pop[l][i]=arr[i];
		}
	}
	for(int i=0;i<T; i++){
    	show(pop[i],siz[i]);

	}
}
