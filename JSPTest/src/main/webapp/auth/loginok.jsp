<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	boolean result = false;
	
	conn = DBUtil.open();
	stat = conn.createStatement();
	
	String sql = String.format("select * from tblUser where id = '%s' and pw = '%s'",
								id, pw);
	rs = stat.executeQuery(sql);
	
	if (rs.next()) {
		result = true;
		session.setAttribute("id", id);
		session.setAttribute("name", rs.getString("name"));
		session.setAttribute("lv", rs.getString("lv"));
	} else {
		result = false;
	}
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
   	<h1 class="page-header">로그인 <small></small></h1>
   	
   	<%= result %>
   </div>
   <script>
   		<% if (result) { %>
   			location.href = 'index.jsp';
   		<% } else { %>
   			alert('실패');
   			history.back();
   		<% } %>
   		
   </script>
</body>
</html>