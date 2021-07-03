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
<tr><td>Theory of Computation</td><td><a href="https://drive.google.com/file/d/1KXZ1Qun9qT9Y2pF8ALkjKVUGEvXbyhgc/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Data Science</td><td><a href="https://drive.google.com/file/d/1pGpf8OMX95nbtJfP3Mj_1lhl-AKYAXdd/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Blockchain</td><td><a href="https://drive.google.com/file/d/1rCkz9gsdXG9TOCjTX5-2pXnBHxAAfhZS/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Software testing</td><td><a href="https://drive.google.com/file/d/1Nbz8Nwl-4fx6T2ccG-Ih354C5q7qd6K6/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Cyber Security</td><td><a href="https://drive.google.com/file/d/1kI2t97igaB1vJy9a8giJaEYx1VaQlRsq/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>