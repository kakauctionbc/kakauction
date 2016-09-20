<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.countdown.min.js'/>"></script>
<script type="text/javascript">
$().ready(function(){
	var d = new Date();
	$('#countdown').countdown(d, function(event) {
		  if($(this).html()=="00 일 00:00:00"){
			  alert("경매가 마감 되었습니다");
		  }
		  $(this).html(event.strftime('%D 일 %H:%M:%S'));
	});
});
</script>
<style>
div {
  color: #1B232F;
  font-family: Verdana, Arial, sans-serif;
  font-size: 18px;
  font-weight: bold;
  text-decoration: none;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="countdown"></div>
</body>
</html>