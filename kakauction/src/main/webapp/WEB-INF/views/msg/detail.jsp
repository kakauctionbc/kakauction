<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#selfClose").click(function(){
			self.close();
		});
		//$("#msgContent").html("");
	});
</script>
</head>
<body>
	<div>
		<table>
			<tr>
				<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportToplogo.png'/>"></td>
			</tr>
			<tr>
				<td colspan="4" style="padding-left: 120px; font-weight: bold;">카카옥션 불량 경매 신고</td>
			</tr>
			<tr>
				<td style="border-top: 1px solid silver; background: #fff8b5;">
					<p>신고 제목<p>
				</td>
				<td colspan="3" style="border-top: 1px solid silver; padding-left: 10px;">${msgVo.msgTitle }</td>
			</tr>
			<tr>
				<td style="background: #fff8b5;">
					<p>신고자 ID</p>
				</td>
				<td style="padding-left: 10px;">
					<p>${msgVo.reportMemberId }</p>
				</td>
			</tr>
			<tr>
				<td style="background: #fff8b5;">
					<p>신고유형</p>
				</td>
				<td style="padding-left: 10px;">
					<c:if test="${msgVo.originType == 1}">
						자유게시판
					</c:if>
					<c:if test="${msgVo.originType == 2}">
						경매 차량
					</c:if>
				</td>
			</tr>
			<tr>
				<td style="border-bottom: 1px solid silver; background: #fff8b5;">
					<p>쪽지 수신일</p>
				</td>
				<td colspan="3" style="border-bottom: 1px solid silver; padding-bottom: 5px; padding-left: 10px;">
					${msgVo.msgRegdate }
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: left;padding-left: 5px;">
					신고내용
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea id="msgContent" name="msgContent" readonly rows="5" cols="50" style="width: 430px; height: 130px; padding-top: 20px;">${msgVo.msgContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="button" id="selfClose" value="닫기" style="margin-left: 180px; margin-top: 10px; margin-bottom:30px;">
				</td>
			</tr>
			<tr style="width: 380px; background: #fae100; height: 30px;">
				<td colspan="4"></td>
				</tr>
		</table>
	</div>
</body>
</html>