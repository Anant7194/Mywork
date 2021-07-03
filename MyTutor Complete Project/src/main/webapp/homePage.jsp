<!DOCTYPE html>
<html>
<head>
<%

if(session.getAttribute("name")==null){
	response.sendRedirect("logout.jsp");
}

%>



	<link rel="shortcut icon" type="png" href="images/home/icon.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Comaptible" content="IE=edge">
	<title>Mytutor</title>
	<meta name="desciption" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="style.css">
		<script type="text/javascript" src="script.js"></script>
	
  
</head>

<body>
<!-- Navigation Bar -->
	<header id="header">
		<nav>
			<div class="logo"><img src="images/home/Mytutor.png" alt="logo"></div>
			<div class="list"><ul>
				<li><a class="active" href="homePage.jsp">Home</a></li>
				<li><a href="#team_section">Team</a></li>
				<li><a href="#services_section">Blogs</a></li>
				<li><a href="#contactus_section">Contact</a></li>
				<li><a href="cse.jsp">E Books</a></li>
				<li><a href="#about_section">About</a></li>
				
				
			</ul></div>
			
		
			<div class="srch">
				<a href="http://www.google.com"><img src="images/home/download.png" alt="search" ></a>
				
				<input id="search"  type="text"  placeholder="Search here..."></div>
			
				<div class="profile">
					<a class="get-start" href="profile?name=${name}"><%=session.getAttribute("name")%></a></div>
				
			<div class="logout">
			<a class="get-started" href="logout.jsp">Sign Out</a></div>
			</nav>

		
		<div class="mar">
		<marquee style="background: linear-gradient(45deg,#ffbc00,#ff0058);opacity: 1; margin-top: 50px;" direction="left" onmouseover="this.stop()" onmouseout="this.start()" scrollamount="15"><div 
		class="heady">Education is the passport to the future, for tomorrow belongs to those who prepare for it today.Your attitude, not your aptitude, will determine your altitude.If you think education is expensive, try ignorance.The only person who is educated is the one who has learned how to learn and change.</div></marquee>
	    </div>
		
		<div class="head-container">
			<div class="inner">
			<form action="youtube_link"  method="post" class="form">
				<label>Languages</label><select name="subject" class="button" onchange='this.form.submit()'>
					<tr><option value="Data Structures and Algorithms" class="box">Choose</option>
					<option value="Python" class="box">Python</option>
					<option value="C" class="box">C</option>
					<option value="Java" class="box">Java</option>
					<option value="Cpp" class="box">C++</option></tr>
				</select> 
		
				<noscript><input type="submit" value="Submit"></noscript>	</form>
			<form action="youtube_link"  method="post"  class="form">
				<label>Tools and technologies</label> <select name="subject" class="button" onchange='this.form.submit()'>
					<option value="Data Structures and Algorithms" class="box">Choose</option>
					<option value="Git" class="box">Git</option>
					<option value="Docker" class="box">Docker</option>
					<option value="Ansible" class="box">Ansible</option>
					<option value="Kubernetes" class="box">Kuberenetes</option>
				</select> 
			
				<noscript><input type="submit" value="Submit"></noscript></form>
			<form action="youtube_link"  method="post"  class="form">
				<label>Development</label> <select name="subject" class="button" onchange='this.form.submit()'>
					<option value="Data Structures and Algorithms" class="box">Choose</option>
					<option value="Flutter" class="box">Flutter</option>
					<option value="HTML" class="box">HTML & CSS</option>
					<option value="Bootstrap" class="box">Bootstrap</option>
					<option value="javascript" class="box">JavaScript</option>
				</select> 
				<noscript><input type="submit" value="Submit"></noscript>
			</form>
			<form action="youtube_link"  method="post"  class="form">
				<label>Core Subjects</label> <select name="subject" class="button" onchange='this.form.submit()'>
					<option value="DS" class="box">Choose</option>
					<option value="DS" class="box">Data Structures and
						Algorithms</option>
					<option value="OS" class="box">Operating System</option>
					<option value="Applied physics" class="box">Applied
						physics</option>
					<option value="Maths12" class="box">M-1 AND M-2</option>
					<option value="Oops" class="box">OOPs</option>
					<option value="DC" class="box">Data communication</option>
					<option value="Computer Networks" class="box">Computer
						Networks</option>
					<option value="Discrate Structure" class="box">Discrate
						Structure</option>
					
					<option value="ADA" class="box">Analysis & Design Algo</option>
					<option value="Os" class="box">Operating System</option>
					<option value="Computer Networks" class="box">Computer
						Networks</option>
					<option value="ADA" class="box">Alogrithms Designs</option>
				</select> 
				<noscript><input type="submit" value="Submit"></noscript>
			</form>
				</br>	
		</div>
			  </div>
		<div class="youtube">
	        <iframe class="svg-image"  src="${ylink}?autoplay=1&mute=1">      
				</iframe>
			</div>
	</header>

