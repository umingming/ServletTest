<%@page import="com.test.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	conn = DBUtil.open();
	
	String sql = "select * from tblAddress order by seq";
	
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
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
   	<h1 class="page-header">주소록 <small></small></h1>
   	<table class="table table-bordered horizontal">
   		<tr>
   			<th>번호</th>
   			<th>이름</th>
   			<th>나이</th>
   			<th>연락처</th>
   			<th>주소</th>
   			<th>처리</th>
   		</tr>
   		<% while (rs.next()) { %>
   		<tr>
   			<td><%= rs.getString("seq") %></td>
   			<td><%= rs.getString("name") %></td>
   			<td><%= rs.getString("age") %></td>
   			<td><%= rs.getString("tel") %></td>
   			<td><%= rs.getString("address") %></td>
   			<td>
   				<span class="glyphicon glyphicon-edit" title="수정하기" data-toggle="tooltip" data-placement="top" onclick="location.href='/jsp/address/edit.jsp?seq=<%= rs.getString("seq") %>';"></span>
                <span class="glyphicon glyphicon-remove-sign" title="삭제하기" data-toggle="tooltip" data-placement="top" onclick="location.href='/jsp/address/del.jsp?seq=<%= rs.getString("seq") %>';"></span>
   			</td>
   		</tr>
   		<% } %>
   	</table>
   	
   	<div class="btns">
   		<button type="submit" class="btn btn-primary" onclick="location.href='/jsp/address/add.jsp';">
   			<span class="glyphicon glyphicon-share-alt"></span>
   				 추가하기
   		</button>
   	</div>
   </div>
   <script>
   		$('[data-toggle="tooltip"]').tooltip();

   </script>
</body>
</html>
<%
	rs.close();
	stat.close();
	conn.close();
%>