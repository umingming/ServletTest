<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("lv").toString().equals("1")){
		//response.sendRedirect("index.jsp");
		
		out.print("<html><head><meta charset='utf-8'></head><body><script>alert('권한이 없습니다.');location.href='index.jsp';</script></body></html>");
		out.close();
	}''
%>
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
   </div>
   <script>
   
   </script>
</body>
</html>