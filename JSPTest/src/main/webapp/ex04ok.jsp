<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//비즈니스 코드
	request.setCharacterEncoding("UTF-8");

	//컨트롤은 존재하는데 값을 입력하지 않으면 > "" 반환
	//컨트롤이 존재하지 않으면 > null 반환
	String txt1 = request.getParameter("txt1");
	String pw1 = request.getParameter("pw1");
 	String txt3 = request.getParameter("txt2");
	String[] cb = request.getParameterValues("cb");
	String rb = request.getParameter("rb");
	String sel1 = request.getParameter("sel1");
	String name = request.getParameter("name");
	
	//System.out.println(txt1 == null);
	//System.out.println(txt1.equals(""));

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/inc/asset.jsp" %>
<style>
	table { width: 600px; }
	th { width: 120px; }
</style>
</head>
<body>
	<!-- ex04ok.jsp -->
	<div class="container">
	
		<h1 class="page-header">결과</h1>
	
		<table class="table table-bordered">
			<tr>
				<th>텍스트 박스</th>
				<td><%= txt1 %></tr>
			<tr>
				<th>암호 박스</th>
				<td><%= pw1 %></td>
			</tr>
			<tr>
				<th>다중 텍스트 박스</th>
				<td><%= txt3 %></td>
			</tr>
			<tr>
				<th>체크 박스</th>
				<td><%= Arrays.toString(cb) %></td> 
			</tr>
			<tr>
				<th>라디오</th>
				<td><%= rb %></td>
			</tr>
			<tr>
				<th>셀렉트</th>
				<td><%= sel1 %></td>
			</tr>
			<tr>
				<th></th>
				<td><%= name %></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
		</table>
</body>
</html>










