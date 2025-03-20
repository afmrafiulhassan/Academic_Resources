package Classes;
public class Burger extends Foods{
	public Burger(String name, double price, int quantity, double tax, double discount){
		super(name, price, quantity, tax, discount);
	}
	public void showAll(){
		super.showAll();
	}	
}