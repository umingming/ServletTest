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
   	<h1 class="page-header">구구단 <small>outX</small></h1>
   	<%
   		int dan = 5;
   	%>
   	<%  for (int i=1; i<9; i++) {%>
   	<div><%= dan %> * <%= i %> = <%= dan*i %></div>
   	<% } %>
   	<h1 class="page-header">구구단 <small>outO</small></h1>
   	<%
   		for (int i=1; i<=9; i++){
   			out.print(String.format("<div>%d * %d = %d </div>", dan, i, dan*i));
   		}
   	%>
   	
   	
   	<hr>
   	
   	
   	<div><%= session.getAttribute("num") %></div>
   </div>
   <script>
   
   </script>
</body>
</html>