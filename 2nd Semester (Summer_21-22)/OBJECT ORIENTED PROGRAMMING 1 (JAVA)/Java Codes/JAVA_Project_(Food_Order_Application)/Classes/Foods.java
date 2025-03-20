package Classes;

public class Foods{
	private String name;
	private double price;
	private int quantity;
	private int numberOfBuy;
	private double tax;
	private double discount;
	
	
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return this.name;
	}
	
	public void setPrice(double price){
		this.price = price;
	}
	public double getPrice(){
		return this.price;
	}
	
	public void setQuantity(int quantity){
		this.quantity = quantity;
	}
	public int getQuantity(){
		return this.quantity;
	}
	
	public void setNumberOfBuy(int numberOfBuy){
		this.numberOfBuy = numberOfBuy;
	}
	public int getNumberOfBuy(){
		return this.numberOfBuy;
	}
	
	public void setTax(double tax){
		this.tax = tax;
	}
	public double getTax(){
		return this.tax;
	}
	
	public void setDiscount(double discount){
		this.discount = discount;
	}
	public double getDiscount(){
		return this.discount;
	}
	
	public Foods(String name, double price, int quantity, double tax, double discount){
		this.setName(name);
		this.setPrice(price);
		this.setQuantity(quantity);
		this.setTax(tax);
		this.setDiscount(discount);
	}
	
	public void showAll(){
		System.out.println("=================================================");
		System.out.println();
		System.out.println("Food Name:" + this.getName());
		System.out.println("Food Price:" + this.getPrice());
		System.out.println("Available Quantity:" + this.getQuantity());
		System.out.println();
		System.out.println("=================================================");
	}
	
	public double bill(double price, double number, double discount, double tax){
		double k=(price*number);
		double dt=discount/100;
		double ds=k*dt;
		double afterDiscount=k-ds;
		double t=tax/100;
		double taxAmount=afterDiscount*t;
		double total=afterDiscount+taxAmount;		
		return total;
	}
}