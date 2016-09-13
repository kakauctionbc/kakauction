<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		var highMember = "";
		var highPrice = $("#highPrice").val();
		var auctionNo= $("#auctionNo").val();
		var carNum=$("#carNum").val();
		var sellerMemberId=$("#sellerMemberId").val();
		var buyerMemberId=$("#byuerMemberId").val();
		var memberId = $("#nowMemberId").val();
		setInterval(newrefresh,0);
		
		function newrefresh(){
			$.ajax({
				url : "<c:url value='/auction/rankAuction.do'/>",
				data : {"auctionNo":auctionNo,"recordPrice":highPrice,"carNum":carNum,"sellerMemberId":sellerMemberId},
				type : "POST",
				dataType : "json",
				success : function(highVo) {
					highMember=highVo.buyerMemberId;
					$("#nowHighPrice").html(highVo.recordPrice+ "만원<br>"+highVo.buyerMemberId).css("text-align","right");
					if(sellerMemberId==buyerMemberId){
						$("#light").css("background","");
						return;
					}
					if(highMember==buyerMemberId){
						$("#light").css("background","red");
					}else{
						$("#light").css("background","");
					}
				}/* ,
				error : function(xhr,status,error) {
					alert("에러=>"+ status+"message=>"+xhr.responseText+ ":"+ error);
				} */
			});
		}
		
		$("#goAuction").click(function(){
			if(sellerMemberId==buyerMemberId){
				alert("자신이 등록한 차량의 경매에 참가할 수 없습니다");
				$("#light").css("background","");
				return;
			}
			if(highMember==buyerMemberId){
				alert("현재 최고가를 응찰하신 회원입니다.");
				return;
			}
			$.ajax({
				url : "<c:url value='/auction/insertAuctionGo.do'/>",
				data : {"auctionNo":auctionNo,"recordPrice":5,	"carNum":carNum,"sellerMemberId":sellerMemberId,"buyerMemberId":buyerMemberId,"highPrice":highPrice},
				type : "POST",
				dataType : "json",
				success : function(highVo) {
					$("#nowHighPrice").html(highVo.recordPrice+"만원<br>"+highVo.buyerMemberId).css("text-align","right");
					$("#light").css("background","red");
					
				},
				error : function(xhr,status,error) {
					alert("에러=>"+ status+"message=>"+xhr.responseText+ ":"+ error);
				}
			});
		});
		
		$("#regAucReport").click(function(){
			window.open("<c:url value='/report/auctionReport.do?auctionNo="+auctionNo+"&memberId="+memberId+"'/>", "AuctionReport",
					"width=412px,height=580px,top=50,left=650,resizable=yes,location=yes");
		});
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
								<tr class="boder1">
									<td colspan="3"><img alt="${auctionGo['PICTURE_1'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_1"] }'/>" style="width: 500px;"></td> 
									<td colspan="3"><img alt="${auctionGo['PICTURE_2'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_2"] }'/>" style="width: 500px;"></td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" style="border: none;">
							<table style="width: 100%; border-collapse: collapse;">
								<tr>
									<td rowspan="2">경매번호<br> 
										${auctionGo['AUCTION_NO_YEAR'] } - ${auctionGo['AUCTION_NO_CAR'] } -${auctionGo['AUCTION_NO'] }
									</td>
									<td colspan="3">경매상태</td>
									<td>
										<p style="text-align: center;">현재 입찰가</p>
										<p style="text-align: right;">억천백십일만원</p>
									</td>
									<td>
										<p id="light">권리</p>
									</td>
									<td rowspan="2">
										<input id="goAuction" type="button" value="응찰">
									</td>
								</tr>
								<tr>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td id="nowHighPrice" style="text-align: right;">${auctionGo['AUCTION_FIRSTPRICE'] }만원</td>
									<td>낙찰</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="5" style="border: none;">
							<a href="#" id="regAucReport">
								<img alt="허위매물신고" src="<c:url value='/img/report_icon.png'/>">
							</a>
						</td>
					<tr>
				</tfoot>
			</table>
		</div>

<%@ include file="carDetail.jsp" %>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp" %>
