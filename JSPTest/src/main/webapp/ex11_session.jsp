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
   	<h2>세션 정보 확인</h2>
   	<div>Session ID: <%= session.getId() %></div>
   	<h2>세션 조작</h2>
   	<a href="ex11_set.jsp">세션값 저장하기</a>
   	<a href="ex11_del.jsp">세션값 삭제하기</a>
   	<a href="ex11_reset.jsp">세션 초기화</a>
   	<a href="ex11_interval.jsp">세션 만료 시간 지정</a>
   </div>
   <script>
   
   </script>
</body>
</html>