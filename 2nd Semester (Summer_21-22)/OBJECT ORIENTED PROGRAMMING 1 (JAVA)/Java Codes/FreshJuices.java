import java.lang.*;
import java.util.*;

public class FreshJuices {

	public static void main(String[] args) {
		
		ArrayList<String> juice = new ArrayList<String>();
		
		juice.add("1)  Apple");
		juice.add("2)  Mango");
		juice.add("3)  Strawberry");
		juice.add("4)  Orange");
		juice.add("5)  Watermelon");
		juice.add("6)  Banana");
		juice.add("7)  Pineapple");
	
		
		//juice.set(0, "1)  Lemonade");
		//juice.remove(2);
		//juice.clear();
		
		
		for(int i=0; i<juice.size(); i++) {
			System.out.println(juice.get(i));
		}
	}
}