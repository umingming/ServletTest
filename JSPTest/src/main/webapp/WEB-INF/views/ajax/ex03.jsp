<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
   	<h2>보내기X, 가져오기O + 단일 데이터(원자값)</h2>
   	<div class="well txt1">
   	</div>
   	<input type="button" value="데이터 가져오기" id="btn1">
   	
   	<h2>보내기X, 가져오기O + 단일 데이터(원자값)</h2>
   	<div class="well txt2">
   	</div>
   	<input type="text" id="seq" class="form-control">
   	<input type="button" value="데이터 가져오기" id="btn2">
   </div>
   
   <script>
   
   $('#btn1').click(() => {
	  $.ajax({
		  type: 'GET',
		  url: '/jsp/ajax/ex03data.do',
		  success: function(result) {
			  $('.txt1').text('@'+result+'@');
		  }
	  }); 
   });
   
   $('#btn2').click(() => {
	  $.ajax({
		  type: 'GET',
		  url: '/jsp/ajax/ex03data.do',
		  data: 'seq=' + $('#seq').val(),
		  success: function(subject) {
			  $('.txt2').text(subject);
		  }
	  }); 
   });
   </script>
</body>
</html> 