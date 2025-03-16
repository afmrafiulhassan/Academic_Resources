import java.util.Scanner;
class Start{
	public static void main(String[] args){
	System.out.println("BOX COUNT : "+ Box.BoxCount);	
	//Now we have to create objects of Box class
	//Class_name variable_name = new Clas_name()
	
	Scanner input = new Scanner(System.in);
	
	Box b1 = new Box();
	
	b1.setLength(input.nextDouble()); // invoking the instance method
	b1.setWidth(input.nextDouble());  //invoking the instance method
	b1.setHeight(input.nextDouble()); // invoking the instance method
	
	System.out.println("Volume = "+ b1.getVolume());
	
	Box b3 = new Box();
	System.out.println("Volume = "+ b3.getVolume());
	
	System.out.println("BOX COUNT : "+ b1.BoxCount);
	System.out.println("BOX COUNT : "+ b3.BoxCount);
	System.out.println("BOX COUNT : "+ Box.BoxCount);
	
	}
}