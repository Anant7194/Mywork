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
<tr><td>Artificial Intelligence</td><td><a href="https://drive.google.com/file/d/1eJJ-pPV4_nUH32hA2wJw9AlKE6BaHHtE/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>SEPM</td><td><a href="https://drive.google.com/file/d/1sL86_D5xgXMwb7-6wzTNKLc32FkfNG7i/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>COA</td><td><a href="https://drive.google.com/file/d/1yXOsb1fu4CeL0TeCiDnsQVML789s42Ri/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Cloud Computing</td><td><a href="https://drive.google.com/file/d/1yXZ8xx2c1Gkp7gkl_lWKAFtbRLkC3xZD/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Python</td><td><a href="https://drive.google.com/file/d/1WmvgogV5dEBolLlVMbNs8yHPciRS_ldN/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>