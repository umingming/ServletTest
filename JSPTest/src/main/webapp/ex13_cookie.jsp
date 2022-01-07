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
   	
   	<input type="button" value="쿠키에 데이터 저장하기" id="btn1">
   	<input type="button" value="쿠키에 저장된 데이터 가져오기" id="btn2">
   </div>
   <script>
   
   	$('#btn1').click(function(){
   		document.cookie = "hong";
   	});
   	$('#btn2').click(function(){
   		console.log(document.cookie);
   	});
   	
   	
   </script>
</body>
</html>