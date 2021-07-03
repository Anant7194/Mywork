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
				<div class="fpart"><img src="images/courses/data-course.jpg"></div>
				<a href="#data"><div class="spart">Courses <img src="images/courses/dropdown.png"></div></a>
			</div>
			<div class="dcard">
				<div class="fpart"><img src="images/courses/algo-course.jpg"></div>
				<a href="#algo"><div class="spart">Courses <img src="images/courses/dropdown.png"></div></a>
			</div>
			</div>
	</div>
	
	<!-- Blogs on DATA STRUCTURES Lectures -->

	<div class="title2" id="data">
		<span>Data Structures</span>
		<div class="shortdesc2">
			<p>Make your data structures concepts strong...</p>
		</div>
	</div>
	<center>
		<div class="ccardbox2">
			<div class="dcard2"><span class="tag" >1/8</span>
				<a href="images/courses/blogs/ds1.png"><div class="fpart2"><img src="images/courses/blogs/ds1.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >2/8</span>
				<a href="images/courses/blogs/ds2.png"><div class="fpart2"><img src="images/courses/blogs/ds2.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >3/8</span>
				<a href="images/courses/blogs/ds3.png"><div class="fpart2"><img src="images/courses/blogs/ds3.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >4/8</span>
				<a href="images/courses/blogs/ds4.png"><div class="fpart2"><img src="images/courses/blogs/ds4.png">
			</div></a>
			</div>
		
			<div class="dcard2"><span class="tag" >5/8</span>
				<a href="images/courses/blogs/ds5.png"><div class="fpart2"><img src="images/courses/blogs/ds5.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >6/8</span>
				<a href="images/courses/blogs/ds6.png"><div class="fpart2"><img src="images/courses/blogs/ds6.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >7/8</span>
				<a href="images/courses/blogs/ds7.png"><div class="fpart2"><img src="images/courses/blogs/ds7.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >8/8</span>
				<a href="images/courses/blogs/ds8.png"><div class="fpart2"><img src="images/courses/blogs/ds8.png">
			</div></a>
			</div>
		</div>
	</center>
<!-- Blogs on ALGORITHM Lectures -->

	<div class="title2" id="algo">
		<span>Algorithm</span>
		<div class="shortdesc2">
			<p>Make your algorithm concepts clear...</p>
		</div>
	</div>
	<center>
		<div class="ccardbox2">
			<div class="dcard2"><span class="tag" >1/8</span>
				<a href="images/courses/blogs/algo1.png"><div class="fpart2"><img src="images/courses/blogs/algo1.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >2/8</span>
				<a href="images/courses/blogs/algo2.png"><div class="fpart2"><img src="images/courses/blogs/algo2.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >3/8</span>
				<a href="images/courses/blogs/algo3.png"><div class="fpart2"><img src="images/courses/blogs/algo3.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >4/8</span>
				<a href="images/courses/blogs/algo4.png"><div class="fpart2"><img src="images/courses/blogs/algo4.png">
			</div></a>
			</div>
		
			<div class="dcard2"><span class="tag" >5/8</span>
				<a href="images/courses/blogs/algo5.png"><div class="fpart2"><img src="images/courses/blogs/algo5.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >6/8</span>
				<a href="images/courses/blogs/algo6.png"><div class="fpart2"><img src="images/courses/blogs/algo6.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >7/8</span>
				<a href="images/courses/blogs/algo7.png"><div class="fpart2"><img src="images/courses/blogs/algo7.png">
			</div></a>
			</div>
			<div class="dcard2"><span class="tag" >8/8</span>
				<a href="images/courses/blogs/algo8.png"><div class="fpart2"><img src="images/courses/blogs/algo8.png">
			</div></a>
			</div>
		</div>
	</center>
	</br>
	</br>
</body>
</html>