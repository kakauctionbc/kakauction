<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>" ></script>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var cnt = $("#cnt").val();
		if(cnt!=0){
			self.close();
		}
		$("#selfClose").click(function(){
			self.close();
		});
		$("#frmReport").submit(function(){
			if($("#reportContent").val().length<15){
				alert("신고 내용은 15자 이상 작성해주셔야합니다.");
				return false;
			}
		});
		
	});
</script>
<style type="text/css">
	td{
		text-align: center;
		border: 1px solid silver;
	}
</style>
</head>
<body>
	<div>
		<input type="hidden" id="cnt" value="${cnt }">
		<form action="<c:url value='/report/insertAuctionReport.do'/>" method="post" id="frmReport">
			<input type="hidden" name="reportMemberId" value="${memberId }">
			<input type="hidden" name="originNo" value="${auctionVo.auctionNo }">
		<input type="hidden" name="originType" id="originType" value="2">
		<table>
			<tr>
				<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportToplogo.png'/>"></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align:left;font-size: 0.7em;">회원님께서 허위매물/팔린매물로 인해 겪은 불편 사항을 적어주세요</td>
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
						<option value="팔린매물">팔린매물</option>
						<option value="개인위장매물">개인위장매물</option>
						<option value="대포차">대포차</option>
						<option value="기타">기타</option>
					</select>
				</td>
				<td>
					<p id="reportMemberId">${memberId }</p>
				</td>
			</tr>
			<tr>
				<td>제  목</td>
				<td colspan="3"><input type="text" name="reportTitle" id="reportTitle"></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: left;padding-left: 5px;">
					신고내용
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea id="reportContent" name="reportContent" rows="9" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="신고하기">
					<input type="button" id="selfClose" value="돌아가기">
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align:left;font-size: 0.6em;background-image: url('<c:url value="/img/auctionRegReportBottomplogo.png"/>');">만일, 허위 사실을 신고한 경우 무고죄로 형사처분 또는 징계처분을 받게 됩니다.</td>
			</tr>
			<tr>
				<td colspan="4"><img alt="카카옥션" src="<c:url value='/img/auctionRegReportBottomplogo.png'/>"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
