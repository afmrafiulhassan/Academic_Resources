import java.lang.*;
import java.util.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

 public class Ffafh extends JFrame
 {
    JLabel Customer,Name,Contact,Food,Drinks,Type;
	JTextField tNumber,tName,tContact,tFood,tDrinks,tType;
	JComboBox c1,c2;
	JRadioButton b1,b2;
	JTextArea area1;
	JButton reset,print,reciept;
	
    Ffafh()
    {
		setTitle("Five Feet Apart Food House");
		setLayout(null);
		setSize(1000,1000);
		
		
      Customer = new JLabel("Customer No:");
      Customer.setBounds(20,50,120,30);

      Name = new JLabel("Name:");
      Name.setBounds(20,100,120,30);

      Contact = new JLabel("Contact:");
      Contact.setBounds(20,150,120,30);

      Food = new JLabel("Food:");
      Food.setBounds(20,200,120,30);

      Drinks = new JLabel("Drinks:");
      Drinks.setBounds(20,250,120,30);

      Type = new JLabel("Type:");
      Type.setBounds(20,300,120,30); 
	  
	  tNumber = new JTextField();
	  tNumber.setBounds(150,50,200,30);
	  
	  tName = new JTextField();
	  tName.setBounds(150,100,200,30);
	  
	  tContact = new JTextField();
	  tContact.setBounds(150,150,200,30);
	  
	  b1 = new JRadioButton("Cold");
	  b2 = new JRadioButton("Normal");
	  b1.setBounds(200,300,60,30);
	  b2.setBounds(300,300,70,30);
	  
	  ButtonGroup group = new ButtonGroup();
	  group.add(b1);
	  group.add(b2);
	  
	  String Foo [] = {"Fast Food","Coffee","Fresh Juices","Drinks"};
	  c1 = new JComboBox(Foo);
	  c1.setBounds(200,200,120,30);
	  
	  String Dr [] = {"Coke","Fanta","Sprite","Pepsi","Mirinda","Clemon"};
	  c2 = new JComboBox(Dr);
	  c2.setBounds(200,250,120,30);
	  
	  area1 = new JTextArea();
	  area1.setBounds(400,160,80,40);
	  area1.setSize(260,260);
	  
	  reset = new JButton("Reset");
	  reset.setBounds(400,100,80,40);
	  
	  print = new JButton("Print");
	  print.setBounds(490,100,80,40);
	  
	  reciept = new JButton("Reciept");
	  reciept.setBounds(580,100,80,40);
	  
	  
	 
	  getContentPane().add(area1);
	  getContentPane().add(reset);
	  getContentPane().add(print);
	  getContentPane().add(reciept);
	  getContentPane().add(Customer);
	  getContentPane().add(Name);
	  getContentPane().add(Contact);
	  getContentPane().add(Food);
	  getContentPane().add(Drinks);
	  getContentPane().add(Type);
	  getContentPane().add(c1);
	  getContentPane().add(c2);
	  getContentPane().add(tName);
	  getContentPane().add(tContact);
	  getContentPane().add(tNumber);
	  getContentPane().add(b1);
	  getContentPane().add(b2);
	  
	  setVisible(true);
	   
	  setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	  
	  reset.addActionListener(new ActionListener() 
	  {
		  public void actionPerformed(ActionEvent e) 
		  {
			  tName.setText("");
			  
			  tContact.setText("");
			  
			  tNumber.setText("");
			  
			  area1.setText("");
			  
			 
			  b1.setSelected(false);
			  
			  b2.setSelected(false);
			  
			  c1.setSelectedIndex(0);
			  
			  c2.setSelectedIndex(0);
			  
			  
		  }
	  }
	  
	  );
	  
	  print.addActionListener(new ActionListener() 
	  {
		  public void actionPerformed(ActionEvent e) 
		  {
			try{
			area1.print();
			}
			catch(Exception ex)
			{
			System.out.println(ex.getMessage());
			}
		  }
	  }
	  
	  );
	  reciept.addActionListener(new ActionListener() 
	  {
		  public void actionPerformed(ActionEvent e) 
		  {
			 area1.setText("Customer Name :  "+tName.getText()+"\nCustomer Contact :  "+tContact.getText()+"\nCustomer Number :  "+tNumber.getText());
			 area1.setText(area1.getText()+"\nFoods :  "+c1.getSelectedItem());
			 area1.setText(area1.getText()+"\nDrinks :  "+c2.getSelectedItem());
		  }
	  }
	  
	  );
}
public static void main(String[]args)
{
	new Ffafh();
}

 }
