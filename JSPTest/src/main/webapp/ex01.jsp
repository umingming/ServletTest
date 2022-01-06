<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Calendar now = Calendar.getInstance();
	Random rnd = new Random();
	int dan = rnd.nextInt(8) + 2;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스클립틀릿</h1>
	
	현재 시간 : <%= String.format("%tT", now) %>
	
	<h1>구구단</h1>
	
	<% for (int i=1; i<=9; i++) { %>
	<div><%= dan %> * <%= i %> = <%= dan * i %></div>
	<% } %>
	
	
</body>
</html>