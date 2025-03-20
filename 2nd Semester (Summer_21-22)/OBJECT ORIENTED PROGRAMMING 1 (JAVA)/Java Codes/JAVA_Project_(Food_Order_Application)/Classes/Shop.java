package Classes;

public class Shop{
	public static String password = "ffafh";
	
	public static String getPassword(){
		return password;
	}
	
	private static double totalBill = 0 ;
	
	public static void setTotalBill(double b){
		totalBill = b + totalBill;
	}
	
	public static void setBillZero(){
		totalBill=0;
	}
	public static double getTotalBill(){
		return totalBill;
	}
	
	private static Foods[] list = new Foods[50];	
	private static int index = 0;
	
	public static void addFoods(Foods f){
		list[index] = f;
		index++;		
	}
	
	public static void showAllS(){
		for(int i = 0; i < index; i++){
			if(list[i]!=null){
			System.out.println();
			list[i].showAll();
			System.out.println();
			}			
		}
	}
	
	public static void showFoodsName(){
		for(int i = 0; i < index; i++){
			if(list[i]!=null){
			System.out.println(list[i].getName());
			}			
		}
	}
	
	public static void showPrice(){
		for(int i = 0; i < index; i++){
			if(list[i]!=null){
			System.out.println(list[i].getName()+": "+list[i].getPrice());
			}			
		}
	}
	
	public static void search(String n){
		boolean u=false;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u = true;
				System.out.println();
				System.out.println("Food Found");
				System.out.println();
				System.out.println("Food Details: ");
				System.out.println("=================================================");
				System.out.println();
				list[s].showAll();
				System.out.println();
				System.out.println("=================================================");
				System.out.println();
         
			}					
		}
		if(u == false){
			System.out.println();
			System.out.println("Food not found");
		}
	}
	
	public static int find(String n){
		boolean u = false;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u = true;
                return s;
			}					
		}
		if(u == false){
		}
		return -1;
	}
	
	public static void removeFoods(String k){
	     int r = find(k);
		 if(r >= 0){
			list[r] = null;
			System.out.println("Food Found");
			System.out.println();
			System.out.println("Food Deleted");
			System.out.println();
			System.out.println("New Foods list:");
            System.out.println();
			System.out.println();
			showFoodsName();
		 }
		 else
			System.out.println("Food not found");
		
	}
	
	public static void addPrice(String k,double s){
	    try{
		int r = find(k);
		 if(r >= 0){
			System.out.println();
			System.out.println("Food Found,Food updated, New price: ");	
			System.out.println();			
			list[r].setPrice(s);
			showPrice();
		 }
		 else{
			System.out.println("Food not found");
		 }
		}
	
	    catch(Exception p){
		System.out.println("An Error occured");
		}	
	}
	
	public static  double finalPrice(String n){
		boolean u = false;
		double pr = 0;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u = true;
				pr = list[s].getPrice();
                return pr;
			}					
		}
		return pr;
	}
	
	public static double discount(String n){
		boolean u = false;
		double pr = 0;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u = true;
				pr = list[s].getDiscount();
                return pr;
			}					
		}
		return pr;
	}
	
	public static double tax(String n){
		boolean u = false;
		double pr = 0;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u = true;
				pr = list[s].getTax();
                return pr;
			}					
		}
		return pr;
	}
	
	public static double billShop(String n,double priceBurger,double numBurger,double discountBurger,double taxBurger){
		boolean u = false;
		double pr = 0;
		for(int s = 0; s < index; s++){
			if(n.equals(list[s].getName())){
				u=true;
				pr=list[s].bill(priceBurger,numBurger,discountBurger,taxBurger);
                return pr;
			}					
		}
		return pr;
	}
}