<%@page import="java.sql.*"%>
<%@page import="com.test.jdbc.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	conn = DBUtil.open();
	
	String sql = "select * from tblJava";
	stat = conn.createStatement();
	
	rs = stat.executeQuery(sql);
	
	
	
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
   	
   	<%
   		while (rs.next()) {
   			String id = rs.getString("id");
   			String name = rs.getString("name");
   			int age = rs.getInt("age");
   			String regdate = rs.getString("regdate");
   	%>
   		<div><%= name %>, <%= id %>, <%= age %>, <%= regdate %></div>
   	<%
   		}
   	%>
   	
   </div>
   <script>
   
   </script>
</body>
</html>

<%
conn.close();
%>