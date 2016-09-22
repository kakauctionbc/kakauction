<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/adminlayout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/list.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/carList.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/board.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/adminCarDetail.css" />
<style>
	h1{
		font-size: 2em;
		font-weight: bold;
		margin-bottom: 10px;
	}
	td, th{
		border: 1px solid silver;
	}
</style>
	<div id="wrap">
		<div id="wrapdiv">
			<div id="wraptop">
				<p>
					<a href="${pageContext.request.contextPath }/admin/index.do">HOME</a>>회원목록
				</p>
			</div>
			<div id="pagelogo">
				<%-- <img src="${pageContext.request.contextPath }/img/auctionList_logo.png" alt="회원가입로고"> --%>
				<h1>kakauction 현황</h1>
			</div>
			<div calss="memTable">
				<table summary="메인에 들어갈 것으로 카카옥션에 대한 정보를 제공합니다.">
					<colgroup>
						<col style="width: *%;" />
						<col style="width: 14%;" />
						<col style="width: 14%;" />
						<col style="width: 14%;" />
						<col style="width: 14%;" />
						<col style="width: 14%;" />
						<col style="width: 14%;" />
					</colgroup>
					<thead>
						<tr>
							<th>경매신청차량</th>
							<th>경매등록</th>
							<th>경매완료</th>
							<th>신고차량</th>
							<th>신고회원</th>
							<th>당일가입회원</th>
							<th>당일탈퇴회원</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${carApply }건<td>
							<td>${auctionStart }건<td>
							<td>${auctionEnd }건<td>
							<td>${reportCar }건<td>
							<td>${reportNo }명<td>
							<td>${memberJoin }명<td>
							<td>${memberOut }명<td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>