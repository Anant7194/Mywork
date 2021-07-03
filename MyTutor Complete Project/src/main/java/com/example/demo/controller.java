package com.example.demo;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.Log_Reg_dao;
import com.example.demo.dao.youtube_Link_Dao;
import com.example.demo.model.Log_RegModel;
import com.example.demo.model.youtube_Links_model;


@Controller

public class controller 
{
	private int otp_global; //otp stored in class level variable

	private String recovery_mail;

	
	
	@Autowired
	private JavaMailSender sender;
	
	String name; //Global variable that contain Username
	
	@Autowired
	Log_Reg_dao ld;  //dao object to connect database
	
	@Autowired
	youtube_Link_Dao yrepo; // youtube link dao object to fetch link from database

	// staring page /
	@RequestMapping("/")
	public String home() {
		
		return "start.html";
	}

	// loginServlet
	@RequestMapping("login")
	public String loginServlet(@RequestParam("name") String name,@RequestParam("pass") String pass, Model m,HttpSession session) 
	{

		String email = name;	
		
		this.name = name; // local name var from request Param goes to class level name variable
		Log_RegModel Lr_Obj1 = null;
		Log_RegModel Lr_Obj2 = null;
		try
		{
			System.out.println(name);
			System.out.println(email);
			Lr_Obj1 = ld.findByName(name);
			
			
			if (Lr_Obj1==null) 
			{
				Lr_Obj2 = ld.findByEmail(email);
			}
		
		} catch (Exception e) 
		{
			System.out.println("User not found");
		}
		if (Lr_Obj1 == null && Lr_Obj2 == null) 
		{
			
			m.addAttribute("msg", "User is Not Registerd ");
		} 
		else 
		{
			if (Lr_Obj1!=null) {
			//Fetch name and perform action with the help of name
			if (Lr_Obj1.getEmail()!=null && Lr_Obj1.getName() != null ) {
				if( Lr_Obj1.getPass().endsWith(pass)) {
				session.setAttribute("name",Lr_Obj1.getName());
				
				m.addAttribute("pass", pass);
				m.addAttribute("name", Lr_Obj1.getName());
				String img_link ="https://www.youtube.com/embed/cpP-fCo8Dn4?autoplay=1&mute=1";
				session.setAttribute("ylink",img_link);
				return "homePage.jsp";
				}
				else {
					m.addAttribute("msg", "password is incorrect");
				}
			}
			}
	    else 
	    if (Lr_Obj2!=null) {	
			{
		    //Fetch email and perform action with the help of email
			if (Lr_Obj2.getEmail()!=null && Lr_Obj2.getName() != null ) {
				if( Lr_Obj2.getPass().endsWith(pass)) {
				session.setAttribute("name",Lr_Obj2.getName());
				m.addAttribute("name", Lr_Obj2.getName());
				m.addAttribute("pass", Lr_Obj2.getPass());
				String img_link ="https://www.youtube.com/embed/cpP-fCo8Dn4?autoplay=1&mute=1";
				session.setAttribute("ylink",img_link);
				return "homePage.jsp";
				}
				else 
				{
					m.addAttribute("msg", "password is incorrect");
				}
				}
			}
		   }
			}
		return "login.jsp";
	}
    
	//RegisterServlet
	@PostMapping("register")
	public String register(@ModelAttribute Log_RegModel lm,
	Model m) throws Exception 	
	{
		
		Log_RegModel lm1; //TO CHECK EMAIL ALREADY THERE
	
		
	
		lm1 = ld.findByEmail(lm.getEmail()); //find in db
		
		
		
		if(lm1==null) //null return so that email is not there
		{
			if(ld.findByName(lm.getName())==null) // if email is not there we can check name is there or not if name is not there return null
			{
			ld.save(lm);  // save the details in database
			m.addAttribute("msg","You are SuccessFully registerd"); // msg goes to login
			return "login.jsp";
			}
			else
			{
			m.addAttribute("msg","This email or username is already registerd"); //If Email is already there   
			return "login.jsp";
			}
		}
		
		else
			{
			m.addAttribute("msg","This email or username is already registerd"); //If Email is already there   
			return "login.jsp";
			}
			
	    
	}
	
	//YoutubeLinkFetch servlet
	@RequestMapping("youtube_link")
	public String youtubeLink(@RequestParam("subject") String subject, Model m) {
		m.addAttribute("name", name); //global name Varibale add added after the homepage recall
		
		
		
		if(m.getAttribute("name")==null) 
		{
			return "login.jsp";
		}
		
		// model object declare
		youtube_Links_model ym;
		
		try {

			ym = yrepo.findByYname(subject); // find subject in database

			if (ym != null) // check if subject is null or not
			{

				String ylink = ym.getYlink(); // Get the You tube link with the help of ym object // return by database

				m.addAttribute("ylink", ylink); // Add you tube link in model(InBuild) object
			}
		}
		catch (Exception e) 
		{
			System.out.println("subject not found");
		}
		return "homePage.jsp";
	}

