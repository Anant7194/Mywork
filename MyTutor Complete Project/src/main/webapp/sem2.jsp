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
<tr><td>Mathematics-2</td><td><a href="https://drive.google.com/file/d/1OQrVuGPTq8lxSOEPRGuyYOfan2B08RgV/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Peripherals & Interfaces</td><td><a href="https://drive.google.com/file/d/11y7txVLNMuAJALooPR3897pVpfpwTShx/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>Data Structures & Algorithms</td><td><a href="https://drive.google.com/file/d/1x3WgkC4qMw7U-kkCBMEzn2wMHV03AfuW/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>OOPs</td><td><a href="https://drive.google.com/file/d/1wZxmgUC19rKsxkngZHrgBTCin6Urum1E/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
<tr><td>R-Hat Admin II</td><td><a href="https://drive.google.com/file/d/1wZxmgUC19rKsxkngZHrgBTCin6Urum1E/view?usp=sharing"><input type="button" value='Download' id='t1' class='B'></td></tr>
</table>
</form>
</div>
</div>

</body>
</html>