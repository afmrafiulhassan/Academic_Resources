#include <iostream>

using namespace std;

int main()
{
    cout << "\aUser Name: A.F.M RAFIUL HASSAN" << endl;
    cout << "ID: 22-47048-1" << "\nSection: B-19" << endl;
    cout << "Course Name: Introduction to Programming" << endl;
   int age[5],sum;
   sum=0;
   float average;
   for(int i=0;i<5;++i)
   {
       cout<<"\nEnter the age of person "<<i+1<<": ";
       cin>>age[i];
   }
   for(int i=0;i<5;++i)
   {
       sum=sum+age[i];

   }

   average=(float)sum/5;

   cout<<"The average of age is "<<average<<endl;

   if(sum%2==0){
     cout<<"The num is even";
   }
   else {
     cout<<"The num is odd";
   }

        return 0;
}
