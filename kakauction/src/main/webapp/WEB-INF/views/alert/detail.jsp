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
		
		$("#registerAgain").click(function(){
			if(confirm("경매를 다시 등록하시겠습니까?")){
				$("#register").submit();
			}
		});

		$("#deferRegister").click(function(){
			if(confirm("등록 물품 수정창으로 이동합니다")){
				opener.location.href = "<c:url value='/car/edit.do?carNum="+$("#carNum").val()+"'/>";
				self.close();
			}
		});
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
				<td>
					<p>쪽지 제목<p>
				</td>
				<td colspan="3">${alertVo.alertTitle }</td>
			</tr>
			<tr>
				<td>
					<p>보낸 사람</p>
				</td>
				<td>
					<p>관리자</p>
				</td>
				<td>
					<p>쪽지 유형</p>
				</td>
				<td>
					<c:if test="${alertVo.alertType == 'DENY'}">
						차량 등록 거부
					</c:if>
					<c:if test="${alertVo.alertType == 'DEFER'}">
						차량 등록 보류
					</c:if>
					<c:if test="${alertVo.alertType == 'AGAIN'}">
						경매 재등록
					</c:if>
				</td>
			</tr>
			<tr>
				<td>
					<p>쪽지 수신일</p>
				</td>
				<td colspan="3">
					${alertVo.alertRegdate }
				</td>
			</tr>
			<tr>
				<td colspan="1" style="text-align: left;">
					취소 차량 번호
				</td>
				<td>
					${alertVo.carNum }
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea id="msgContent" name="msgContent" readonly rows="5" cols="50">${alertVo.alertContent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<c:if test="${alertVo.alertType=='AGAIN' }">
						<input type="button" id="registerAgain" value="경매 재등록">
					</c:if>
					<c:if test="${alertVo.alertType=='DEFER' }">
						<input type="hidden" id="carNum" value="${alertVo.carNum }">
						<input type="button" id="deferRegister" value="등록 물품 수정">
					</c:if>
					<input type="button" id="selfClose" value="닫기">
				</td>
			</tr>
			<tr>
				<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportBottomplogo.png'/>"></td>
				</tr>
		</table>
		<form action="<c:url value='/auction/againAuction.do'/>" method="post" id="register">
			<input type="hidden" name="carNum" value="${alertVo.carNum }">
			<input type="hidden" name="sellerMemberId" value="${alertVo.sellerMemberId }">
			<input type="hidden" name="alertNo" value="${alertVo.alertNo }">
			<input type="hidden" name="auctionNo" value="${alertVo.auctionNo }">
		</form>
	</div>
</body>
</html>