/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package electricitymanagement;

/**
 *
 * @author Vivek
 */
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;

public class Login extends JFrame implements ActionListener{
    JLabel l1,l2,l3, l4;
    JTextField tf1;
    JPasswordField pf2;
    JButton b1,b2, b3;
   // JPanel p1,p2,p3,p4;
    Choice c1;
    Login(){
        super("Login Page");
      
       
        
        setLayout(null);
        getContentPane().setBackground(Color.ORANGE);
        
        l1 = new JLabel("Username");
        l1.setFont(new Font("Verdana", Font.ITALIC, 16));
        l1.setBounds(300, 20, 100, 20);
        add(l1);
        l2 = new JLabel("Password");
              l2.setFont(new Font("Verdana", Font.ITALIC, 16));
        l2.setBounds(300, 60, 100, 20);
        add(l2);
        
        tf1 = new JTextField(15);
        tf1.setBounds(400, 20, 150, 25);
        tf1.setFont(new Font("Arial", Font.ITALIC, 16));
        add(tf1);
        pf2 = new JPasswordField(15);
        pf2.setBounds(400, 60, 150, 25);
        pf2.setFont(new Font("Arial", Font.ITALIC, 16));
        add(pf2);
        
        l4 = new JLabel("Log in as");
              l4.setFont(new Font("Verdana", Font.ITALIC, 16));
        l4.setBounds(300, 100, 100, 20);
        add(l4);
        
        c1 = new Choice();
        c1.add("Admin");
        c1.add("Customer");
        c1.setBounds(400, 100, 150, 25);
        c1.setFont(new Font("Arial", Font.ITALIC, 16));
        add(c1);
        
        ImageIcon ic1 = new ImageIcon(ClassLoader.getSystemResource("icon/login.png"));
        Image i1 = ic1.getImage().getScaledInstance(16, 16,Image.SCALE_DEFAULT);
        b1 = new JButton("Login", new ImageIcon(i1));
        b1.setBounds(310, 160, 100, 20);
        b1.setFont(new Font("Arial", Font.ITALIC, 16));
        add(b1);
        
        ImageIcon ic2 = new ImageIcon(ClassLoader.getSystemResource("icon/cancel.jpg"));
        Image i2 = ic2.getImage().getScaledInstance(16, 16,Image.SCALE_DEFAULT);
        b2 = new JButton("Cancel",new ImageIcon(i2));
        b2.setBounds(430, 160, 140, 20);
               b2.setFont(new Font("Arial", Font.ITALIC, 16));
        add(b2);
        
        ImageIcon ic4 = new ImageIcon(ClassLoader.getSystemResource("icon/signup.png"));
        Image i4 = ic4.getImage().getScaledInstance(16, 16,Image.SCALE_DEFAULT);
        b3 = new JButton("Signup",new ImageIcon(i4));
        b3.setBounds(380, 200, 130, 20);
        b3.setFont(new Font("Arial", Font.ITALIC, 16));
        add(b3);
        
        b1.addActionListener(this);
        b2.addActionListener(this);
        b3.addActionListener(this);


        ImageIcon ic3 = new ImageIcon(ClassLoader.getSystemResource("icon/user.png"));
        Image i3 = ic3.getImage().getScaledInstance(250, 250,Image.SCALE_DEFAULT);
        ImageIcon icc3 = new ImageIcon(i3);
        l3 = new JLabel(icc3);
        l3.setBounds(0, 0, 250, 250);
        add(l3);
        
        setLayout(new BorderLayout());
    
     
        setSize(640,300);
        setLocation(600,300);
        setVisible(true);
        

        
    }
    public void actionPerformed(ActionEvent ae){
        if(ae.getSource() == b1){
            try{        
                conn c = new conn();
                String a  = tf1.getText();
                String b  = pf2.getText();
                String user = c1.getSelectedItem();
                String q  = "select * from login where username = '"+a+"' and password = '"+b+"' and user = '"+user+"'";
                ResultSet rs = c.s.executeQuery(q);
                if(rs.next()){
                    String meter = rs.getString("meter_no");
                    new Project(meter, user).setVisible(true);
                    this.setVisible(false);

                }else{
                    JOptionPane.showMessageDialog(null, "Invalid login");
                    tf1.setText("");
                    pf2.setText("");
                }
            }catch(Exception e){
                e.printStackTrace();
                System.out.println("error: "+e);
            }
        }else if(ae.getSource() == b2){
            this.setVisible(false);
        }else if(ae.getSource() == b3){
            this.setVisible(false);
            new SignUp().setVisible(true);
            
        }
    }
    
    public static void main(String[] args){
        new Login().setVisible(true);
    }

    
}
