<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	
	Connection conn = null;
	Statement stat = null;
	
	conn = DBUtil.open();
	
	String sql = String.format("update tblAddress set name = '%s', age = '%s', tel = '%s', address = '%s' where seq = %s"
								, name, age, tel, address, seq);
	
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
   		alert('수정 성공');
   		location.href = '/jsp/address/list.jsp';
   		<% } else {%>
   		alert('수정 실패');
   		history.back();
   		<% } %>
   </script>
</body>
</html>