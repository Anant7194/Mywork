<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%

if(session.isNew()){
	response.sendRedirect("logout.jsp");
}


if(session.getAttribute("name")==null){
	response.sendRedirect("logout.jsp");
}

%>

<head>
    <link rel="shortcut icon" type="png" href="images/home/icon.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Comaptible" content="IE=edge">
	<title>Computer Science</title>
	<meta name="desciption" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="semester.css">

</head>
<body>
<header id="header">
	<nav>
		<div class="logo"><img src="images/home/Mytutor.png" alt="logo"></div>
		<div class="semester"><a href="cse.jsp"><img src="images/semester/semester.png"></a></div>
		<div class = "home"><a href="homePage.jsp"><img src="images/home/homelogo.png"></a></div>
		
			<div class="para">
			You are signed in as
			</div>
			<div class="profile">
					<a class="get-start" href="profile?name=${name}"><%=session.getAttribute("name")%></a></div>
			<div class="logout">
				<a class="get-started" href="logout.jsp">Sign Out</a></div>
				</nav>
	<div class="mar">
		<marquee style="background: linear-gradient(45deg,#ffbc00,#ff0058);opacity: 1; margin-top: 50px;" direction="left" onmouseover="this.stop()" onmouseout="this.start()" scrollamount="15"><div class="heady">Education is the passport to the future, for tomorrow belongs to those who prepare for it today.Your attitude, not your aptitude, will determine your altitude.If you think education is expensive, try ignorance.The only person who is educated is the one who has learned how to learn and change</div></marquee>
	    </div>
<div class ="fontsi"><font size="7" color="maroon">DOWNLOAD YOUR PREFERRED BOOK</font></div>
<div class="outer">