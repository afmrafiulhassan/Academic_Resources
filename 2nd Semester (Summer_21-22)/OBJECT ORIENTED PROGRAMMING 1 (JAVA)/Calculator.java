import java.lang.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

class Calculator extends JFrame implements ActionListener {
	private JLabel label;
	private JTextField screen;
	private JButton btn7, btn8, btnPlus, btnEq;
	private JPanel panel;
	private Font myFont;
	
	private double op1, op2, result;
	private String operator;
	
	public Calculator(){
			super("My Calculator");
			this.setSize(400,500);
			this.setDefaultCloseOperation(EXIT_ON_CLOSE);
			this.setLayout(null);
			
			myFont = new Font("Cambria", Font.PLAIN, 25);
			
			panel = new JPanel();
			panel.setBounds(0,0,400,500);
			panel.setLayout(null);
			panel.setBackground(new Color(240,240,240));
			
			label = new JLabel();
			label.setText("Result Display");
			label.setFont(myFont);
			label.setBounds(10,0, 300, 50);
			panel.add(label);
			
			screen = new JTextField();
			screen.setFont(myFont);
			screen.setBounds(10,50, 360, 50);
			panel.add(screen);
			
			btn7 = new JButton("7");
			btn7.setFont(myFont);
			btn7.setBounds(10,120, 50,50);
			btn7.addActionListener(this);
			panel.add(btn7);
			
			btn8 = new JButton("8");
			btn8.setFont(myFont);
			btn8.setBounds(70,120, 50,50);
			btn8.addActionListener(this);
			panel.add(btn8);
			
			btnPlus = new JButton("+");
			btnPlus.setFont(myFont);
			btnPlus.setBounds(130,120, 50,50);
			btnPlus.addActionListener(this);
			panel.add(btnPlus);
			
			btnEq= new JButton("=");
			btnEq.setFont(myFont);
			btnEq.setBounds(190,120, 50,50);
			btnEq.addActionListener(this);
			panel.add(btnEq);
			
			
				
			this.add(panel);
			this.setVisible(true);
	}
	
	public void actionPerformed(ActionEvent ae){
		String command = ae.getActionCommand();
		
		if( btn7.getText().equals(command) ||
			btn8.getText().equals(command)){
			screen.setText( screen.getText()+command);
		}
		else if(btnPlus.getText().equals(command)){
			op1 =Double.parseDouble( screen.getText() );
			screen.setText("");
			operator = command;
		}
		else if(btnEq.getText().equals(command)){
			op2 = Double.parseDouble( screen.getText());
			
			if(operator.equals("+")){
				result = op1+op2;	
			}
			
			screen.setText(result+"");
			
		}
		
		
	}
	
}