<<!-- TEAM -->
	<div class="diffSection" id="team_section" >
		<center><p style="font-size: 50px; padding-top: 100px; padding-bottom: 60px;color: orangered;">Team</p></center>
		<div class="totalcard">
			<div class="card">
				<div class="card-inner">
				<center><img src="images/home/anant.png"></center>
				<center><div class="card-title">Anant Jain</div>
				<div id="detail">
					<p>Studying Computer Science in Shri Vaishnav Vidhyapeeth Vishwavidhyalaya . Third year under graduate student of B Tech </p>
					<div class="duty"></div>
					<a href="https://www.linkedin.com/in/anant-jain-4b1947174" target="_blank"><button class="btn">Follow +</button></a>
				</div>
			
				</center>
			</div>
			</div>
			<div class="card">
				<div class="card-inner">
				<center><img src="images/home/dj.png"></center>
				<center><div class="card-title">Dwijesh Mishra</div>
				<div id="detail">
					<p>Studying Computer Science in Shri Vaishnav Vidhyapeeth Vishwavidhyalaya . Third year under graduate student of B Tech </p>
					<div class="duty"></div>
					<a href="https://www.linkedin.com/in/dwijesh-mishra-16850a198" target="_blank"><button class="btn">Follow +</button></a>
				</div>
				</center>
			</div>
			</div>
			<div class="card">
				<div class="card-inner">
				<center><img src="images/home/pranjal.png"></center>
				<center><div class="card-title">Pranjal Gupta</div>
				<div id="detail">
					<p>Studying Computer Science in Shri Vaishnav Vidhyapeeth Vishwavidhyalaya . Third year under graduate student of B Tech </p>
					<div class="duty"></div>
					<a href="https://www.linkedin.com/in/pranjal-gupta-16b19817a" target="_blank"><button class="btn">Follow +</button></a>
				</div>
			
				</center>
			</div>
			</div>
			<div class="card">
				<div class="card-inner">
				<center><img src="images/home/priyansh.png"></center>
				<center><div class="card-title">Priyansh Neema</div>
				<div id="detail">
					<p>Studying Computer Science in Shri Vaishnav Vidhyapeeth Vishwavidhyalaya . Third year under graduate student of B Tech </p>
					<div class="duty"></div>
					<a href="https://www.linkedin.com/in/priyansh-neema-3899a0175" target="_blank"><button class="btn">Follow +</button></a>
				</div>
		
				</center>
			</div>
			</div>

<!-- SERVICES -->
<div class="service-swipe">
	<div class="diffSection" id="services_section">
	<center><p style="font-size: 50px; padding: 200px; padding-bottom: 10px; color: #fff;margin-top: -15%;">Blogs</p></center>
	</div>
	<div class="s-card"><p><a href="blog1.jsp"><img src ="images/home/language.png"  height="205"></p></div></a>
	<div class="s-card"><p><a href ="blog2.jsp"><img src="images/home/dsa.jpg"  height="205"></p></div></a>
	<div class="s-card"><p><a href ="blog3.jsp"><img src="images/home/web_develop.jpg"  height="205"></p></div></a>
	<div class="s-card"><p><a href ="blog4.jsp"><img src="images/home/database.jpg"  height="205"></p></div></a>	
</div>



