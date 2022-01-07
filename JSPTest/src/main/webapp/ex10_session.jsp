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
   	<h1 class="page-header"> <small></small></h1>
   	<%
   		int a = 1;
   		a = a + 1;
   		
   		if(session.getAttribute("count") == null ){
   		session.setAttribute("count", 1);
   		} else {
   		session.setAttribute("count", (int)session.getAttribute("count")+1);
   		}
   	%>
   	<div>count: <%= a %></div>
   	<div>count: <%= session.getAttribute("count") %></div>
   	
   </div>
   <script>
   
   </script>
</body>
</html>