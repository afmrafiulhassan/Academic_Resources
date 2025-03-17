import java.util.Scanner;
public class Start{
	public static void main(String args[]){
		
		Date d1 = new Date(24,11,1988);
		System.out.println("Date : "+d1.getDate());
		
		Employee e1 = new Employee("Abdul Karim",d1,new Date(25,11,2020));
		e1.showDetails();
		Employee e2 = new Employee("Abdul Rahim",new Date(25,11,1991),new Date(22,11,2020));
		e2.showDetails();
		
		e2.checkS(e1);
		
	}
}