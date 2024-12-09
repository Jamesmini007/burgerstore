<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%--
<%@ page import="exmple.Book" %>
<%@ page import="exmple.BookRepository" %>
<jsp:useBean id="bookDAO" class="exmple.BookRepository" scope="session"></jsp:useBean>
 --%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<div class="book_info">
   <h1>도서 정보 (BookInfo)</h1>
</div>

<%@ include file = "dbconn.jsp" %>
<%
   String id = request.getParameter("id");
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = "select * from book where b_id='"+id+"'";
   pstmt = conn.prepareStatement(sql);
   rs = pstmt.executeQuery();
   while(rs.next()) {
%>

<div>
   <h3><b><%=rs.getString("b_name") %></b></h3>
    <p><b>도서코드 : </b> <%=rs.getString("b_id") %></p>
    <p><b>저자 : </b> <%=rs.getString("b_author") %></p>
    <h4><%=rs.getString("b_unitPrice") %>원</h4>
   <% } %>
   
   <p><button type="button" onclick="location.href='#'">도서 주문</button>
   <button type="button" onclick="location.href='./books.jsp'">도서 목록</button>
   
</div>

<%@ include file = "footer.jsp" %>
</body>
</html>