#include <iostream>
#include <cstring> //or #include<string.h>



using namespace std;



int main()
{
/* 1. Strlen method is used to find the length of an array whereas sizeof() method is used to find the actual size of data.
2. Strlen() counts the numbers of characters in a string while sizeof() returns the size of an operand.
3. Strlen() looks for the null value of variable but sizeof() does not care about the variable value.
4. Return value in strlen() is long int on the other hand return value in sizeof() is unsigned int.*/



//strlen() - number of elements in the character array
//sizeof() - size of the stored data
char str1[] = "Hello";
cout<<"Number of elements: "<<strlen(str1)<<endl;
cout<<"Size of data: "<<sizeof(str1)<<endl;



char str2[] = {'H','e','l','l','o','\0'};
cout<<"Number of elements: "<<strlen(str2)<<endl;
cout<<"Size of data: "<<sizeof(str2)<<endl;



string str3 = "Hello";// string class type
//cout<<strlen(str3)<<endl; error
//cout<<sizeof(str3)<<endl; error



//int len1 = strlen(str3); error
int len2 = str3.size();// size()-number of characters, similar to strlen()



//cout<<len1<<endl; cannot print
cout<<len2<<endl;




//strcat(a, b) -> add string b at the end of string a and stores the updated string in a
//strcpy(a, b) -> copies the string b into string a
//strcmp(a,b) -> if a>b -> 1; if a==b ->0; if a<b -> -1
//strncat(a, b, n)-> add string b till the number n at the end of string a and stores the updated string in a
//strncpy, strncmp



char s1[] = "Hello";
char s2[] = "World";



char s3[15] = "A";
char s4[15] = "a";



strcat(s1, s2);
cout<<"s1: "<<s1<<endl;
cout<<"s2: "<<s2<<endl;



cout<<strcmp(s3, s4)<<endl;



if(strcmp(s3, s4)==0)
{
cout<<"strings are equal"<<endl;
}
else if(strcmp(s3, s4)==1)
{
cout<<"s3 is greater"<<endl;
}
else
{
cout<<"s4 is greater"<<endl;
}



strcpy(s1, s2);
cout<<"s1: "<<s1<<endl;
cout<<"s2: "<<s2<<endl;



strncat(s1, s2, 3);
cout<<"s1: "<<s1<<endl;
cout<<"s2: "<<s2<<endl;




return 0;
}
