import java.lang.*;

public class Start{
	public static void main(String[] args) {
		Book b1 = new Book("The Fault in Our Stars","John Green","707999","Realistic Fiction",20);
		Book b2 = new Book("Sherlock Homes","Arthur Conan Doyle","711838","Crime Fiction",20);
		b1.AddBookCopy(20);
		b2.AddBookCopy(20);
		Library li=new Library("Book Store","Banasree",80,2);
		li.AddNewBook(b1);
		li.AddNewBook(b2);
		li.ShowLibInfo();
		b1.ShowBookInfo();
		System.out.println();
		Contact c1= new Contact("Nahiyan","20-57044-1",20,"0177XXXXX",'M');
		Contact c2= new Contact("Sourav","22-45643-1",20,"0184XXXXX",'M');
		
		AddressBook ad=new AddressBook("Tipu","2");
		ad.AddContact(c1);
		ad.AddContact(c2);
		ad.ShowAllContactInfo();
	}

	
}

	
