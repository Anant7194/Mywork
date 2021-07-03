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
<tr><td>DBMS</td><td><a href="https://drive.google.com/file/d/1guHOYqrQQlkIswYlQxn1s5HZA2uKG29l/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>System Programming</td><td><a href="https://drive.google.com/file/d/1OoF61mkepFxGhMV_rHA5XySddJFob7OA/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Operating System</td><td><a href="https://drive.google.com/file/d/1UpwSi-J45tXHUSkcxHpilttDkY1daV9a/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Advanced Java</td><td><a href="https://drive.google.com/file/d/1D4BvojVcJzl-38fKEErqROEgFTs76Mys/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Computer Networks</td><td><a href="https://drive.google.com/file/d/1GhAfQBx7nLjdg9RDnkogpEQenYSM8ZIM/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>