<!-- CONTACT US -->
	<div class="diffSection" id="contactus_section">
		<center><p style="font-size: 50px; padding: 100px; color: orangered">Contact Us</p></center>
		<div class="csec"></div>
		<div class="back-contact">
			<div class="cc">
			<form action="contact" method="post" >
				<label ><h2><font color="green">${contact_msg}</font></h2></label>
				<br>
			<br>
				<label>First Name <span class="imp">*</span></label><label style="margin-left: 185px">Last Name <span class="imp">*</span></label><br>
				<center>
				<input type="text" name="fname" style="margin-right: 10px; width: 175px" required="required"><input type="text" name="lname" style="width: 175px" required="required"><br>
				</center>
				<label>Email <span class="imp" id="eid">*</span></label><br>
				<input type="email" name="mail_id" style="width: 100%" required="required"><br>
				<label>Message <span class="imp">*</span></label><br>
				<input type="text" name="subject" style="width: 100%" required="required"><br>
				<label>Additional Details</label><br>
				<textarea name="content"></textarea><br>
				<input type="submit" id="csubmit"></input>
			</form>
			</div>
		</div>
	</div>



<!-- FEEDBACK -->
	<div class="title2" id="feedBACK">
		<span style="font-size: 50px;
		font-weight: 500;
		color: orangered;
		margin-left: -28%;">Give Feedback</span>
	</div>

	<div class="feedbox">
		<div class="feed">
			<form action="feedback">
				<label><h2><font color="">${feedback}</h2></label><br>
				<br>
				<label>Your Name</label><br>
				<input type="text" name="name" class="fname" required="required"><br>
				<label>Email</label><br>
				<input type="email" name="mail" required="required"><br>
				<label>Additional Details</label><br>
				<textarea name="content"></textarea><br>
				<input type="submit" id="csubmit" value="Send Message"></input>
			</form>
		</div>
	</div>
	
<!-- About Section -->
<div class="about">
	<div class="diffSection" id="about_section">
		<center><p style="font-size: 50px; padding: 100px; padding-bottom: 10px;margin-top:4%; color: orangered;">About Us</p></center>
	</div>
	<div class="rev-container">
<div class="about-text"><p align="justify" style ="font-size:140%">
	</br>	</br>	
 MyTutor originated from the idea that there exists a class of readers who respond better to online content and prefer to learn new skills at their own pace from the comforts of 
their drawing rooms.
 The journey elated by the response it generated, we worked our way to adding fresh tutorials to our repository which now proudly flaunts a wealth of tutorials
 and allied articles on topics ranging from programming languages to web designing to academics and much more. 
Our mission is to deliver Simply Easy Learning with clear, crisp, and to-the-point content on a wide range of technical subjects without any preconditions and impediments.
Our content and resources are freely available and we prefer to keep it that way to encourage our readers acquire as many skills as they would like to.</p>
</div>
<div class="about-image"><img src="images/home/library.png"></div>
				
		
		</div>

<!-- Sliding Information -->
<a href="quiz.jsp" class="fab"> ? </a>
<a href="project.jsp"  class="fab1"><img src="images/home/projects.png"></a>
<center><p class="found" style="font-size: 50px; padding: 100px; padding-bottom: 10px;margin-top:4%; color: orangered;">Find Us</p></center>

<!-- FOOTER -->
	<footer>
		<div class="footer-container">
			<div class="left-col">
		<div class="social-media">
				<a href="https://www.instagram.com/mytutor.onlineportal/"><img src="images/home\insta.png"></a>
					<!--a href="#"><img src="images/home\ytube.png"></a-->
					<a href="https://www.linkedin.com/in/my-tutor-1600b8209/"><img src="images/home/linkedin.png"></a>
				</div></br></br>
				<p class="rights-text">Copyright © 2021 </br></br>Created By</br> Anant Jain , Dwijesh Mishra</br>Pranjal Gupta and Priyansh Neema. 
				</br></br><img src="images/home/location.png">Shri Vaishnav Vidhyapeeth Vishwavidhyalaya</br>Indore, Madhya Pradesh 453111
			</br></br><img src="images/home/phone.png"> +91-1234-567-890</br></br><img src="images/home/mail.png">&nbsp; mytutor231@gmail.com</p>
			</div>
		
		</div>
	</footer>
</body>
</html>
