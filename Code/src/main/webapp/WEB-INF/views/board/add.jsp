<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- board/add.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">
			
			<form method="POST" action="/code/board/addok.do">
			<table class="table table-bordered add">
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" class="form-control" required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" class="form-control" required></textarea></td>
				</tr>
			</table>
			
			<div class="btns">
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/code/board/list.do';">
				<input type="submit" value="글쓰기"
					class="btn btn-primary">										
			</div>
			
			<input type="hidden" name="reply" value="${reply}">
			<input type="hidden" name="thread" value="${thread}">
			<input type="hidden" name="depth" value="${depth}">
			</form>
			
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







