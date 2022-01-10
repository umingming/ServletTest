<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	
	Connection conn = null;
	Statement stat = null;
	
	conn = DBUtil.open();
	
	String sql = String.format("insert into tblAddress (seq, name, age, tel, address) values (seqAddress.nextVal, '%s', %s, '%s', '%s')"
								, name, age, tel, address);
	
	stat = conn.createStatement();
	int result = stat.executeUpdate(sql);
	
	stat.close();
	conn.close();
	
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
   	<h1 class="page-header">주소록 <small>추가하기</small></h1>
   </div>
   <script>
   
   		<% if (result == 1) { %>
   		location.href = '/jsp/address/list.jsp';
   		<% } %>
   		
   		<% if (result != 1) { %>
   		alert('등록 실패');
   		history.back();
   		<% } %>
   </script>
</body>
</html>