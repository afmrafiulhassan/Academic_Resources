import java.lang.*;
import java.util.*;

public class FastFood{

	public static void main(String[] args) {
		
		ArrayList<String> food = new ArrayList<String>();
		
		food.add("1)  Burger");
		food.add("2)  Momo");
		food.add("3)  Nachos");
		food.add("4)  Pasta");
		food.add("5)  Noodles");
		food.add("6)  Pizza");
		food.add("7)  Sandwich");
		food.add("8)  Tacos");
		food.add("9)  Wonton");
		food.add("10) Potato Wedges");
		food.add("11) Chicken Wings");
		food.add("12) French Fries");
		food.add("13) Fried Chicken");
	
		
		//food.set(0, "1)  Hotdog");
		//food.remove(2);
		//food.clear();
		
		
		for(int i=0; i<food.size(); i++) {
			System.out.println(food.get(i));
		}
	}
}