import java.lang.*;

public abstract class Shape
{
	protected double x;
	
	public Shape(){System.out.println("Empty-Shape");}
	public Shape(double x)
	{	
		System.out.println("Parameterized-Shape");
		this.x = x;
	}
	
	public void setX(double x){this.x = x;}
	public double getX(){return x;}
	
	//Abstract Method Declaration
	public abstract double getArea();
	public abstract void showDetails();
}
