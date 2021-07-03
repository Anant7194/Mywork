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
<tr><td>Digital & Circuit Design</td><td><a href="https://drive.google.com/file/d/1MyN5rkonXgp-aeiClvoLFU0zql4c_mO_/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>C Programming</td><td><a href="https://drive.google.com/file/d/1iMYLrbjqofF2UZdo9AZ5xZvXwPuRLHjz/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Mathematics-1</td><td><a href="https://drive.google.com/file/d/1gnwjrWULs1lOQ18X-XEieCiclqCAWZxI/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Applied Physics</td><td><a href="https://drive.google.com/file/d/1sSKoLzfHLl5Qp89NpayCCtFvMLzUPOFH/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>R-Hat Admin I</td><td><a href="https://drive.google.com/file/d/1sSKoLzfHLl5Qp89NpayCCtFvMLzUPOFH/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>

</form>
</div>
</div>
</body>
</html>