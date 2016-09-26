<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function () {
	var today = new Date();
	var thisYear=today.getFullYear();
    $('#container').highcharts({
        title: {
            text: thisYear+'년 경매 현황',
            x: -20 //center
        },
        subtitle: {
            text: '',
            x: -20
        },
        xAxis: {
            categories: ['1월', '2월', '3월', '4월', '5월', '6월',
                '7월', '8월', '9월', '10월', '11월', '12월']
        },
        yAxis: {
            title: {
                text: 'Temperature (°C)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°C'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: '경매수',
            data : [${fn:join(auctionlist, ',')}]
        }, {
            name: '입찰자',
            data : [${fn:join(allrecordlist, ',')}]
        }, {
            name: '낙찰자',
            data : [${fn:join(lastbuyerlist, ',')}]
        }]
    });
});
</script>
</head>
<body>
<div id="container" style="width: 1000px; height: 400px; margin: 0 auto"></div>
</body>
</html>