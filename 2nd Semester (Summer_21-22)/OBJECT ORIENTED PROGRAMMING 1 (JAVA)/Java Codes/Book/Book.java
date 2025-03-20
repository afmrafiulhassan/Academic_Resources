public class Book {
	
     private String bookName;
	 private String bookAuthor;
	 private String bookId;
	 private String bookType;
	 private int bookCopy;
	 public static int bookCounter;
	 public static void showTotalBookInfo()
	 {
		 System.out.println("Total BookInfo: "+bookCounter);
	 }
	  
	 static{ bookCounter=0;
	 System.out.println("Static block is calling");}
	 
	 public Book()
	 {
		bookCounter++;
		System.out.println("Empty Book info");
	 }
	 
	 public Book(String bookName, String bookAuthor, String bookId, String bookType, int bookCopy)
	 {
		 this.bookName=bookName;
		 this.bookAuthor=bookAuthor;
		 this.bookId=bookId;
		 this.bookType=bookType;
		 this.bookCopy=bookCopy;
		 bookCounter++;
		 System.out.println("Parameterized Book info");
	 }
	 public void setbookName(String bookName){
		 this.bookName=bookName;
	 }
	 public String getbookName(){
		 return bookName;
	 }
	 public void setbookAuthor(String bookAuthor){
		 this.bookAuthor=bookAuthor;
	 }
	 public String getbookAuthor(){
		 return bookAuthor;
	 }
	 public void setbookId(String bookId){
		 this.bookId=bookId;
	 }
	 public String getbookId(){
		 return bookId;
	 }
	 public void setbookType(String bookType){
		 this.bookType=bookType;;
	 }
	 public String getbookType(){
		 return bookType;
	 }
	 public void setbookCopy(int bookCopy){
		this.bookCopy=bookCopy;
	 }
	 public int getbookCopy(){
		 return bookCopy;
	 }
 
     public void AddBookCopy(int x){
	      bookCopy=bookCopy+x;
      }
     void ShowBookInfo(){
	 System.out.println("bookName: "+bookName);
	 System.out.println("bookAuthor: "+bookAuthor);
	 System.out.println("bookId: "+bookId);
	 System.out.println("bookType: "+bookType);
	 System.out.println("bookCopy: "+bookCopy);
     }
 
     static{
	         System.out.println("Static block start is calling");
		  }
		  
	public static void main(String[] args){
		
		Book b2=new Book("Physics", "A", "0001", "Science", 100);
		Book b3=new Book("OOP", "B", "1234", "Science", 30);
	         System.out.println();
		b2.ShowBookInfo();
		     System.out.println();
		b3.ShowBookInfo();
		     System.out.println();
		Book.showTotalBookInfo();
	}
 
}