	//User_profeil_fettch data servlet
	@RequestMapping("profile")
	public String profile_data_fetch(@RequestParam("name") String name,Log_RegModel lr,Model m) 
	{ 
		
		lr=ld.findByName(name);
		
        if(lr.getName().equals(name)) 
        {
        	m.addAttribute("name",name);
        	m.addAttribute("email",lr.getEmail());
        	m.addAttribute("dob", lr.getDob());
        	m.addAttribute("mobileno",lr.getMobile());
        	return "profile.jsp";
        }

        m.addAttribute("error","User have no record");
        return "homePage.jsp";
	}
	
	//contact through mail api
	@PostMapping("contact")
	public String contact(
	@RequestParam("fname") String fname,
	@RequestParam("lname") String lname,
	@RequestParam("mail_id") String mail_id,
	@RequestParam("subject") String subject,
	@RequestParam("content") String content,
	Model m) 
	{
		String from = "mytutor.onlineportal@gmail.com";
		String to = mail_id;
		 
		SimpleMailMessage message = new SimpleMailMessage();
		 
		message.setFrom(from);
		message.setTo(to);
	
		String mail_content = "Name:"+ fname +" " + lname + "\n" + "Subject:" + subject +"\n"+ "Content" + ":" + " " + content; 
		message.setSubject("Thank you for contacting us");	
		message.setText(mail_content);
		
		sender.send(message);
		m.addAttribute("contact_msg","Thank you for contacting us");
		return "homePage.jsp#contactus_section";
	}
	
	//send feedback through mail api
	@RequestMapping("feedback")
	public String feedback(@RequestParam("name") String name,
	@RequestParam("mail") String mail,@RequestParam("content") String content,
	Model m) 
	{
		String from = mail;
		String to = "mytutor.leran@gmail.com";
		 
		SimpleMailMessage message = new SimpleMailMessage();
		 
		message.setFrom(from);
		message.setTo(to);
	
		String mail_content = "Name:"+ name +" " + "\n" + "Subject:" + "Feedback" +"\n"+ "Content" + ":" + " " + content; 
		message.setSubject("Feedback From user and username is: "+name);	
		message.setText(mail_content);
		
		sender.send(message);
		m.addAttribute("feedback","Thank you for contacting us");
		
		return "homePage.jsp#contactus_section";
		
	}

	//send pass
    @RequestMapping("otp")
    public String sendOtp(@RequestParam("email") String email,Model m) 
    {
    	recovery_mail = email;
    	
    	Log_RegModel lr;
    	lr = ld.findByEmail(email);
    	if(lr!=null) {
    	String from = "mytutor.onlineportal@gmail.com";
		String to = email;
	
		//Generate otp
	
		int otp = (int) (Math.random()*9000)+1000;
		
		otp_global =otp;
		SimpleMailMessage message = new SimpleMailMessage();
		 
		message.setFrom(from);
		message.setTo(to);
	
		String mail_content = "Name:"+ lr.getName() +" "  + "\n" +  "YOUR OTP IS" +"\n"+ otp; 
		message.setSubject("Thank you for contacting us");	
		message.setText(mail_content);
		
		sender.send(message);
		m.addAttribute("msg","Otp was successfully sent in your mail");
		return "otp.jsp";
    	}
    	
    	else
    	{
    	m.addAttribute("msg","This email is not registerd ");
    	return "login.jsp";
    	}
    
    }

    //check otp
    @PostMapping("check_otp")
    public String check_otp(@RequestParam("otp") String otp,Model m)

    {
    	
    	int otp_cov = Integer.parseInt(otp);
    	if(otp_cov==otp_global) 
    	{
    		
    		m.addAttribute("msg","your otp is correct");
    		return "new_password.jsp";
    	}
    	else 
    	{
    		m.addAttribute("msg","your otp is incorrect");
    		return "otp.jsp";
    	}
  
	
    }


    @PostMapping("change_pass")
    public String changePassword(@RequestParam("pass") String newpass,Model m) 
   {
	   Log_RegModel lr;
	   try {
	   lr = ld.findByEmail(recovery_mail);
	 
	   //lr.setPass(bcrypt.encode(newpass));
	   lr.setPass(newpass);
	  
	   ld.save(lr);
	   }
	   catch(Exception e) {
		   System.out.println("User is not found");
	   }
	   m.addAttribute("msg","Password changed successfully");
	   return "login.jsp";
   }

    @RequestMapping("search")
    public String search(@RequestParam("search") String search) {
    	
    	return search;
    }

}
