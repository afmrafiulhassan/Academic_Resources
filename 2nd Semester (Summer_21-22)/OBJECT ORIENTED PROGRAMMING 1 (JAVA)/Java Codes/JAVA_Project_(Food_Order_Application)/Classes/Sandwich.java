package Classes;
public class Sandwich extends Foods{
	public Sandwich(String name, double price, int quantity, double tax, double discount){
		super(name, price, quantity, tax, discount);
	}
	public void showAll(){
		super.showAll();
	}	
}