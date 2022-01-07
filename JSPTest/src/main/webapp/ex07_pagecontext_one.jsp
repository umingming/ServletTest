<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 10;
	request.setAttribute("a", a);
	pageContext.forward("ex07_pagecontext_two.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
   
   <div class="container">
   	<h1 class="page-header"> <small></small></h1>
   	a
   	<div>a: <%= a %></div>
	<a href="ex07_pagecontext_two.jsp">두번째 페이지</a>   	
   </div>
   <script>
   
   </script>
</body>
</html>