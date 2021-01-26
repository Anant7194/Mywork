import java.awt.*;  
import java.awt.event.*;  
public class Calculator extends Frame implements ActionListener
{  
Button b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,plus,minus,divide,multiply,equals,clear;
TextField tf;
static String stext="";
Calculator()
{

    b1=new Button("1");  
    b1.setBounds(30,100,30,30);
    b2=new Button("2");
    b2.setBounds(70,100,30,30);	
    b3=new Button("3"); 
	b3.setBounds(110,100,30,30);
    b4=new Button("4"); 
	b4.setBounds(30,150,30,30);
	b5=new Button("5");
    b5.setBounds(70,150,30,30);	
	b6=new Button("6");
	b6.setBounds(110,150,30,30);
	b7=new Button("7");
	b7.setBounds(30,200,30,30);
	b8=new Button("8");
	b8.setBounds(70,200,30,30);
	b9=new Button("9");
	b9.setBounds(110,200,30,30);
	b0=new Button("0");
	b0.setBounds(70,250,30,30);
	plus=new Button("+"); 
    plus.setBounds(150,100,30,30);
    minus=new Button("-"); 	
	minus.setBounds(150,150,30,30);
	multiply=new Button("*"); 	
	multiply.setBounds(150,200,30,30);
	divide=new Button("/"); 
    divide.setBounds(150,250,30,30);
    equals=new Button("="); 	
	equals.setBounds(70,300,30,30);
	clear=new Button("c");
	clear.setBounds(110,300,30,30);
	tf=new TextField();
	tf.setBounds(30,50,50,10);
	
	b0.addActionListener(this);
	b1.addActionListener(this);
	b2.addActionListener(this);
	b3.addActionListener(this);
	b4.addActionListener(this);
	b5.addActionListener(this);
	b6.addActionListener(this);
	b7.addActionListener(this);
	b8.addActionListener(this);
	b9.addActionListener(this);
	plus.addActionListener(this);
	minus.addActionListener(this);
	divide.addActionListener(this);
	multiply.addActionListener(this);
	equals.addActionListener(this);
	clear.addActionListener(this);
	
	
	
    add(b1); 
	add(b2); 
	add(b3); 
	add(b4); 
	add(b5); 
	add(b6); 
	add(b7); 
	add(b8); 
	add(b9); 
	add(b0); 
    add(plus); 
	add(minus); 
	add(divide);  
    add(multiply); 
	add(equals); 
	add(clear);
	add(tf);
    setSize(200,400);  
    setLayout(null);  
    setVisible(true);   
}

public void actionPerformed(ActionEvent ae)
{
if(ae.getSource()==b0)
{
	stext=stext+"0";
	tf.setText(stext);
}	
if(ae.getSource()==b1)
{
	stext=stext+"1";
	tf.setText(stext);
}	
if(ae.getSource()==b2)
{
	stext=stext+"2";
	tf.setText(stext);
}	
if(ae.getSource()==b3)
{
	stext=stext+"3";
	tf.setText(stext);
}	
if(ae.getSource()==b4)
{
	stext=stext+"4";
	tf.setText(stext);
}	
if(ae.getSource()==b5)
{
	stext=stext+"5";
	tf.setText(stext);
}	
if(ae.getSource()==b6)
{
	stext=stext+"6";
	tf.setText(stext);
}	
if(ae.getSource()==b7)
{
	stext=stext+"7";
	tf.setText(stext);
}	
if(ae.getSource()==b8)
{
	stext=stext+"8";
	tf.setText(stext);
}	
if(ae.getSource()==b9)
{
	stext=stext+"9";
	tf.setText(stext);
}	
if(ae.getSource()==plus)
{
	stext=stext+" + ";
	tf.setText(stext);
	
}
if(ae.getSource()==minus)
{
	stext=stext+" - ";
	tf.setText(stext);
}	
if(ae.getSource()==multiply)
{
	stext=stext+" * ";
	tf.setText(stext);
}	
if(ae.getSource()==divide)
{
	stext=stext+" / ";
	tf.setText(stext);
}	
if(ae.getSource()==equals)
{
	tf.setText(""+EvaluateString.evaluate(stext));
}	
if(ae.getSource()==clear)
{
	stext="";
	tf.setText(stext);
}	
	
}
public static void main(String args[])
{
	Calculator f=new Calculator();
}

}
