<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../design/inc/adminTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>관심경매
			</p>
		</div>
		<div>
			<input type="hidden" id="auctionNo" value="${auctionGo['AUCTION_NO'] }">
			<input type="hidden" id="carNum" value="${auctionGo['CAR_NUM'] }">
			<input type="hidden" id="sellerMemberId" value="${auctionGo['SELLER_MEMBER_ID'] }">
			<input type="hidden" id="highPrice" value="${auctionGo['AUCTION_FIRSTPRICE'] }">
			<input type="hidden" id="byuerMemberId" value="${memberId }">
			<input type="hidden" id="nowMemberId" value="${memberId }">
			<table class="auctiongotable">
				<thead>
					<tr>
						<td style="width: 600px;"><a href="#"><img alt="관심경매" src="<c:url value='/img/auctionChoice.png'/>"></a></td>
						<td style="width: 200px;"><img alt="관심경매" src="<c:url value='/img/blank.png'/>"></td>
						<td style="width: 70px; color: blue;">${memberId }<span>님</span></td>
						<td style="width: 120px; text-align: right;"><a href="<c:url value='/auction/list.do'/>">
								<img alt="경매나가기" src="<c:url value='/img/auctionOut_icon.png'/>">	
							</a>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="4" style="border: none;">
							<table style="width: 100%;" class="carInfo">
								<tr>
									<th colspan="6" class="auctionCarName">${auctionGo['CAR_NUM'] }/${auctionGo['CAR_MODEL'] }(${auctionGo['CAR_SIZE'] })</th>
								</tr>
								<tr class="boder1">
									<th>년식</th>
									<td>${auctionGo['CAR_BIRTH'] }</td>
									<th>주행거리</th>
									<td><fmt:formatNumber pattern="#,###" value="${auctionGo['CAR_DIST'] }"/>km</td>
									<th rowspan="2">판매자</th>
									<td rowspan="2">${auctionGo['SELLER_MEMBER_ID'] }</td>
								</tr>
								<tr class="boder1">
									<th>변속기</th>
									<td>${auctionGo['CAR_AM'] }</td>
									<th>연료</th>
									<td>${auctionGo['CAR_GAS'] }</td>
								</tr>
								<tr class="boder1">
									<th>차량매매가격</th>
									<td><fmt:formatNumber pattern="#,###" value="${auctionGo['CAR_PRICE'] }"/>원</td>
									<th>변경</th>
									<td>변경쓰는곳</td>
									<th>여기는</th>
									<td>크엉</td>
								</tr>
								<tr class="boder1img">
									<td colspan="3"><img alt="${auctionGo['PICTURE_1'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_1"] }'/>" style="width: 500px;"></td> 
									<td colspan="3"><img alt="${auctionGo['PICTURE_2'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_2"] }'/>" style="width: 500px;"></td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<table style="width: 70%; border-collapse: collapse;" class="auctionTable">
				<tr>
					<td style="width: 100px;">경매상태</td>
					<td rowspan="2" style="width: 200px;">경매번호<br> 
						<span style="color: blue;">${auctionGo['AUCTION_NO_YEAR'] } - ${auctionGo['AUCTION_NO_CAR'] } -${auctionGo['AUCTION_NO'] }</span>
					</td>
					<td rowspan="2" style="width: 100px;">
						<p id="light">권리</p>
					</td>
					<td rowspan="4" style="width: 100px;">
						<input id="goAuction" type="button" value="응찰">
					</td>
				</tr>
				<tr>
					<td>1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>
						<p style="text-align: center; padding-bottom: 10px;">현재 입찰가</p>
						<p style="text-align: right; font-size: 0.8em;">억천백십일만원</p>
					</td>
					<td rowspan="2">낙찰</td>
				</tr>
				<tr>
					<td>3</td>
					<td id="nowHighPrice" style="text-align: right; color: red;">${auctionGo['AUCTION_FIRSTPRICE'] }만원</td>
				</tr>
			</table>
		</div>
<%@ include file="../../auction/carDetail.jsp" %>
</div>
</body>
</html>
