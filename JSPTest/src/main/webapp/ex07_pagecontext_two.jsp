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
   	<h1 class="page-header"> 두번째 페이지 <small></small></h1>
   	a
   	<%-- <div>a: <%= a %></div> --%>
   	<div>a: <%= request.getAttribute("a") %></div>
   </div>
   <script>
   
   </script>
</body>
</html>