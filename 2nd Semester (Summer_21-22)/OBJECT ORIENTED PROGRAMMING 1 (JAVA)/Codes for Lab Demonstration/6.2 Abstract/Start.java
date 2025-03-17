import java.lang.*;

public class Start
{
	public static void main(String []args)
	{
		
		Shape s = new Rectangle(4,5);
		Shape s1 = new Box(4,5,6);
		
		s.showDetails();
		s1.showDetails();
		

		/* 
		s.showDetails();
		Rectangle r = new Rectangle();
		
		Shape s1 = new Rectangle(5,6);
		Shape s2 = new Box(5,6,7);
		s1.showDetails();
		s2.showDetails();	
		*/
	}
}