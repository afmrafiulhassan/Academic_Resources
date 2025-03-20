public class Book {

	//Private Varible
     private String bookName;
	 private String bookAuthor;
	 private String bookId;
	 private String bookType;
	 private int bookCopy;
	 public static int bookCounter;

	 //Static Method	
	 public static void showTotalBookInfo(){
		 System.out.println("Total BookInfo: "+bookCounter);
	}

	//static varible
	 static{ 
	 bookCounter=0;
	 }

	 //Empty Constucotor
	 public Book(){
		bookCounter++;
		//System.out.println("Empty Book info");
	 }

	 //Parameterized Constucotor
	 public Book(String bookName, String bookAuthor, String bookId, String bookType, int bookCopy){
		// System.out.println("Parameterized Book info");
		 this.bookName=bookName;
		 this.bookAuthor=bookAuthor;
		 this.bookId=bookId;
		 this.bookType=bookType;
		 this.bookCopy=bookCopy;
		 bookCounter++;
		 
	}
	
	 //Set Method
	 public void setbookName(String bookName){
		 this.bookName=bookName;
	}
	 public void setbookAuthor(String bookAuthor){
		 this.bookAuthor=bookAuthor;
	}
	 public void setbookId(String bookId){
		 this.bookId=bookId;
	}
	 public void setbookType(String bookType){
		 this.bookType=bookType;;
	}
	 public void setbookCopy(int bookCopy){
		this.bookCopy=bookCopy;
	}
	
	 //Get Method
	 public String getbookName(){
		return bookName;
	}
	public String getbookAuthor(){
		return bookAuthor;
	}
	public String getbookId(){
		return bookId;
	}
	public String getbookType(){
		return bookType;
	}
	 public int getbookCopy(){
		 return bookCopy;
	}
 
     public void AddBookCopy(int x){
	      bookCopy=bookCopy+x;
     }
	 
	 //Show All Method
     void ShowBookInfo(){
	 System.out.println("Book Name: "+bookName);
	 System.out.println("Book Author: "+bookAuthor);
	 System.out.println("Book Id: "+bookId);
	 System.out.println("Book Type: "+bookType);
	 System.out.println("Book Copy: "+bookCopy);
     }
 
    
	//Main 	  
	public static void main(String[] args){
		Book b1=new Book();
		
		    System.out.println();
			
		Book b2 =new Book();
		
		    System.out.println();
			
		b2.setbookName("Paul Wernick");
		b2.setbookAuthor("Rhett Reese");
		b2.setbookId("0203");
		b2.setbookType("Comics");
		b2.setbookCopy(5);
		
		System.out.println("Book Name: "+b2.getbookName());
		System.out.println("Book Author: "+b2.getbookAuthor());
		System.out.println("Book Id: "+b2.getbookId());
		System.out.println("Book Type: "+b2.getbookType());
		System.out.println("Book Copy: "+b2.getbookCopy());
		
		    System.out.println();
		
		Book b3=new Book("English", "Bazina", "1111", "Science", 95);
		
	         System.out.println();
		
		b3.ShowBookInfo();
		
		     System.out.println();
			 
		Book.showTotalBookInfo();
	}
 
}