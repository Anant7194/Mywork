<jsp:include page="sem_header_page.jsp"></jsp:include>
	<div class= "inner">
<%

if(session.getAttribute("name")==null)
{
	response.sendRedirect("logout.jsp");
}

%>
<form>
<table>
<tr><td>Discrete Structure</td><td><a href="https://drive.google.com/file/d/1ul1ZAv3SV36pihOUSCqBgb5LbWNUD_98/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Data Communication</td><td><a href="https://drive.google.com/file/d/1GIOlk8alXFMj8-DCXSX92cIHmHDW-GG1/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Introduction to Java</td><td><a href="https://drive.google.com/file/d/1YmQ0SHALCAWPGuZLkQ0FHs1M5Qism_i6/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Web Development</td><td><a href="https://drive.google.com/file/d/1rXBoj2u1JrJZtAGj5jCntn0xVeez2rG7/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Analysis & Design Algorithm</td><td><a href="https://drive.google.com/file/d/1s5z19siImLRAaLkeKGC8nbcSpCWvYxUI/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>