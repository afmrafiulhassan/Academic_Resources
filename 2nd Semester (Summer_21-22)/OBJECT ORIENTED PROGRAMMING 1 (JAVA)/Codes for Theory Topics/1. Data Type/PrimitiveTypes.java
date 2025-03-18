public class PrimitiveTypes
{
  byte b;
  int i;
  float f;
  public static void main (String[] args)
  {	
	PrimitiveTypes pt = new PrimitiveTypes();
	
	System.out.println("Information about Integer");
	System.out.println("Default Value "+ pt.i);
	System.out.println("Min Value "+ Integer.MIN_VALUE);
	System.out.println("Max Value "+ Integer.MAX_VALUE);
	System.out.println("Memory Size "+ Integer.SIZE/8 + " Bytes");
	
	System.out.println("Information about Float");
	System.out.println("Default Value "+ pt.f);
	System.out.println("Max Value Negative Side "+ -Float.MIN_VALUE);
	System.out.println("Min Value Negative Side "+ -Float.MAX_VALUE);
	
	System.out.println("Min Value Positive Side "+ Float.MIN_VALUE);
	System.out.println("Max Value Positive Side "+ Float.MAX_VALUE);
	System.out.println("Memory Size "+ Float.SIZE/8 + " Bytes");
	
	
	System.out.println(Float.parseFloat("10.10")/2);
	
  }
  
}