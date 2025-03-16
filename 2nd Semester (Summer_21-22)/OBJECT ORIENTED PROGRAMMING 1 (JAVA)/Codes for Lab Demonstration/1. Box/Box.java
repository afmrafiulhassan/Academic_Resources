// class keyword and class_name
// public keyword is optional
//if we use public keyword the file_name.java has to be
//as same as class_name.
// class body starts and ends with { }
public class Box
{
	// within the class we can define instance variable
	// access_modifier dataType variable_name
	private double length;
	private double width;
	private double height;
	
	//we want to keep track of how many box were created??
	public static int BoxCount;
	
	static{
		BoxCount=0;
	}
	
	// Constructor for Box class
	//Access_modifier No_returnType Constructor_name is as same as Clas_name
	//Constructor may or may not have parameter
	//Constructor is an spacial type of method
	// Constructor is called automatically at the time of creating objects
	public Box(){
		//let us consider default value is 0.5
		length=0.5;
		width=0.5;
		height=0.5;
		
		BoxCount++;
	}
	
	
	// instance method
	// access_modifier returnType method_name(dataType pramater) 
	
	// Setter Methods for setting values to instance variable
	public void setLength(double l){
	//method body
		length = l;
	}
	public void setWidth(double w){
	//method body
		width = w;
	}
	public void setHeight(double h){
	//method body
		height = h;
	}
	// setting all the dimensions at once.
	public void setDimension(double l, double w, double h){
		length=l;
		width=w;
		height=h;
	}
	
	//Getter Method for getting values from instance variable
	public double getLength(){
		return length;
	}
	public double getWidth(){
		return width;
	}	
	public double getHeight(){
		return height;
	}

	// get volume of the box
	public double getVolume(){
		return length*width*height;
	}
	
}





