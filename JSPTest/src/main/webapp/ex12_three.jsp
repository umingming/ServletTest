<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   	<h1 class="page-header">세번째 페이지<small></small></h1>
   		<%
   			int num1 = 100;
   			pageContext.setAttribute("num2", 200);
   			request.setAttribute("num3", 300);
   			session.setAttribute("num4", 400);
   		%>
   	<div style="border:1px solid black">
   		<%@ include file="inc/ex12_sub.jsp" %>
   </div>
   <script>
   
   </script>
</body>
</html>