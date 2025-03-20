public class Contact {
    private String personName;   
    private String personId;
    private int age;
    private String mobileNumber;
    private char gender;
    
    public Contact(){
    System.out.println("This is empty contact");
    }
    public Contact(String personName,String personId,int age,String mobileNumber,char gender){
    System.out.println("This is peremetarized constructor");
    this.personName=personName;        
    this.personId=personId;        
    this.age=age;       
    this.mobileNumber=mobileNumber;        
    this.gender=gender;                   
    }

public void setPersonName(String personName){this.personName=personName;}
public void setPersonId(String personId){this.personId=personId;}
public void setAge(int age){this.age=age;}
public void setMobileNumber(String mobileNumber){this.mobileNumber=mobileNumber;}    
public void setGender(char gender){this.gender=gender;}


    public String getPersonName(){return personName;}
    public String getPersonId(){return personId;}
    public int getAge(){return age;}    
    public String getMobileNumber(){return mobileNumber;}
    public char getGender(){return gender;} 

    public void ShowPersoInfo(){
    System.out.println("Person Name: "+personName);
    System.out.println("Person Id: "+personId);
    System.out.println("Person age:" +age);
    System.out.println("Mobile Number: " +mobileNumber);
    System.out.println("Gender : " +gender);         
    }
    public void DetectMobileOperator(){
        char c=mobileNumber.charAt(2);
        int c1=mobileNumber.length();
        if(c=='7' && c1==11){
            System.out.println("The operator is grameenphone");
        }
        else if(c=='8' && c1==11){
            System.out.println("The operator is Robi");
        }
        else{
            System.out.println("This is not a valid mobile number");
        }
    }


    public static void main(String []args){
        Contact C = new Contact();
        C.setPersonName("Rafiul");
        C.setPersonId("22-00000-1");
        C.setAge(20);
        C.setMobileNumber("01840000000");
        C.setGender('M');
        C.ShowPersoInfo();
        C.DetectMobileOperator();
    }
}