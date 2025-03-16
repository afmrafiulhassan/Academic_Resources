public class Start{
	//instance variables/properties/attributes
	//instance methods
	
	//main methods
	public static void main(String[] args){
	
		System.out.println(Box.BoxCount);
		Box b = new Box();
		Box b1 = new Box(5,5,5,"Blue");
		Box b2 = new Box(5,5,5,"Blue");
		System.out.println(Box.BoxCount);
		
	/*	//className ObjectName = new className();
		Box be = new Box();
		Box be1 = new Box();
		Box be2; //be2 is a reference holder for Box type of object
		be2 = new Box(5,5,9,"BLUE");
		
		//invoking/calling setter methods
		be.setLength(10);
		be.setWidth(7);
		be.setHeight(5);
		
		be1.setLength(8);
		be1.setWidth(8);
		be1.setHeight(8);
		
		
		be.showDetails();
		be1.showDetails();
		be2.showDetails();
		
		be2.setHeight(5);
		be2.showDetails();
	*/
	}
	

}