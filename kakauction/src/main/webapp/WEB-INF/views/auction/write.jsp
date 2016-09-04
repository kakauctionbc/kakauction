<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script src="<c:url value='/ckeditor/ckeditor.js'/>"
	type="text/javascript"></script>
<title>현재 작업 중인 auction/write.jsp</title>
</head>
<body>
	<form action="" name="" id="" method="post">
		<table width="960" border="1px solid silver;" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td	height="30" class="p_10"><span for="auctionNo">물건관리번호 : </span>
					<select>
						<option>
							<input type="text" name="auctionNo" id="auctionNo">
						</option>
					</select>
					<input type="submit" id="btAuctionSubmit" value="경매 등록">
					<input type="button" id="btAuctionDeny" value="경매 거부">
					<input type="button" id="btAuctionDefer" value="경매 보류">
				</td>
			</tr>
			<tr>
				<td height="220px;">사진 foreach</td>
			</tr>
			<tr>
				<c:import url="CarbasicInfo.jsp"></c:import>
			</tr>
			<tr>
				<c:import url="CarDetailInfo.jsp"></c:import>
			</tr>
			<tr>
				<c:import url="CarAuctionList.jsp"></c:import>
			</tr>
			<tr>
				<c:import url="AuctionInfo.jsp"></c:import>
			</tr>
			<tr>
				<c:import url="AuctionRef.jsp"></c:import>
			</tr>
		</table>
	</form>
			
</body>
</html>