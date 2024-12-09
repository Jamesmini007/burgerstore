<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.Date" %>

<html>
<head>
	<title>Welcome</title>
</head>
<body>
<header>
	<div class="header" style="display: inline;"> 
		<a href="./welcome.jsp">Home</a> 
	</div>
	<div class="header" style="display: inline;"> 
		<a href="./books.jsp">도서 목록</a> 
	</div>
	<div class="header" style="display: inline;"> 
		<a href="./addBook.jsp">도서 등록</a> 
	</div>
</header>

<hr>

	<%!
	String greeting = "도서 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	%>
	<div class="body">
	<center>
	<h1><%=greeting %></h1>
	<h3><%=tagline %></h3>
	<%
		Date day = new java.util.Date();
		String am_pm;
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		if(hour/12 == 0) {
			am_pm = "AM";
		}
		else {
			am_pm = "PM";
			hour = hour - 12;
		}
		String currentTime = hour + ":" + minute + ":" + second + " " + am_pm;
		out.println("현재 접속 시각 : " + currentTime + "/n");
	%>
	</center>
	</div>
	<br/>
	
</body>
</html>