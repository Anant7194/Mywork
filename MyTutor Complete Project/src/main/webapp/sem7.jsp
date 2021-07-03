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
<tr><td>Compiler Design</td><td><a href="https://drive.google.com/file/d/1gVFKEcvb-fcOal1F8Ry1zjcA6WLQnE0z/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Soft Computing</td><td><a href="https://drive.google.com/file/d/1W-ZiVVn0eOSEv-pcisDu04w8yOVuwplR/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Virtual Reality</td><td><a href="https://drive.google.com/file/d/1RT_niRZsGRTXS6DpPooiaMe-tk60Qbq6/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Quantum Computing</td><td><a href="https://drive.google.com/file/d/18GdAkYGE_bkmSDz8TfBT3DJIy4jo1dyh/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Computer Graphics & Multimedia</td><td><a href="https://drive.google.com/file/d/1gWdvIdyMu7TPJqxyuDf7mxiKtWenp_qj/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>