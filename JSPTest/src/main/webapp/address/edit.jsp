<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String seq = request.getParameter("seq");
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	conn = DBUtil.open();
	stat = conn.createStatement();
	String sql = "select * from tblAddress where seq = " + seq;
	rs = stat.executeQuery(sql);
	String name = "";
	String age = "";
	String tel = "";
	String address ="";
	
	if (rs.next()) {
		name = rs.getString("name");
		age = rs.getString("age");
		tel = rs.getString("tel");
		address = rs.getString("address");
	}
	
	rs.close();
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
   	<h1 class="page-header">주소록 <small>수정하기</small></h1>
   	
   	<form method="POST" action="/jsp/address/editok.jsp">
   		<table class="table table-bordered vertical">
   			<tr>
   				<th>이름</th>
   				<td><input type="text" name="name" class="form-control short" required value="<%= name%>"></td>
   			</tr>
   			<tr>
   				<th>나이</th>
   				<td><input type="number" name="age" class="form-control short" required value="<%= age%>"></td>
   			</tr>
   			<tr>
   				<th>연락처</th>
   				<td><input type="tel" name="tel" class="form-control middle" required value="<%= tel%>"></td>
   			</tr>
   			<tr>
   				<th>주소</th>
   				<td><input type="text" name="address" class="form-control" required value="<%= address%>"></td>
   			</tr>
   		</table>
   		<div class="btns">
   			<button type="button" class="btn btn-default" onclick="location.href='/jsp/address/list.jsp';">
	   			<span class="glyphicon glyphicon-share-alt"></span>
	   			돌아가기
   			</button>
   			<button type="submit" class="btn btn-primary">
	   			<span class="glyphicon glyphicon-share-alt"></span>
	   			수정하기
   			</button>
   		</div>
   		
   		<input type="hidden" name="seq" value="<%= seq %>">
   	</form>
   </div>
   <script>
   
   </script>
</body>
</html>