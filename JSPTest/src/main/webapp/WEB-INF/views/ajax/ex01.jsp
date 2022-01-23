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
   	<h1 class="page-header">Ajax <small></small></h1>
   	<div class="well" id="txt1"></div>
   	<input type="button" value="버튼1" id="btn1" class="btn btn-default">
   </div>
   <script>
   	$('#btn1').click(() => {
   		$.ajax({
   			type: 'GET',
   			url: '/jsp/data/data.txt',
   			success: function(result){
   				$('#txt1').text(result);
   			}
   		});
   	});
   </script>
</body>
</html>