<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" type="png" href="images/home/icon.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Comaptible" content="IE=edge">
	<title>Mytutor</title>
	<meta name="desciption" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="quizStyle.css">
		<script type="text/javascript" src="script1.js"></script>
	
  
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
					<a class="get-started" href="logout.jsp">Sign Out</a></div>
					</nav>
					<div class="mar">
						<marquee style="background: linear-gradient(45deg,#ffbc00,#ff0058);opacity: 1; margin-top: 50px;" direction="left" onmouseover="this.stop()" onmouseout="this.start()" scrollamount="15"><div class="heady">Education is the passport to the future, for tomorrow belongs to those who prepare for it today.Your attitude, not your aptitude, will determine your altitude.If you think education is expensive, try ignorance.The only person who is educated is the one who has learned how to learn and change.</div></marquee>
						</div>
		

<!-- MAIN Heading of Page -->
	<div class="title" id="title">
		<span>  It's Quiz Time </span>
		<div class="shortdesc"><br>
			<p>If you think education is expensive, try ignorance</p>
		</div>
		<button onclick="startquiz()">Start Now</button>
	</div>


<div class="panel" id="panel">
	
	<div class="left-side" id="left">
		<ul>
			<li onclick="quizt(5)">C/C++</li>
			<li onclick="quizt(6)">Java</li>
			<li onclick="quizt(7)">Python</li>
			<li onclick="quizt(9)">Data Structures</li>
			<li onclick="quizt(10)">Algorithm</li>
			<li onclick="quizt(11)">Interview Questions</li>
		</ul>
	</div>

	<div class="right-side" id="right">
		<div id="quiz-container">
			
			<div id="f1"><div class="quiz-frame main-frame"></div></div>

			<div id="f2"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSe3hXLPuiQGqj1n3IeeAzM8YLNpgJIIk_zfteoEdWka4X3wxQ/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>
			
			<div id="f3"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSeVTLsd_AqZGpbIMnZRm20OKrjjiYSirWBjfCHpWtAsMQU--g/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>
			
			<div id="f4"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSdjSKZhQp5jqqR34zD_uWMtgXr18F9pdK6YqcafLSP6J7VZjw/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>

			<div id="f5"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSe1xs1-41MAbLN7KkXrJwtGdbl5ydxe_vX_nmFRjf6c0wtYkA/viewform?embedded=true"  frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></iframe></div>
			
			<div id="f6"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSdHFDm_BakVxro_zJI78OF2OLJpXgDzzaAVMHD9hptWlXBSpA/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>
			
			<div id="f7"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSdgD7yFEJtqpkImDiLAaQ7w9VcsO688gr1V3Gl7FqwM5yXtWQ/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>

			<div id="f8"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSchDBnai_Aup7YFJQegg4z-qoB338p010VgZRxBYDT17xoRew/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>

			<div id="f9"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSfY5oIAz4R9Ty-LBpx7h4th6OJ0-RkrxIlLslRV4NjwwW8_uw/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>
			
			<div id="f10"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSflwS89sG7H98J9vFgFqJgsKaZ5gpq3yUlOiW3up7RQQ-qRnw/viewform?embedded=true" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe></div>

			<div id="f11"><iframe class="quiz-frame" src="https://docs.google.com/forms/d/e/1FAIpQLSe_aS8-CMNFdUzI1UE73zahC2bmMwJkmB6FJXPIeKbLIBqB4Q/viewform?embedded=true" frameborder="0" marginheiclass="quiz-frame" ght="0" marginwidth="0">Loading…</iframe></div>

		</div>
	</div>

</div>

	<script type="text/javascript" src="script.js"></script>
</body>
</html>