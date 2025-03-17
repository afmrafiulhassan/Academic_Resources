import java.lang.*;

public class Start
{
	public static void main(String []args)
	{
		Shape s1 = new Shape(3);
		s1.showDetails();
		
		Square sq = new Square(4);
		sq.showDetails();
		
		Rectangle r1 = new Rectangle(4,5);
		r1.showDetails();
		
		Box b1 = new Box(4,5,6);
		b1.showDetails();
		
		/*
		// Box b1 = new Box(3,4,5);
		// b1.showDetails();
		// System.out.println(b1.getArea());


		
		// Square s1 = new Square(5);
		// s1.showDetails();
		
		// System.out.println("\n===================");
		// Rectangle r1 = new Rectangle(1.3434,2.52342);
		// r1.showDetails();
		
		// System.out.println("\n===================");
		// Circle c1 = new Circle(10);
		// c1.showDetails();
		
		// System.out.println("\n===================");
		// Triangle t1 = new Triangle(10,10);
		// t1.showDetails();
		
		// System.out.println("\n===================");
		
		// Box b1 = new Box(4,5,3);
		// b1.showDetails();
		*/
	}
}