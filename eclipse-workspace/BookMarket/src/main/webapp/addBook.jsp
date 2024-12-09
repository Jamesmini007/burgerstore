<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<div class="book_add">
	<h1>도서 등록</h1>
</div>

<form name="newBook" action="./processAddBook.jsp" method="post">
	<p><label>도서코드</label> <input type="text" name="bookId">
	<p><label>도서명</label> <input type="text" name="name">
	<p><label>저자</label> <input type="text" name="author">
	<p><label>가격</label> <input type="text" name="unitPrice">
	<p> <input type="submit" value="등록">
</form>

<%@ include file="footer.jsp" %>
</body>
</html>