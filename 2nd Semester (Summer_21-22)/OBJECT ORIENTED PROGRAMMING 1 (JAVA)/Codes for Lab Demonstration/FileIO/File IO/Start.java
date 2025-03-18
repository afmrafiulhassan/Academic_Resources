import java.lang.*;				   

public class Start
{
	public static void main(String []args)
	{
		FileReadWriteDemo file = new FileReadWriteDemo();
		String s="Abdul Karim";
		
		//Date formate for this example
		//lastname firstname;price;date
		file.writeInFile("KARIM;500;13.12.2020","files/History.txt");
		file.writeInFile(s+";"+"100;13.12.2020","files/History.txt");
		file.writeInFile("Abdul Rahim;500;13.12.2020","files/History.txt");
		file.writeInFile("Rahim;500;13.12.2020","files/History.txt");
		
		
		file.readFromFile("files/History.txt");
	}
}