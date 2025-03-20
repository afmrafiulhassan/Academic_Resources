import java.lang.*;
import java.util.*;
import Classes.*;
import java.io.FileWriter;
import java.io.*;
import java.text.SimpleDateFormat;

public class Start{
	
	public static void main(String args[]){
		
		
		Scanner sc = new Scanner(System.in);
		Date d = new Date ();
		
		
		
		Foods burger = new Foods("Burger", 120, 50,2, 5);
		
		Foods chickenWings = new Foods("Chicken Wings", 120, 50,6, 7);
		
		Foods wonton = new Foods("Wonton", 120, 50,6, 7);
		
		Foods sandwich = new Foods("Sandwich", 120, 50,6, 7);
		
		Foods pizza = new Foods("Pizza", 120, 50,6, 7);
		
		Foods nachos = new Foods("Nachos", 120, 50,6, 7);
		
		Foods pasta = new Foods("Pasta", 120, 50,6, 7);
		
		Foods tacos = new Foods("Tacos", 120, 50,6, 7);
		
		Foods potatoWedges = new Foods("Potato Wedges", 120, 50,6, 7);
		
		Foods noodles = new Foods("Noodles", 120, 50,6, 7);
		
		
		Shop s = new Shop();
		EmpShop s2 = new EmpShop();
		
		s.addFoods(burger);
		s.addFoods(chickenWings);
		s.addFoods(wonton);
		s.addFoods(sandwich);
		s.addFoods(pizza);
		s.addFoods(nachos);
		s.addFoods(pasta);
		s.addFoods(tacos);
		s.addFoods(potatoWedges);
		s.addFoods(noodles);
		
		
		System.out.println();
		System.out.println();
		System.out.println("                     #############################################");
		System.out.println("                     #############################################");
		System.out.println("                     ##                                         ##");
		System.out.println("                     ##  WELCOME TO FIVE FEET APART FOOD HOUSE  ##");
		System.out.println("                     ##                                         ##");
		System.out.println("                     #############################################");
		System.out.println("                     #############################################\n");
		
		
		System.out.println();
		System.out.println();
		System.out.println("                     We Offer: ");
		System.out.println();
		System.out.println("                     (i)   Burger.");
		System.out.println("                     (ii)  Chicken Wings.");
		System.out.println("                     (iii) Wonton.");
		System.out.println("                     (iv)  Sandwich.");
		System.out.println("                     (v)   Pizza.");
		System.out.println("                     (vi)  Nachos.");
		System.out.println("                     (vii) Pasta.");
		System.out.println("                     (vii) Tacos.");
		System.out.println("                     (ix)  Potato Wedges.");
		System.out.println("                     (x)   Noodles.");
		System.out.println();
		System.out.println();
		
		boolean i=true;
	    while(i){
			System.out.println("=================================================");
			System.out.println();
			System.out.println("Here are some option for you: ");
			System.out.println();
			System.out.println("  For Admin: ");
			System.out.println("        1. Add Price or edit the default price of the Food.");
			System.out.println("        2. Remove Foods.");
			System.out.println("        3. Employee Managenent.");
			System.out.println();
			System.out.println("  For Coustomer: ");
			System.out.println("        4. Search Foods.");
			System.out.println("        5. Show all foods items.");
			System.out.println("        6. Cart & Bill Generation.");
			System.out.println("        7. Exit");
			System.out.println();
			System.out.println("=================================================");
		    System.out.println();
			System.out.print("   What do you want to do? : ");
			
			
			
			int f1 = sc.nextInt(); 
		    String error = sc.nextLine();
			
			
			
			
			
			
			if(f1>0 && f1<8){	
			switch(f1){
				case 1:
						System.out.println();
						System.out.print("   Enter Your Password: ");
						String passwordAdmin1 = sc.nextLine();
						String a = Shop.getPassword();
						if(passwordAdmin1.equals(a)){
							System.out.print("Enter the Food name which default price you want to change: ");		
							String xy = sc.nextLine();
							System.out.print("Enter the price you want to add: ");
							double price=sc.nextInt();
							Shop.addPrice(xy, price);
						}
						else{
							System.out.println("================================");
							System.out.println();
							System.out.println("         Wrong Password");
							System.out.println();
							System.out.println("================================");
						}
						break;
					
					case 2:
							System.out.println();
							System.out.print("   Enter Your password: ");
							String passwordAdmin2=sc.nextLine();
							String aa=Shop.getPassword();
							System.out.println();
							if(passwordAdmin2.equals(aa)){
								System.out.print("   Enter the Foods name which you want to remove from the list: ");
								String removeFoods=sc.nextLine();
								Shop.removeFoods(removeFoods);
							}
						else{
							System.out.println("================================");
							System.out.println();
							System.out.println("         Wrong Password");
							System.out.println();
							System.out.println("================================");
						}
						break;
						
					case 3:	
							
							System.out.println();
							System.out.print("   Enter Your password: ");
							String passwordAdmin3=sc.nextLine();
							String aaa=Shop.getPassword();
							if(passwordAdmin3.equals(aaa)){
							
							System.out.println("=================================================");
							System.out.println();
							System.out.println("     You have selected Employee Management");
							System.out.println();
							System.out.println("=================================================");
							System.out.println();
							System.out.println("     Here are Some Options for You: \n");
							System.out.println("	    1. Create New Employee");
							System.out.println("	    2. Remove Existing Employee");
							System.out.println("	    3. See all Employees");
							System.out.println("	    4. Go Back");
							System.out.println();
							System.out.println("=================================================");
							System.out.println();
							System.out.print("      What do you want to do? : ");
							int second1 = sc.nextInt();
					
							switch(second1){
								case 1:
							
										System.out.println("You have Selected to create a new Employee\n");
										System.out.print("Enter Employee Id: ");
										String empId = sc.next();
										System.out.print("Enter Employee Name: ");
										String empName = sc.next();
										System.out.print("Enter Employee Salary: ");
										double salary = sc.nextDouble();
										
										Employee e = new Employee();
										e.setEmpId(empId);
										e.setEmpName(empName);
										e.setSalary(salary);
										
										s2.insertEmployee(e);
										
										try{
		
													FileWriter fw1 = new FileWriter("Files/EmployeeInfo.txt",true);
													
													fw1.write("\n");
													
													fw1.write("=================================================\n");
														
													fw1.write("Employee Name: "+empName+"\n");
														
													fw1.write("Employee ID: "+empId+"\n");
														
													fw1.write("Employee Salary: "+salary+" BDT\n");
																	
													fw1.write("=================================================");
													
													fw1.close();		
													}
													catch(Exception p){
															System.out.print(p);
													}
							
							
								break;
							
								case 2:
							
										System.out.println("You have Selected to remove an existing Employee");
										System.out.print("Enter Employee Id: ");
										
										
										s2.removeEmployee(s2.getEmployee(sc.next()));
										
								break;
							
								case 3:
							
										System.out.println("You have Selected to see all Employees");
							
										s2.showAllEmployees();
							
								break;
						
								case 4:
							
										System.out.println("You have Selected to Go Back");
								break;
						
								default:
							
									System.out.println("Invalid Input");
								break;
							}
								
							}
							else{
							System.out.println("================================");
							System.out.println();
							System.out.println("         Wrong Password");
							System.out.println();
							System.out.println("================================");
							}
							
							
					
					break;
						
					case 4:
							System.out.print("Enter the Food name which you want to search from the list: ");
							String searchFood=sc.nextLine();
							s.search(searchFood);
						break;
					
					case 5:
							System.out.println("=================================================");
							System.out.print("             All Food's Informations:");
							s.showAllS();
						break;	
					
					

					
						
					case 6:		
							boolean t=true; 
							while(t){ 
							System.out.println();
							System.out.println();
							System.out.println("Enter 1 to buy Burger");
							System.out.println("Enter 2 to buy Chicken Wings");
							System.out.println("Enter 3 to buy Wonton");
							System.out.println("Enter 4 to buy Sandwich");
							System.out.println("Enter 5 to buy Pizza");
							System.out.println("Enter 6 to buy Nachos");
							System.out.println("Enter 7 to buy Pasta");
							System.out.println("Enter 8 to buy Tacos");
							System.out.println("Enter 9 to buy Potato Wedges");
							System.out.println("Enter 10 to buy Noodles");
							System.out.println("Enter 11 if you are Done");
							System.out.println();
							System.out.print("Please type the input here: ");
							int option=sc.nextInt();
							if(option<12 && option>0){
							switch(option){
											case 1:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Burger you want to buy: ");
													double numBurger=sc.nextInt();				
													double priceBurger= s.finalPrice("Burger");
													double discountBurger= s.discount("Burger");
													double taxBurger=s.tax("Burger");
													double burgerBill=s.billShop("Burger",priceBurger,numBurger,discountBurger,taxBurger);		    
													System.out.println("Unit Price: "+priceBurger+" Taka");
													System.out.println("Discount: "+discountBurger+"%");
													System.out.println("Tax: "+taxBurger+"%");
													System.out.println("Total price: "+burgerBill+" Taka");
													Shop.setTotalBill(burgerBill);
													System.out.println();
													System.out.println("=================================================");
												break;
							
											case 2:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Chicken Wings you want to buy: ");
													double numChickenWings=sc.nextInt();				
													double priceChickenWings=s.finalPrice("Chicken Wings");
													double discountChickenWings=s.discount("Chicken Wings");
													double taxChickenWings=s.tax("Chicken Wings");
													double chickenWingsBill=s.billShop("Chicken Wings",priceChickenWings,numChickenWings,discountChickenWings,taxChickenWings);		    
													System.out.println("Unit Price: "+priceChickenWings+" Taka");
													System.out.println("Discount: "+discountChickenWings+"%");
													System.out.println("Tax: "+taxChickenWings+"%");
													System.out.println("Total price: "+chickenWingsBill+" Taka");
													Shop.setTotalBill(chickenWingsBill);
													System.out.println();
													System.out.println("=================================================");
				
												break;
							 		
				
											case 3:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Wonton you want to buy: ");
													double numWonton=sc.nextInt();				
													double priceWonton=s.finalPrice("Wonton");
													double discountWonton=s.discount("Wonton");
													double taxWonton=s.tax("Wonton");
													double wontonBill=s.billShop("Wonton",priceWonton,numWonton,discountWonton,taxWonton);		    
													System.out.println("Unit Price: "+priceWonton+" Taka");
													System.out.println("Discount: "+discountWonton+"%");
													System.out.println("Tax: "+taxWonton+"%");
													System.out.println("Total price: "+wontonBill+" Taka");
													Shop.setTotalBill(wontonBill);
													System.out.println();
													System.out.println("=================================================");
												break;
							
											case 4:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Sandwich you want to buy: ");
													double numSandwich=sc.nextInt();				
													double priceSandwich=s.finalPrice("Sandwich");
													double discountSandwich=s.discount("Sandwich");
													double taxSandwich=s.tax("Sandwich");
													double sandwichBill=s.billShop("Sandwich",priceSandwich,numSandwich,discountSandwich,taxSandwich);		    
													System.out.println("Unit Price: "+priceSandwich+" Taka");
													System.out.println("Discount: "+discountSandwich+"%");
													System.out.println("Tax: "+taxSandwich+"%");
													System.out.println("Total price: "+sandwichBill+" Taka");
													Shop.setTotalBill(sandwichBill);
													System.out.println();
													System.out.println("=================================================");
												break;
							
				
											case 5:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Pizza you want to buy: ");
													double numPizza=sc.nextInt();				
													double pricePizza=s.finalPrice("Pizza");
													double discountPizza=s.discount("Pizza");
													double taxPizza=s.tax("Pizza");
													double pizzaBill=s.billShop("Pizza",pricePizza,numPizza,discountPizza,taxPizza);		    
													System.out.println("Unit Price: "+pricePizza+" Taka");
													System.out.println("Discount: "+discountPizza+"%");
													System.out.println("Tax: "+taxPizza+"%");
													System.out.println("Total price: "+pizzaBill+" Taka");
													Shop.setTotalBill(pizzaBill);
													System.out.println();
													System.out.println("=================================================");
				
											break;
							
								
											case 6:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Nachos you want to buy: ");
													double numNachos=sc.nextInt();				
													double priceNachos=s.finalPrice("Nachos");
													double discountNachos=s.discount("Insulin");
													double taxNachos=s.tax("Nachos");
													double nachosBill=s.billShop("Nachos",priceNachos,numNachos,discountNachos,taxNachos);		    
													System.out.println("Unit Price: "+priceNachos+" Taka");
													System.out.println("Discount: "+discountNachos+"%");
													System.out.println("Tax: "+taxNachos+"%");
													System.out.println("Total price: "+nachosBill+" Taka");
													Shop.setTotalBill(nachosBill);
													System.out.println();
													System.out.println("=================================================");
				
											break;
							
				
											case 7:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Pasta you want to buy: ");
													double numPasta=sc.nextInt();				
													double pricePasta=s.finalPrice("Pasta");
													double discountPasta=s.discount("Pasta");
													double taxPasta=s.tax("Pasta");
													double pastaBill=s.billShop("Pasta",pricePasta,numPasta,discountPasta,taxPasta);		    
													System.out.println("Unit Price: "+pricePasta+" Taka");
													System.out.println("Discount: "+discountPasta+"%");
													System.out.println("Tax: "+taxPasta+"%");
													System.out.println("Total price: "+pastaBill+" Taka");
													Shop.setTotalBill(pastaBill);
													System.out.println();
													System.out.println("=================================================");
				
											break;
							
				
											case 8:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Tacos you want to buy: ");
													double numTacos=sc.nextInt();				
													double priceTacos=s.finalPrice("Tacos");
													double discountTacos=s.discount("Tacos");
													double taxTacos=s.tax("Tacos");
													double tacosBill=s.billShop("Tacos",priceTacos,numTacos,discountTacos,taxTacos);		    
													System.out.println("Unit Price: "+priceTacos+" Taka");
													System.out.println("Discount: "+discountTacos+"%");
													System.out.println("Tax: "+taxTacos+"%");
													System.out.println("Total price: "+tacosBill+" Taka");
													Shop.setTotalBill(tacosBill);
													System.out.println();
													System.out.println("=================================================");
				
											break;
							
				
				
											case 9:
				
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Potato Wedges you want to buy: ");
													double numPotatoWedges=sc.nextInt();				
													double pricePotatoWedges=s.finalPrice("Potato Wedges");
													double discountPotatoWedges=s.discount("Potato Wedges");
													double taxPotatoWedges=s.tax("Potato Wedges");
													double potatoWedgesBill=s.billShop("Potato Wedges",pricePotatoWedges,numPotatoWedges,discountPotatoWedges,taxPotatoWedges);		    
													System.out.println("Unit Price: "+pricePotatoWedges+" Taka");
													System.out.println("Discount: "+discountPotatoWedges+"%");
													System.out.println("Tax: "+taxPotatoWedges+"%");
													System.out.println("Total price: "+potatoWedgesBill+" Taka");
													Shop.setTotalBill(potatoWedgesBill);
													System.out.println();
													System.out.println("=================================================");
				
											break;
							
				
											case 10:
				
													System.out.println("=================================================");
													System.out.println();
													System.out.print("Number of Noodles you want to buy: ");
													double numNoodles=sc.nextInt();				
													double priceNoodles=s.finalPrice("Noodles");
													double discountNoodles=s.discount("Noodles");
													double taxNoodles=s.tax("Noodles");
													double noodlesBill=s.billShop("Noodles",priceNoodles,numNoodles,discountNoodles,taxNoodles);		    
													System.out.println("Unit Price: "+priceNoodles+" Taka");
													System.out.println("Discount: "+discountNoodles+"%");
													System.out.println("Tax: "+taxNoodles+"%");
													System.out.println("Total price: "+noodlesBill+" Taka");
													Shop.setTotalBill(noodlesBill);			
													System.out.println();
													System.out.println("=================================================");
													
											break;
							
				
											case 11:
													System.out.println();
													System.out.println("=================================================");
													System.out.println();
													System.out.println();			
													System.out.print("Your total bill is: ");
													System.out.print(Shop.getTotalBill());
													System.out.println(" Taka");
													
													double bb=s.getTotalBill();
													String ss=String.valueOf(bb);  
													
													System.out.println();
													System.out.println("Time and Date: "+d);
													Shop.setBillZero();				
													System.out.println("****Thanks for shopping with us********");
													System.out.println();			
													System.out.println("=====================================================================");
													System.out.println();
													System.out.println("Please fill up the form ,it will help us to make our service better: ");
													System.out.println();
													System.out.println("=====================================================================");
													System.out.println();	
													System.out.print("Your name: ");
													String error1=sc.nextLine();
													String customerName=sc.nextLine();
													System.out.println();
													System.out.print("Your Phone number: ");
													String customerPhoneNumber=sc.nextLine();
													System.out.println();
													System.out.print("Your address: ");
													String customerAddress=sc.nextLine();
													System.out.println();
							
				
												try{
		
													FileWriter fw = new FileWriter("Files/CustomerInfo.txt",true);
													
													fw.write("\n\n\n");
														
													fw.write("Customer Name: "+customerName+"\n");
														
													fw.write("Customer Phone Number: "+customerPhoneNumber+"\n");
														
													fw.write("Customer Address: "+customerAddress+"\n");
														
													fw.write("Total bill: "+ss+"\n");
														
													fw.write("Time and Date: "+d+"\n");
																	
													fw.write("___________________________________________________________________________________");
													
													fw.close();		
													}
													catch(Exception p){
															System.out.print(p);
													}
				

				
												t=false;
											break;
											
											
				
				
										}
									}
									else
										System.out.println("Wrong input, please try again");
									}
									break;
									case 7:
											System.out.println("\nThanks for being with us....");
											System.out.println("");
											i=false;
											
												
											
											
								}	
	}
	else{
		System.out.println("\nInvalid input,please try again");
	}
		
	}
	}
	
}