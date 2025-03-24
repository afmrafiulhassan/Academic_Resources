#include <iostream>
#include<cstring>
using namespace std;
class Person
{
private:
    string name;
    int age;
    string bloodgroup;
public:
    Person()
    {

    }
    Person(string name,int age,string bloodgroup)
    {
        this->name=name;
        this->age=age;
        this->bloodgroup=bloodgroup;
    }
    void setName(string name)
    {
        this->name=name;
    }
    string getName()
    {
        return name;
    }
    void setAge(int age)
    {
        this->age=age;
    }
    int getAge()
    {
        return age;
    }
    void setBloodgroup(string bloodgroup)
    {
        this->bloodgroup=bloodgroup;
    }
    string getBloodgroup()
    {
        return bloodgroup;
    }
    void showPersoninfo()
    {
        cout<<"Name : "<<name<<endl;
        cout<<"Age : "<<age<<endl;
        cout<<"Bloodgroup : "<<bloodgroup<<endl;
    }
};
class Student:public Person
{
private:
    string id;
public:
    Student()
    {

    }
    Student(string name,int age,string bloodgroup,string id):Person(name,age,bloodgroup)
    {
        this->id=id;
    }
    void setId(string id)
    {
        this->id=id;
    }
    string getId()
    {
        return id;
    }
    void showStudentinfo()
    {
        Person::showPersoninfo();
        cout<<"Student id: "<<id<<endl;
    }
    void showid()
    {
        cout<<"Id :"<<id<<endl;
    }
};
class Graduatestudent:public Student
{
private:
    int gradyear;
public:
     Graduatestudent()
     {

     }
     Graduatestudent(string name,int age,string bloodgroup,string id,int gradyear):Student(name,age,bloodgroup,id)
     {
         cout<<"\nGraduate student information: "<<endl;
         this->gradyear=gradyear;
     }
     void setGradyear(int gradyear)
     {
         this->gradyear=gradyear;
     }
     int getGradyear()
     {
         return gradyear;
     }
     void showGradstudent()
     {
         Student::showStudentinfo();
         cout<<"Graduation year: "<<gradyear<<endl;
     }

};
class Employee:public Person
{
private:
    double salary;
public:
    Employee()
    {

    }
    Employee(string name,int age,string bloodgroup,double salary):Person(name,age,bloodgroup)
    {
        this->salary=salary;
    }
    void setSalary(double salary)
    {
        this->salary=salary;
    }
    double getSalary()
    {
        return salary;
    }
    void showEmployeeinfo()
    {
        Person::showPersoninfo();
        cout<<"Salary is: "<<salary<<endl;
    }
};
class Officer:public Employee
{
private:
    string joindate;
public:
    Officer()
    {

    }
    Officer(string name,int age,string bloodgroup,double salary,string joindate):Employee(name,age,bloodgroup,salary)
    {
        this->joindate=joindate;
    }
    void setJoindate(string joindate)
    {
        this->joindate=joindate;
    }
    string getJoindate()
    {
        return joindate;
    }
    void showOfficerinfo()
    {
    Employee::showEmployeeinfo();
    cout<<"Joining date is: "<<joindate<<endl;
    }
};
class Faculty:public Employee
{
private:
    string facdept;
public:
    Faculty()
    {

    }
    Faculty(string name,int age,string bloodgroup,double salary,string facdept):Employee(name,age,bloodgroup,salary)
    {
        this->facdept=facdept;
    }
    void setFacultydept(string facdept)
    {
        this->facdept=facdept;
    }
    string getFacultydept()
    {
        return facdept;
    }
    void showFacultyinfo()
    {
        Employee::showEmployeeinfo();
        cout<<"Department: "<<facdept<<endl;
    }
};
class TeachingAssistant:public Student,public Faculty
{
    private:
    string type;
    public:
    TeachingAssistant()
    {

    }
    TeachingAssistant(string name,int age,string bloodgroup,double salary,string facdept,string id,string type):Student(name,age,bloodgroup,id),Faculty(name,age,bloodgroup,salary,facdept)
    {
        this->type=type;
    }
    void setType(string type)
    {
        this->type=type;
    }
    string getType()
    {
        return type;
    }
    void showTeachingassistantinfo()
    {
        Faculty::showFacultyinfo();
        Student::showid();
        cout<<"Type: "<<type<<endl;
    }
};


int main()
{
    cout<<"Student information: "<<endl;
    Student s1("Asiful Islam",21,"A+","22-46688-1");
    s1.showStudentinfo();
    Graduatestudent rafiul("Rafiul Hassan",22,"A+","20-42010-1",2020);
    rafiul.showGradstudent();
    cout<<"\nEmployee information: "<<endl;
    Employee E1("Hasibul Haque",35,"B+",20000);
    E1.showEmployeeinfo();
    cout<<"\nOfficer information: "<<endl;
    Officer O1("Jashim Uddin",40,"A+",50000,"12-05-2018");
    O1.showOfficerinfo();
    cout<<"\nFaculty information:"<<endl;
    Faculty f1("Mazid-ul-hauque",30,"B+",40000,"FST");
    f1.showFacultyinfo();
    cout<<"\nTeaching assistant information"<<endl;
    TeachingAssistant t1("Dr. Kamruzzaman",35,"B+",30000,"FST","20-55566-1","Full time");
    t1.showTeachingassistantinfo();
    return 0;
}
