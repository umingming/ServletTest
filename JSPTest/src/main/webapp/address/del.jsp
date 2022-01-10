<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String seq = request.getParameter("seq");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<%@ include file="/inc/asset.jsp" %>
<%@ include file="/address/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
   
   <div class="container">
   	<h1 class="page-header">주소록 <small>삭제하기</small></h1>
   	
   	<form method="POST" action="/jsp/address/delok.jsp">
   		<div class="btns">
   			<button type="button" class="btn btn-default" onclick="location.href='/jsp/address/list.jsp';">
	   			<span class="glyphicon glyphicon-share-alt"></span>
	   			돌아가기
   			</button>
   			<button type="submit" class="btn btn-primary">
	   			<span class="glyphicon glyphicon-share-alt"></span>
	   			삭제하기
   			</button>
   		</div>
   		<input type="hidden" name="seq" value="<%= seq %>">
   	</form>
   </div>
   <script>
   
   </script>
</body>
</html>