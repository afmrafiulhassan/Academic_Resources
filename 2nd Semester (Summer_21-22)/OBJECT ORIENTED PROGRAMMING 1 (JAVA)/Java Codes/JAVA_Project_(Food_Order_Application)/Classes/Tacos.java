package Classes;
public class Tacos extends Foods{
	public Tacos(String name, double price, int quantity, double tax, double discount){
		super(name, price, quantity, tax, discount);
	}
	public void showAll(){
		super.showAll();
	}	
}