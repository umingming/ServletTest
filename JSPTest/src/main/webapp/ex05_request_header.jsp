<%@page import="java.util.Enumeration"%>
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
   	<h1>HTTP 요청 메시지 <small>헤더 정보</small></h1>
   	<table class="table table-bordered"><caption>
   		<tr>
   			<th>헤더 명</th>
   			<th>헤더 값</th>
   		</tr>
   		<%
   			Enumeration<String> e = request.getHeaderNames();
   			while (e.hasMoreElements()) {
   				String name = e.nextElement();
   		%>
   		<tr>
   			<td><%= name %></td>
   			<td><%= request.getHeader(name) %></td>
   		</tr>
   		<%
   			}
   		%>
	</table>
	
	<hr>
	
	<p>서버 도메인 : <%= request.getServerName() %>   		
	<p>서버 포트번호 : <%= request.getServerPort() %>   		
	<p>요청 URL : <%= request.getRequestURI() %>   		
	<p>요청 쿼리 문자열 : <%= request.getQueryString() %>   		
	<p>클라이언트 주소 : <%= request.getRemoteHost() %>   		
	<p>프로토콜 : <%= request.getProtocol() %>   		
	<p>요청 메소드 : <%= request.getMethod() %>   		
	<p>컨텍스트 경로 : <%= request.getContextPath() %>   		
   		
   	
   </div>
   
   <script>
   
   </script>
</body>
</html>