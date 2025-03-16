class Box{
//instance variables and methods are member of class

	//instance variables => properties/data/attributes
	private int length;
	private int width;
	private int height;
	private String color;
	
	//class variables
	public static int boxCount;
	
	//static Block
	static{
			boxCount=0;
	}
	
	//static method to initialize static member
	public static void initBoxCount(){
		boxCount=5;
	}
	
	//Constructor
	//constructor name is as same as class name
	//Constructor is an special type of method
	//Constructor has no return type
	//The main purpose of Constructor is to initialize attributes/properties
	public Box(){
		System.out.println("Empty Constructor");
		length=1;
		width=1;
		height=1;
		color="White";
		boxCount++;
	}
	
	//Parameterized Constructor
	public Box(int l,int w,int h,String c){
		System.out.println("Parameterized Constructor");
		length=l;
		width=w;
		height=h;
		color=c;
		boxCount++;
	}
	
	//instance methods => behaivior
	
	//setter methods
	//public Setter methods are used to set values for the private properties
	public void setLength(int l){
		//As we are using setter methods for setting values in private properties
		//we can apply logical statements like if-else to check for invalid values
		if(l>=0){
		length = l;
		}
		else{
			System.out.println("Invalid Value");
		}
	}
	public void setWidth(int w){
		if(w>=0){
		width = w;
		}
		else{
			System.out.println("Invalid Value");
		}
	}
	public void setHeight(int h){
		if(h>=0){
		height = h;
		}
		else{
			System.out.println("Invalid Value");
		}
	}
	public void setColor(String c){
		color=c;
	}
	
	//getter methods
	//public getter methods are used to get values from private properties
	public int getLength(){
		return length;
	}
	public int getWidth(){
		return width;
	}
	public int getHeight(){
		return height;
	}
	public String getColor(){
		return color;
	}
	
	//area
	public int getArea(){
		return length*width;
	}
	//area
	public int getVolume(){
		return length*width*height;
	}
	
	public void showDetails(){
		
		System.out.println("Lenght : "+getLength());
		System.out.println("Width : "+getWidth());
		System.out.println("Height : "+getHeight());
		System.out.println("Area : "+getArea());
		System.out.println("Volume : "+getVolume());
		System.out.println("Color : "+color);
		
	}
	
}