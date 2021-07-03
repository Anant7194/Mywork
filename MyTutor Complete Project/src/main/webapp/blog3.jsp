<jsp:include page="blog_header.jsp"></jsp:include>
<%

if(session.getAttribute("name")==null)
{
	response.sendRedirect("logout.jsp");
}

%>
		
		</header>
		<div class="inbt">
		Accelerate your career with Computer Science programs
	    </div>
        
	<div class="ccard">
	<center>
		<div class="ccardbox">
			<div class="dcard">
				<div class="fpart"><img src="images/courses/web-course.jpg"></div>
				<a href="#html_css"><div class="spart">Courses <img src="images/courses/dropdown.png"></div></a>
			</div>		
			
			</div>
	</div>
	
	<!--  on HTML and CSS Lectures -->

	<div class="title2" id="html_css">
		<span>Start Programming with HTML and CSS</span>
		<div class="shortdesc2">
			<p>Show your creativity and uniqueness</p>
		</div>
	</div>
	<center>
		<div class="ccardbox2">
			<div class="dcard2"><span class="tag" >1/8</span>
				<a href="images/courses/blogs/web1.png"><div class="fpart2"><img src="images/courses/blogs/web1.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >2/8</span>
				<a href="images/courses/blogs/web2.png"><div class="fpart2"><img src="images/courses/blogs/web2.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >3/8</span>
				<a href="images/courses/blogs/web3.png"><div class="fpart2"><img src="images/courses/blogs/web3.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >4/8</span>
				<a href="images/courses/blogs/web4.png"><div class="fpart2"><img src="images/courses/blogs/web4.png">
			</div></a>
			</div>
		
			<div class="dcard2"><span class="tag" >5/8</span>
				<a href="images/courses/blogs/web5.png"><div class="fpart2"><img src="images/courses/blogs/web5.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >6/8</span>
				<a href="images/courses/blogs/web6.png"><div class="fpart2"><img src="images/courses/blogs/web6.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >7/8</span>
				<a href="images/courses/blogs/web7.png"><div class="fpart2"><img src="images/courses/blogs/web7.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >8/8</span>
				<a href="images/courses/blogs/web8.png"><div class="fpart2"><img src="images/courses/blogs/web8.png">
			</div></a>
			</div>
		</div>
	</center>
	</br>
	</br>
</body>
</html>