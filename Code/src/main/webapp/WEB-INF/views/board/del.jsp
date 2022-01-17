<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	.panel input {
		margin-bottom: 5px;
	}
	
	.panel input[type=submit] {
		margin-top: 10px;
	}
	
</style>
</head>
<body>
	<!-- member/login.jsp > board/del.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">
			
			<div class="panel panel-default">
				<div class="panel-heading">삭제하기</div>
				<div class="panel-body">
				
					<input type="button" value="돌아가기"
						class="btn btn-default"
						onclick="history.back();">
					
					<input type="button" value="삭제하기"
						class="btn btn-primary"
						onclick="location.href='/code/board/delok.do?seq=${seq}';">
					
				</div>
			</div>
			
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







