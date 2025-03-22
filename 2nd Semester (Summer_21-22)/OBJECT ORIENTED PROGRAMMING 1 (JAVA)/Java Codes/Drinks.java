import java.lang.*;
import java.util.*;

public class Drinks{

	public static void main(String[] args) {
		
		ArrayList<String> drink = new ArrayList<String>();
		
		drink.add("1)  Coke");
		drink.add("2)  Fanta");
		drink.add("3)  Sprite");
		drink.add("4)  Pepsi");
		drink.add("5)  7up");
		drink.add("6)  Mirinda");
		drink.add("7)  Clemon");
		drink.add("8)  Mountain Dew");
	
		
		//drink.set(0, "1)  Speed");
		//drink.remove(2);
		//drink.clear();
		
		
		for(int i=0; i<drink.size(); i++) {
			System.out.println(drink.get(i));
		}
	}
}