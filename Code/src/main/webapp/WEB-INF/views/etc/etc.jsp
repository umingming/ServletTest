<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<script src="/code/asset/js/highcharts.js"></script>
<style>
	#chart1, #chart2{
		width: 380px;
	}
</style>
</head>
<body>
   
   <div class="container">
   	<h1 class="page-header"> <small></small></h1>
   		<section>
			<table class="table table-bordered">
				<tr>
					<th>등급</th>
					<th>이름</th>
					<th>아이디</th>
					<th>게시물</th>
					<th>댓글</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			
			<h3>유저 활동 현황</h3>
			<table>
				<tr>
					<td><div id="chart1"></div></td>
				</tr>
				<tr>
					<td><div id="chart2"></div></td>
				</tr>
			</table>
   		</section>
   </div>
   <script type="text/javascript">
Highcharts.chart('chart1', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '유저별 게시물수'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.y}개'
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [
        <c:forEach items="${list}" var="dto">
        {
            name: '${dto.name}(${dto.id})',
            y: ${dto.count},
        }
        ,
        </c:forEach>
        ]
    }]
});
Highcharts.chart('chart2', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '유저별 게시물수'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.y}개'
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [
        <c:forEach items="${list}" var="dto">
        {
            name: '${dto.name}(${dto.id})',
            y: ${dto.count},
        }
        ,
        </c:forEach>
        ]
    }]
});
		</script>
</body>
</html>