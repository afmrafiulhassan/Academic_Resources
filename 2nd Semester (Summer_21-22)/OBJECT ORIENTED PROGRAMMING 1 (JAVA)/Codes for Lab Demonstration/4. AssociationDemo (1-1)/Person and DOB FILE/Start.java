import java.util.Scanner;
public class Start{
	public static void main(String args[]){
		
		Scanner sc = new Scanner(System.in);
		
		
		int mm = sc.nextInt();
		int sm;
		do{
		
		if(mm==1){
		System.out.println("in 1");
			sm = sc.nextInt();
			do{
			if(sm==1){
			System.out.println("in 11");
			}
			
			sm = sc.nextInt();
			}while(sm!=0);
		}
		
		
		mm = sc.nextInt();
		}while(mm!=0);
		
		
	}
}