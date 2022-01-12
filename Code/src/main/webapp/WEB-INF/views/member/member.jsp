<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.panel {
		width: 200px;
		margin: 0 auto;
		margin-top: 150px;
		text-align: center;
	}
	.info {
		margin-bottom: 10px;
	}
</style>
</head>
<body>
	<!--  -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">
			<div class="panel panel-default">
				<div class="panel-heading">회원</div>
				<div class="panel-body">
				
					
					<div class="info">
						<span class="label">lv1</span> hong(홍길동)
					</div>
				
				
					<input type="button" value="로그인"
						class="btn btn-default"
						onclick="location.href='/code/member/login.do';">
					<input type="button" value="로그아웃"
						class="btn btn-default"
						onclick="location.href='/code/member/logoutok.do';">
				</div>
			</div>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>






