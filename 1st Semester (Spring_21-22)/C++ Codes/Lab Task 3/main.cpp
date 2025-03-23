#include <iostream>
#include<string.h>
using namespace std;
class Account
{
private:
    string a_no;
    double balance;
public:
    Account()
    {

    }
    Account(string a_no,double balance)
    {
        this->a_no=a_no;
        this->balance=balance;
    }
    void setAccno(string a_no)
    {
        this->a_no=a_no;
    }
    string getAccno()
    {
        return a_no;
    }
    void setBalance(double balance)
    {
        this->balance=balance;
    }
    double getBalance()
    {
        return balance;
    }
    void showAccinfo()
    {
      cout<<"Account No is: "<<a_no<<endl;
      cout<<"Account balance is: "<<balance<<endl;
    }
};
class SavingsAcc:public Account
{
private:
    double minLimit;
public:
    SavingsAcc()
    {
        cout<<"This empty constructor of SavingsAcc"<<endl;
    }
    SavingsAcc(string a_no,double balance,double minLimit):Account(a_no,balance)
    {
        cout<<"\nThis is parameterizes constructor of SavingsAcc"<<endl;
        this->minLimit=minLimit;
    }
    void setminLimit(double minLimit)
    {
        this->minLimit=minLimit;
    }
    double getminLimit()
    {
        return minLimit;
    }
    void showSavingsAccinfo()
    {
        Account::showAccinfo();
        cout<<"Account minimum balance is: "<<minLimit<<endl;
    }

};
class CreditAcc:public Account
{
private:
    double maxLimit;
public:
    CreditAcc()
    {
        cout<<"\nThis is empty constructor of CreditAcc"<<endl;
    }
    CreditAcc(string a_no,double balance,double maxLimit):Account(a_no,balance)
    {
        cout<<"\nThis is parameterizes constructor of CreditAcc"<<endl;
        this->maxLimit=maxLimit;
    }
    void setmaxLimit(double maxLimit)
    {
        this->maxLimit=maxLimit;
    }
    double getmaxLimit()
    {
        return maxLimit;
    }
    void showCreditAccinfo()
    {
        Account::showAccinfo();
        cout<<"Account maximum balance is: "<<maxLimit<<endl;
    }
};
int main()
{
    SavingsAcc s1;
    s1.setAccno("222-7317734-57");
    s1.setBalance(10000);
    s1.setminLimit(1000);
    s1.showSavingsAccinfo();
    SavingsAcc s2("222-7317734-57",5000,1000);
    s2.showSavingsAccinfo();
    CreditAcc c1;
    c1.setAccno("555-202026-50");
    c1.setBalance(10000);
    c1.setmaxLimit(500000);
    c1.showCreditAccinfo();
    CreditAcc c2("555-202026-50",10000,500000);
    c2.showCreditAccinfo();
    return 0;
}
