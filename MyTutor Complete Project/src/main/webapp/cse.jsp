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
<tr><td><a href="sem1.jsp"><input type="Button" value='Semester 1' id='t1' class='B'></a></td>
<td><a href="sem2.jsp"><input type="Button" value='Semester 2' id='t1' class='B'></a></td></tr>
<tr><td><a href="sem3.jsp"><input type="Button" value='Semester 3' id='t1' class='B'></a></td>
<td><a href="sem4.jsp"><input type="Button" value='Semester 4' id='t1' class='B'></a></td></tr>
<tr><td><a href="sem5.jsp"><input type="Button" value='Semester 5' id='t1' class='B'></a></td>
<td><a href="sem6.jsp"><input type="Button" value='Semester 6' id='t1' class='B'></a></td></tr>
<td><a href="sem7.jsp"><input type="Button" value='Semester 7' id='t1' class='B'></a></td>
<td><a href="sem8."><input type="Button" value='Semester 8' id='t1' class='B'></a></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>