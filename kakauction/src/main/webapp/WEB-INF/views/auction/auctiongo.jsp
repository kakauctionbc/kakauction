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
<style type="text/css">
	table, td{
		border: 1px solid red;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>관심경메
			</p>
		</div>
		<div>
			<input type="hidden" id="auctionNo" value="${auctionGo['AUCTION_NO'] }">
			<input type="hidden" id="carNum" value="${auctionGo['CAR_NUM'] }">
			<input type="hidden" id="sellerMemberId" value="${auctionGo['SELLER_MEMBER_ID'] }">
			<input type="hidden" id="highPrice" value="${auctionGo['AUCTION_FIRSTPRICE'] }">
			<input type="hidden" id="byuerMemberId" value="${memberId }">
			<input type="hidden" id="nowMemberId" value="${memberId }">
			<table>
				<thead>
					<tr>
						<td><img alt="logo" src="<c:url value='/img/logo.png'/>"></td>
						<td><a href="#"><img alt="관심경매" src="<c:url value='/img/auctionChoice.png'/>"></a></td>
						<td><img alt="관심경매" src="<c:url value='/img/blank.png'/>"></td>
						<td>${memberId }</td>
						<td><a href="<c:url value='/auction/list.do'/>">경매 나가기</a></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="4">
							<table style="width: 100%;">
								<tr>
									<th colspan="6">${auctionGo['CAR_NUM'] }/${auctionGo['CAR_MODEL'] }(${auctionGo['CAR_SIZE'] })</th>
								</tr>
								<tr>
									<td>년식</td>
									<td>${auctionGo['CAR_BIRTH'] }</td>
									<td>주행거리</td>
									<td><fmt:formatNumber pattern="#,###" value="${auctionGo['CAR_DIST'] }"/>km</td>
									<td rowspan="2">판매자</td>
									<td rowspan="2">${auctionGo['SELLER_MEMBER_ID'] }</td>
								</tr>
								<tr>
									<td>변속기</td>
									<td>${auctionGo['CAR_AM'] }</td>
									<td>연료</td>
									<td>${auctionGo['CAR_GAS'] }</td>
								</tr>
								<tr>
									<td>차량매매가격</td>
									<td><fmt:formatNumber pattern="#,###" value="${auctionGo['CAR_PRICE'] }"/>원</td>
									<td>변경</td>
									<td>변경쓰는곳</td>
									<td>여기는</td>
									<td>크엉</td>
								</tr>
								<tr>
									<td colspan="3"><img alt="${auctionGo['PICTURE_1'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_1"] }'/>"></td>
									<td colspan="3"><img alt="${auctionGo['PICTURE_2'] }" src="<c:url value='/picture_upload/${auctionGo["PICTURE_2"] }'/>"></td>
								</tr>
							</table>
						</td>
						<td>
							<table style="height: 100%;">
								<tr>
									<td><input type="button" value="후상담 낙찰결과"></td>
								</tr>
								<tr>
									<td>
										<a href="#">정보 1-cardetailinfo</a><br>
										<a href="#">정보 2-sellmemberinfo</a><br>
										<a href="#">정보 3-auctioninfo</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5">
							<table style="width: 100%;">
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
						<td colspan="5">
							<a href="#" id="regAucReport">
								<img alt="허위매물신고" src="<c:url value='/img/falseReport.png'/>">
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
