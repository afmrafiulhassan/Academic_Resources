package Classes;
public class Pizza extends Foods{
	public Pizza(String name, double price, int quantity, double tax, double discount){
		super(name, price, quantity, tax, discount);
	}
	public void showAll(){
		super.showAll();
	}	
}