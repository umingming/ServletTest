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
   	
   	<h2>보내기X, 가져오기O + 다중 데이터(1컬럼, n행)</h2>
   	<div class="well txt3">
   	</div>
   	<input type="button" value="데이터 가져오기" id="btn3">
   	
   	<h2>보내기O, 가져오기O + 다중 데이터(N컬럼, 1행)</h2>
   	<div class="well txt4">
   	</div>
   	<input type="button" value="데이터 가져오기" id="btn4">

   	<h2>보내기O, 가져오기O + 다중 데이터(N컬럼, 1행)</h2>
   	<div class="well txt5">
   	</div>
   	<input type="button" value="데이터 가져오기" id="btn5">

   	<h2>보내기O, 가져오기O + 다중 데이터(N컬럼, 1행)</h2>
   	<div class="well txt6">
   	</div>
   	<form id="form1">
   		<div><input type="text" name="id" placeholder="아이디"></div>
   		<div><input type="text" name="pw" placeholder="암호"></div>
   		<div><input type="text" name="name" placeholder="이름"></div>
   	</form>
   	<input type="button" value="데이터 보내기" id="btn6">
   	
   	
   	
   </div>
   
   <script>
   
   $('#btn6').click(() => {
	   alert($('#form1').serialize());
	   return;
	  $.ajax({
		  type: 'POST', //하나의 서블릿에 두 개의 메소드 만들지 않음.
		  url: '/jsp/ajax/ex03data.do',
		  data: $('#form1').serialize();
		  dataType: 'json',
		  success: function(result) {
			$('.txt6').text(result.result);  
		  }
	  }); 
   });
   
   
   $('#btn5').click(() => {
	  $.ajax({
		  type: 'GET',
		  url: '/jsp/ajax/ex03data.do',
		  dataType: 'json',
		  success: function(list) {
			  list.forEach((item) => {
			  	$('.txt5').append(`<div>\${item.id}</div>`);
			  	$('.txt5').append(`<div>\${item.pw}</div>`);
			  	$('.txt5').append(`<div>\${item.name}</div>`);
			  	$('.txt5').append(`<div>\${item.lv}</div>`);
			  })
		  }
	  }); 
   });
   
   $('#btn4').click(() => {
	  $.ajax({
		  type: 'GET',
		  url: '/jsp/ajax/ex03data.do',
		  data: 'id=hong',
		  dataType: 'json',
		  success: function(dto) {
			  	$('.txt4').append(`<div>\${dto.id}</div>`);
			  	$('.txt4').append(`<div>\${dto.pw}</div>`);
			  	$('.txt4').append(`<div>\${dto.name}</div>`);
			  	$('.txt4').append(`<div>\${dto.lv}</div>`);
		  }
	  }); 
   });
   
   $('#btn3').click(() => {
	  $.ajax({
		  type: 'GET',
		  url: '/jsp/ajax/ex03data.do',
		  dataType: 'json',
		  success: function(result) {
			  result.forEach((item) => {
				 $('.txt3').append('<div>'+item.subject+'<div>'); 
			  });
		  }
	  }); 
   });
   
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