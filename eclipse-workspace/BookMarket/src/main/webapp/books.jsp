<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%--
<%@ page import="java.util.ArrayList" %>
<%@ page import="exmple.Book" %>
<%@ page import="exmple.BookRepository" %>
<jsp:useBean id="bookDAO" class="exmple.BookRepository" scope="session"/>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
   <%@ include file="menu.jsp" %>
   <div class="book_list">
      <h1>도서 목록 (BookList)</h1>
   </div>
   
   <%@ include file="dbconn.jsp" %>

<%-- 

   BookRepository dao = BookRepository.getInstance();
   ArrayList<Book> listOfBooks = dao.getAllBooks();
   
   for(int i=0; i<listOfBooks.size(); i++){
      Book book = listOfBooks.get(i);
   
--%>
   <%
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = "select * from book";
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      while(rs.next()){
   %>
   
    <h3><b><%= rs.getString("b_name") %></b></h3>
   <%=rs.getString("b_author") %> |
   <%=rs.getString("b_unitPrice") %>원 |
   <a href="./book.jsp?id=<%=rs.getString("b_id") %>">상세 정보</a>
   </br></br>
   <%
   }
      if(rs != null) rs.close();
      if(pstmt != null) pstmt.close();
      if(conn != null) conn.close();
%>

<%@ include file = "footer.jsp" %>
</body>
</html>