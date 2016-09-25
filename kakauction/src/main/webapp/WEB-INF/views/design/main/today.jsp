<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()+1;
		var date = today.getDate();
		$("#today").html(year+"년 "+month+"월 "+date+"일");
	});
</script>
<span id="today"></span>
