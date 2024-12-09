<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "dbconn.jsp" %>
<%--
<%@ page import="exmple.Book" %>
<%@ page import="exmple.BookRepository" %>
--%>
<%
request.setCharacterEncoding("UTF-8");

String bookId = request.getParameter("bookId");
String name = request.getParameter("name");
String author = request.getParameter("author");
String unitPrice = request.getParameter("unitPrice");

int price = Integer.valueOf(unitPrice);

String sql = "insert into book values(?, ?, ?, ?)";

PreparedStatement pstmt = null;
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, bookId);
pstmt.setString(2, name);
pstmt.setInt(3, price);
pstmt.setString(4, author);
pstmt.executeUpdate();

if(pstmt != null) pstmt.close();
if(conn != null) conn.close();

response.sendRedirect("books.jsp");
%>

<%--
BookRepository dao = BookRepository.getInstance();

Book newBook = new Book();
newBook.setBookId(bookId);
newBook.setName(name);
newBook.setAuthor(author);
newBook.setUnitPrice(price);

dao.addBook(newBook);
--%>