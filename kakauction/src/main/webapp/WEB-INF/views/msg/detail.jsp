<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="<c:url value='/msg/insertMessage.do'/>" method="post" id="frmMessage">
			<input type="hidden" name="buyerMemberId" value="${memberId }">
			<input type="hidden" name="auctionNo" value="${auctionVo.auctionNo }">
			<input type="hidden" name="reportCarinfo" value="${auctionVo.carNum }">
			<table>
				<tr>
					<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportToplogo.png'/>"></td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: left;padding-left: 25px;">카카옥션 불량 경매 신고</td>
				</tr>
				<tr>
					<td>
						<p>차량정보<p>
					</td>
					<td>
						<p>판매자ID</p>
					</td>
					<td>
						<p>신고유형</p>
					</td>
					<td>
						<p>신고자ID</p>
					</td>
				<tr>
					<td>
						<p><a href="<c:url value='#'/>">${auctionVo.carNum }</a><p>
					</td>
					<td>
						<p>${auctionVo.sellerMemberId }</p>
					</td>
					<td>
						<select name="reportType">
							<option value="허위매물">허위매물</option>
							<option value="고의응찰">고의응찰</option>
							<option value="허위정보">허위정보</option>
							<option value="과장정보">과장정보</option>
							<option value="판매자허위정보">판매자허위정보</option>
							<option value="판매자허위정보">기타</option>
						</select>
					</td>
					<td>
						<p id="buyerMemberId">${memberId }</p>
					</td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: left;padding-left: 5px;">
						신고내용
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea id="reportContent" name="reportContent" ></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="button" value="확인">
						<input type="button" id="selfClose" value="닫기">
					</td>
				</tr>
				<tr>
					<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportBottomplogo.png'/>"></td>
					</tr>
			</table>
		</form>
	</div>
</body>
</html>