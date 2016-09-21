<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<div class="visit">
	<div class="count">
		<p>방문자수</p>
		<div class="today">${sessionScope.todayCount}</div>
	</div>
	<div class="count">
		<p>총방문자수</p>
		<div class="total">${sessionScope.totalCount}</div>
	</div>
	<div class="count">
		<p>탈퇴회원</p>
		<div class="outMember"></div>
	</div>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>