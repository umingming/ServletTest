<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   	<h1 class="page-header">Ajax <small></small></h1>
   	<div class="well" id="txt1">${count}</div>
   	<input type="button" value="게시물 수 가져오기" id="btn1" class="btn btn-default">
   </div>
   <script>
   		$('#btn1').click(()=>{
   			location.href = '/jsp/ajax/ex02aok.do';
   		})
   </script>
</body>
</html>