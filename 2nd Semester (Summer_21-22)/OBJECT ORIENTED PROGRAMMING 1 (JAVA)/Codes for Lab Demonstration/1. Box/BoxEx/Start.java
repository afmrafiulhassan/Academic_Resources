//As this class has public access modifiers so, the class name must be same as file name
public class Start{
	//instance variables => properties/data/attributes
	
	//instance methods => behaviour
	
	//Main Methods
	public static void main(String[] args){
		
		Box.initBoxCount();
		
		System.out.println("Before creating any objects: "+Box.boxCount);
		Box b = new Box();
		Box b1 = new Box(7,7,7,"Y");
		System.out.println("After creating objects: "+Box.boxCount);
		System.out.println("After creating objects: "+b.boxCount);
		System.out.println("After creating objects: "+b1.boxCount);
		
		
/*		Box b  = new Box();		
		Box b1 = new Box(6,6,6,"Red");
		Box b2 = new Box(7,7,7,"Blue");
		Box b3 = new Box();
		
		
	
		//setting values for b object using setter methods
		b.setLength(5);
		b.setWidth(10);
		b.setHeight(7);
		
		//setting values for b1 object using setter methods
		b1.setLength(8);
		b1.setWidth(8);
		b1.setHeight(8);
		
		//Showing information of b,b1,b2 object showDetails method
		b.showDetails();
		b1.showDetails();
		b2.showDetails();
*/		
	}
}