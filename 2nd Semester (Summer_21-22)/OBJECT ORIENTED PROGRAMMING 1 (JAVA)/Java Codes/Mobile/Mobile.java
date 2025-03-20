public class Mobile {
private String mobileOwnerName;
private String mobileNumber; 
private String mobileOSName;
private double mobileBalance;
private boolean lock;

Mobile(){
    System.out.println("Empty - Mobile");
}
Mobile(String mobileOwnerName,String mobileNumber,double mobileBalance,String mobileOSName,boolean lock){
    System.out.println("Parameterized - Mobile");
    this.mobileOwnerName=mobileOwnerName;
    this.mobileNumber=mobileNumber;
    this.mobileBalance=mobileBalance;
    this.mobileOSName=mobileOSName;
    this.lock=lock;
}

//setters
public void setMobileOwnerName(String mobileOwnerName){this.mobileOwnerName=mobileOwnerName;}
public void setMobileNumber(String mobileNumber){this.mobileNumber=mobileNumber;}
public void setMobileBalance(double mobileBalance){this.mobileBalance=mobileBalance;}
public void setMobileOSName(String mobileOSName){this.mobileOSName=mobileOSName;}
public void setLock(boolean lock){this.lock=lock;}
//getters
public String getMobileOwnweName(){return mobileOwnerName;}
public String getMobileNumber(){return mobileNumber;}
public double getMobileBalance(){return mobileBalance;}
public String getMobileOSName(){return mobileOSName;}
public boolean getLock(){return lock;}

public void ShowInfo(){
    if(lock==false){
        System.out.println("Owner Name:" +mobileOwnerName);        
        System.out.println("Mobile Number :"+mobileNumber);        
        System.out.println("Mobiel Balance :"+mobileBalance);        
        System.out.println("OS Name: "+mobileOSName);        
        System.out.println("lock Status :"+lock);}
        else
        System.out.println("The phone is locked,can not show information");
    }
    
    public void Recharge(int amount){
        if(lock==false){
            mobileBalance=mobileBalance+amount;}
        else
        System.out.println("the phone is locked,can not recharge");
    }
public void CallSomeone(int timeDuration){
        if(lock==false ){
            double totalcost=timeDuration/2;
            if(mobileBalance>=totalcost){
                mobileBalance=mobileBalance-totalcost;
            }
            else{
                System.out.println("Insufficient Balance");
            }
            
        }
        else{
            System.out.println("the phone is locked can not call someone");
        }
}
    public static void main(String []args){
        Mobile M=new Mobile("Rafiul","01840000000",100,"Android",false);
        M.Recharge(10);
        M.ShowInfo();
        Mobile M1=new Mobile("Rafiul","01840000000",100,"IOS",false);
        M1.CallSomeone(20);
        M1.ShowInfo();
    }
}