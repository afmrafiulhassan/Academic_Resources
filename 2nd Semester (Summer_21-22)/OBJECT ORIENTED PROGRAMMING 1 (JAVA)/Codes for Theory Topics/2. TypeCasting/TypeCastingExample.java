public class TypeCastingExample
{
	public static void main(String args[]){
	
		double d1=0.0, d2=75.8;
		int i1=216, i2=0;
		
		System.out.println("Int -> Double -- Implicit/Auto/Small-To-Large Casting");
		System.out.println("Before	I1: "+i1);
		d1=i1;	//implicit type casting 
		System.out.println("After	D1: "+d1);
		System.out.println();
		
		System.out.println("Double -> Int -- Explicit/Non-Auto/Large-To-Small Casting");
		System.out.println("Before	D2: "+d2);
		i2= (int)d2;	//explicit type casting 
		System.out.println("After	I2: "+i2);
		System.out.println();
	}
}