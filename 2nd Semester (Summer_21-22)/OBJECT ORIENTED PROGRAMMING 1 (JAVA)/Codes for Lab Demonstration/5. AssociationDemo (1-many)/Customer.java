import java.lang.*;

public class Customer
{
	private String phnNumber;
	private Account accounts[];
	
	public Customer()
	{
		
	}
	public Customer(String phnNumber, int sizeOfArray)
	{
		this.phnNumber = phnNumber;
		accounts = new Account[sizeOfArray];
	}
	
	public void setPhnNumber(String phnNumber)
	{
		this.phnNumber = phnNumber;
	}
	public String getPhnNumber(){return phnNumber;}
	
	public void insertAccount(Account account){
		boolean flag=false;
		for(int i=0; i< accounts.length ; i++){
			if(accounts[i] == null){
				accounts[i] = account;
				flag=true;
				break;
			}
		}
		if(flag){System.out.println("Account is inserted.");}
		else    {System.out.println("Account cannot be inserted.");}
		
	}
	
	public void showAllAccounts(){
		for(int i=0; i< accounts.length ; i++){
			if(accounts[i] != null){
				accounts[i].showDetails();
				System.out.println();
			}
		}
	}
	
	
	public void removeAccountByAccountNumber(int accountNumber){
		boolean flag=false;
		for(int i=0; i< accounts.length ; i++){
			if(accounts[i] != null){
				if(accounts[i].getAccountNumber() == accountNumber){
					accounts[i] = null;
					flag=true;
					break;					
				}
			}
		}
		if(flag){System.out.println("Account is Removed.");}
		else    {System.out.println("Account cannot be Removed.");}	
		
	}
	
		
	public void removeAccount(Account a)
	{
		int flag = 0;
		for(int i=0; i<accounts.length; i++)
		{
			if(accounts[i] == a)
			{
				System.out.println(accounts[i].getAccountNumber());
				accounts[i] = null;
				flag = 1;
				break;
			}
		}
		if(flag == 1){System.out.println("----Removed----");}
		else {System.out.println("----CanNot Remove----");}
	}
	
	public void searchAccountByAccNo(int accNo)
	{
		int flag = 0;
		for(int i=0; i<accounts.length; i++)
		{	if(accounts[i] != null){
				if(accounts[i].getAccountNumber() == accNo)
				{
					accounts[i].showDetails();
					flag = 1;
					break;
				}
			}
		}
		if(flag == 1){System.out.println("----Found----");}
		else {System.out.println("----Not Found----");}
	}
	
	public void searchAccountByAccHolderName(String name){
		int flag = 0;
		for(int i=0; i<accounts.length; i++)
		{	if(accounts[i] != null){
				if(accounts[i].getAccountHolderName().equals(name))
				{
					accounts[i].showDetails();
					flag = 1;
					//break;
				}
			}
		}
		if(flag == 1){System.out.println("----Found----");}
		else {System.out.println("----Not Found----");}
	}
	
	
}