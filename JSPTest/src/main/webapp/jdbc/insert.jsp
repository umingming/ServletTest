<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "hr";
	String pw = "java1234";
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		System.out.println(conn.isClosed());
		String sql = "insert into tblJava (id, name, age, regdate) values ('test', '홍길동', 21, default)";
		Statement stat = null;
		stat = conn.createStatement();
		stat.executeUpdate(sql);
		conn.commit();
		conn.close();
		System.out.println(conn.isClosed());
		
	} catch (Exception e) {
		conn.rollback();
		System.out.println(e);
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
   	<h1 class="page-header"> <small></small></h1>
   </div>
   <script>
   
   </script>
</body>
</html>