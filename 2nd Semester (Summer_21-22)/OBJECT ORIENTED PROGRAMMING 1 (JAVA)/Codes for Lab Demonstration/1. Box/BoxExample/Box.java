class Box{

	//instance variables/properties/attributes
	//accessModifiers dataType VariableName;
	private int length;
	private int width;
	private int height;
	private String color;
	
	//class variables
	//class variables is declered using static keyword
	public static int BoxCount;	
	
	//this is an static block
	//static block is run when the class is loaded
	static{
		BoxCount=5;
	}
	static{
		BoxCount=0;
	}
	
	//static method for static variables
	public static void initBoxCount(int v){
		BoxCount = v;
	}
	

	//Constructor
	//Constructor does not have any returnType
	//Constructor name is as same as ClassName
	//we may or may not use parameterList
	//if we want to use the constructor from outside of the class
	// we have to use public accessModifiers
	//Constructor gets called automatically at the
	//time of creating object and it is called exectly one time.
	
	//this is an empty constructor
	//because it does not have any parameterList
	public Box(){
		System.out.println("Empty Constructor");
		length=1;
		width=1;
		height=1;
		color="BLACK";
		BoxCount++;
	}
	
	//this is an Parameterized constructor
	//because it has parameterList
	public Box(int l,int w,int h, String c){
		System.out.println("Parameterized Constructor");
		length=l;
		width=w;
		height=h;
		color=c;
		BoxCount++;
	}

	
	//instance methods
	//accessModifiers returnType methodName (parameterList){ //body }
	//setter Methods
	public void setLength(int l){ length=l; }
	public void setWidth(int w){ 
		if(w>=0){
			width=w;
		}
		else{System.out.println("Invalid Value");}
	}
	public void setHeight(int h){ height=h; }
	public void setColor(String c){color=c;}
	
	//getter methods
	public int getLength(){return length;}
	public int getWidth(){return width;}
	public int getHeight(){return height;}
	public String getColor(){return color;}
	
	//area calculation
	public int getArea(){
		return length*width;
	}
	
	//volume calculation
	public int getVolume(){
		return length*width*height;
	}
	//showDetails method
	public void showDetails(){
		System.out.println("Length : "+getLength());
		System.out.println(getWidth());
		System.out.println(getHeight());
		System.out.println("Area : "+getArea());
		System.out.println(getVolume());
		System.out.println("COLOR : "+color);
		
	}
}
