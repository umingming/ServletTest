<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 10;
	pageContext.setAttribute("ab",20);
	request.setAttribute("c", 30);
	session.setAttribute("d", 40);
	application.setAttribute("e", 50);
	
	//pageContext.forward("ex12_two.jsp");
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
   </div>
   <script>
   
   </script>
</body>
</html>