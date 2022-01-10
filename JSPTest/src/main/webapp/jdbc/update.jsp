<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	Statement stat = null;
	
	conn = DBUtil.open();
	stat = conn.createStatement();
	
	String sql = "update tblJava set name = '홍동길', age = 30 where id = 'hong'";
	int result = stat.executeUpdate(sql);
	
	stat.close();
	conn.close();
	
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
	<% if(result > 0) { %>
		<div>수정했습니다.</div>
	<% } else { %>
		<div>수정을 실패했습니다.</div>
	<% } %>
   </div>
   <script>
   
   </script>
</body>
</html>