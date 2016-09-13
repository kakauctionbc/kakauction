<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript">
	function mySubmit(index) {
	    if (index == 1) {
	      document.myForm.action="<c:url value='/excel/downloadExcel.do'/>";
	    }
	    if (index == 2) {
	      document.myForm.action="<c:url value='/excel/carExcel.do'/>";
	    }
	    document.myForm.submit();
	 }
</script>
	<div style="width: 400px;height: 400px;text-align: center;margin: 0 auto;">
	<h1 style="font-size: 2em;font-weight: bold;">Excel Download</h1>
	<form name="myForm" method="post">
		<!-- <input type="submit" value="고객리스트 엑셀파일 출력"> -->
		<button type="button" value="bt1" onclick="mySubmit(1)">고객리스트 출력</button>
		<button type="button" value="bt2" onclick="mySubmit(2)">등록차 출력</button>
	</form>
	</div>
	<%-- <a href="<c:url value='/excel/downloadExcel.do'/>">고객리스트 엑셀파일 출력</a> --%>
	<!-- action="<c:url value='/excel/downloadExcel.do'/>" -->
<%@ include file="../design/inc/bottom.jsp" %>