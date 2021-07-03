<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="project.css">
    <title>Projects</title>
  </head>
  <body>
  
  <!-- Navigation Bar -->
	<header id="header">
    <nav>
			<div class="logo"><img src="images/home/Mytutor.png" alt="logo"></div>
			<div class = "home"><a href="homePage.jsp"><img src="images/home/homelogo.png"></a></div>
			
				<div class="para">
				You are signed in as
				</div>
				<div class="profile">
						<a class="get-start" href="profile?name=${name}"><%=session.getAttribute("name")%></a></div>
				<div class="logout">
					<a class="get-started" href="login.html">Sign Out</a></div>
					</nav>

		
		<div class="mar">
		<marquee style="background: linear-gradient(45deg,#ffbc00,#ff0058);opacity: 1; margin-top: 50px;" direction="left" onmouseover="this.stop()" 
		onmouseout="this.start()" scrollamount="15"><div class="heady">Education is the passport to the future, for tomorrow belongs to those who prepare for it today.Your attitude, not your aptitude, will determine your altitude.If you think education is expensive, try ignorance.The only person who is educated is the one who has learned how to learn and change.</div></marquee>
	    </div>
		</header>
    <div class="line">
    <p>Scroll to see Projects With Source Code</p>
  </div>
  <div class="project-image">
    <img src="/images/Projects/project.png">
  </div>
  </br>
	
    <a style="text-decoration:none" class="links" href="https://github.com/topics/c-projects">
    <div class="box" style="margin-top: 14%;"><center><span>C Programming Projects</span></center></div></a>
  
    <a style="text-decoration:none" class="links" href="https://hackr.io/blog/cpp-projects"> 
    <div class="box" style="margin-top: 28%;"><center><span>C++ Programming Projects</span></center></div></a>
   
    <a style="text-decoration:none" class="links" href="https://www.upgrad.com/blog/java-project-ideas-topics-for-beginners/">
    <div class="box" style="margin-top: 42%;"><center><span>Java Programming Projects</span></center></div></a>
   
    <a style="text-decoration:none" class="links" href="https://github.com/amark720/Python_Projects">
    <div class="box" style="margin-top: 56%;"><center><span>Python Programming Projects</span></center></div></a>
   
    <a style="text-decoration:none" class="links" href="https://github.com/amark720/Machine-Learning-Projects">
    <div class="box" style="margin-top: 70%;"><center><span>Machine Learning Programming Projects</span></center></div></a>
  
    <a style="text-decoration:none" class="links" href="https://github.com/amark720/Data-Science-Projects">
    <div class="box" style="margin-top: 0%;"><center><span>Data Science Projects</span></center></div></a>

    
    <script src="script.js"></script>
  </body>
</html>