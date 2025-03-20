import java.lang.*;

public class Library {
	private String libName;
	private String libAddress;
	private Book[] listOfBooks;
	private int totalBook;
	
	Library(String libName,String libAddress,int totalBook,int sizeArray){
		this.libName=libName;
		this.libAddress=libAddress;
		this.totalBook=totalBook;
	    listOfBooks =new Book[sizeArray];
	}
	
	public int getTotalBook() {
		return totalBook;
	}
	public void setTotalBook(int totalBook) {
		this.totalBook = totalBook;
	}
	public Book [] getListOfBooks() {
		return listOfBooks;
	}
	public void setListOfBooks(Book [] listOfBooks) {
		this.listOfBooks = listOfBooks;
	}
	public String getLibAddress() {
		return libAddress;
	}
	public void setLibAddress(String libAddress) {
		this.libAddress = libAddress;
	}
	public String getLibName() {
		return libName;
	}
	public void setLibName(String libName) {
		this.libName = libName;
	}
	public void AddNewBook(Book book) {
		for (int i = 0; i < listOfBooks.length; i++) {
			if (listOfBooks[i]==null) {
				listOfBooks[i]=book;
				break;
			}
		}
	}
	public void DeleteBook(Book book) {
		for(int i=0;i<listOfBooks.length;i++) {
			if(listOfBooks[i]==book) {
				listOfBooks[i]=null;
			}
		}
	}
	public void ShowLibInfo() {
		System.out.println("Libary Name : "+libName);
		System.out.println("Libary Address : "+libAddress);
		for (int i = 0; i < listOfBooks.length; i++) {
			if (listOfBooks[i]!=null) {
				listOfBooks[i].ShowBookInfo();
				System.out.println();
			}
		}
	}
	
	
	public void AddNewBookCopy(Book book,int copy) {
		
	}
	

}
