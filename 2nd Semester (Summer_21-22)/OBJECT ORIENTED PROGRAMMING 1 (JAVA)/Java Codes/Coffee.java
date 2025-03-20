import java.lang.*;
import java.util.*;

public class Coffee{

	public static void main(String[] args) {
		
		ArrayList<String> coffe = new ArrayList<String>();
		
		coffe.add("1)  Latte");
		coffe.add("2)  Mocha");
		coffe.add("3)  Cappuccino");
		coffe.add("3)  Brewed");
		coffe.add("4)  Espresso Short");
		coffe.add("5)  Espresso Double");
	
		
		//coffe.set(0, "1)  Decaf");
		//coffe.remove(2);
		//coffe.clear();
		
		
		for(int i=0; i<coffe.size(); i++) {
			System.out.println(coffe.get(i));
		}
	}
}