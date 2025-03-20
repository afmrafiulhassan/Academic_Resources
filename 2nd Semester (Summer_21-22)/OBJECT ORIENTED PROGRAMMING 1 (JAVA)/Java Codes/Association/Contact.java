public class Contact{
	
	//Private Varible
	private String personName;
	private String personld;
	private int age;
	private String mobileNumber;
	private char gender;
	
	//Empty Constucotor
	public Contact(){
		//System.out.println("Empty Constucotor");
	}
	//Parameterized Constucotor
	public Contact(String personName,String personld,int age,String mobileNumber,char gender){
		//System.out.println("Parameterized Constucotor");
		this.personName=personName;
		this.personld=personld;
		this.age=age;
		this.mobileNumber=mobileNumber;
		this.gender=gender;
	}
	
	 //Set Method
	public void setPersonName(String personName){
		this.personName=personName;
	}
	public void setPersonId(String personld){
		this.personld=personld;
	}
	public void setAge(int age){
		this.age=age;
	}
	public void setMobileNumber(String mobileNumber){
		this.mobileNumber=mobileNumber;
	}
	public void setGender(char gender){
		this.gender=gender;
	}
	
	//Get Method
	public String getPersonName(){
		return personName;
	}
	public String getParsonId(){
		return personld;
	}
	public int getAge(){
		return age;
	}
	public String getMobileNumber(){
		return mobileNumber;
	}
	public char getGander(){
		return gender;
	}
	
	// Detect Mobile Operator
	 public void DetectMobileOperator(){
        char c=mobileNumber.charAt(2);
        int c1=mobileNumber.length();
        if(c=='7' && c1==11){
            System.out.println("The operator is grameenphone");
        }
        
		else if(c=='8' && c1==11){
            System.out.println("The operator is Robi");
        }
		else if(c=='5' && c1==11){
            System.out.println("The operator is Teletalk");
        }
        else{
            System.out.println("This is not a valid mobile number");
        }
    }
	//Show All Method
	public void ShowPersonInfo(){
		System.out.println("Person Name: "+this.getPersonName());
		System.out.println("Parson Id: "+this.getParsonId());
		System.out.println("Age: "+this.getAge());
		System.out.println("Mobile Number: "+this.getMobileNumber());
		System.out.println("Gander: "+this.getGander());
	}
	/*//Main
	public static void main (String [] args){
		
		Contact c1= new Contact(); 
		 System.out.println();
		Contact c2= new Contact("Name","26411111111",56,"0177777777",'M'); 
		c2.ShowPersonInfo();
		c2.DetectMobileOperator();
		 System.out.println();
		Contact c3= new Contact();
		c3.setPersonName("Sourav");
		c3.setPersonId("02518877");
		c3.setAge(23);
		c3.setMobileNumber("26411111111");
		c3.setGender('M');
		
		System.out.println("Person Name: "+c3.getPersonName());
		System.out.println("Parson Id: "+c3.getParsonId());
		System.out.println("Age: "+c3.getAge());
		System.out.println("Mobile Number: "+c3.getMobileNumber());
		System.out.println("Gander: "+c3.getGander());
		c3.DetectMobileOperator();	
	}	*/
}
