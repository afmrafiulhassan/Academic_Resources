class Shape{
	public void draw(){System.out.println("drawing...");}

}  
class Rectangle extends Shape{  
	public void draw(){System.out.println("drawing rectangle...");}
	public void show(){System.out.println("I am rectangle...");}
}  
class Circle extends Shape{  
	public void draw(){System.out.println("drawing circle...");}
	public void show(){System.out.println("I am circle...");}	
}  
class Triangle extends Shape{  
	public void draw(){System.out.println("drawing triangle...");}  
	public void show(){System.out.println("I am triangle...");}
}
  
public class Start{  
	public static void main(String args[]){  
		
		Shape s = new Shape();
		s.draw();
		Rectangle r = new Rectangle();
		r.draw();
		Circle c = new Circle();
		c.draw();
		Triangle t = new Triangle();
		t.draw();
		
		System.out.println("");
		Shape s1 = r;
		Shape s2 = c;
		Shape s3 = t;
		
		s.draw();
		s1.draw();
		s2.draw();
		s3.draw();
		
		((Rectangle)s1).show();
		((Circle)s2).show();
		((Triangle)s3).show();
		
		
	}  
}  













