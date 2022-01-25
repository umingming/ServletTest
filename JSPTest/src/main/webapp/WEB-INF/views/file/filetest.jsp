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
   	<form method="POST" action="/jsp/file/filetestok.do" enctype="multipart/form-data">
   		<div>
   			텍스트: <input type="text" name="txt">
   		</div>
   		<div>
   			첨부파일: <input type="file" name="attach">
   		</div>
   		<div>
   			<input type="submit" name="attach">
   		</div>
   	</form>
   </div>
   <script>
   
   </script>
</body>
</html>