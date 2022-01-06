<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "홍길동";
	int age = 20;
	String color = "conflowerblue";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="inc/asset.jsp" %>
</head>
<body>
	<h1 style="color: <%= color %>;"><%= name%></h1>
	
	<%@ include file="inc/copyright.jsp" %>
	
</body>
</html>