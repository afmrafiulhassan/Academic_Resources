import java.lang.*;

public class Start
{
	public static void main(String []args)
	{
		Account a1 = new Account(1111,"Abdul Karim",5000,new Date(25,11,2020));
		//a1.showDetails();
		
		Customer c1 = new Customer("01XXXXXXXX",a1);
		c1.showDetails();
		System.out.println(c1.getAccount().getOpeningDate().getYear());
		
		Customer c2 = new Customer("017YYYYYYY",new Account(2222,"Abdul Rahim",6000,new Date(26,11,2020)));
		
		c2.showDetails();
		
		/*
		Customer c1 = new Customer();
		Account a1 = new Account(1111,"Abdul Karim",5000,new Date(23,11,2020));
		
		c1.setPhnNumber("01xxxxxxx");
		c1.setAccount(a1);
		c1.showDetails();
		
		Account a2 = new Account(2111,"Abdul Rahim",4000,new Date(24,11,2020));
		Customer c2 = new Customer("01xxxxxxx", a2);
		c2.showDetails();
		c2.getAccount().getOpeningDate().setYear(2019);
		System.out.println(c2.getAccount().getOpeningDate().getYear());
		c2.showDetails();
		*/
	}
}




