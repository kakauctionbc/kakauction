<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery.countdown.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var highMember = "";
		var auctionState = "";
		var highPrice = $("#highPrice").val();
		var auctionNo= $("#auctionNo").val();
		var carNum=$("#carNum").val();
		var sellerMemberId=$("#sellerMemberId").val();
		var buyerMemberId=$("#byuerMemberId").val();
		var memberId = $("#nowMemberId").val();
		
		setInterval(newrefresh,0);
		
		var d = $("#auctionFinish").val();
		var today=new Date("yyyy-MM-dd HH:mm:ss");
		
		$('#countdown').countdown(d, function(event) {
			  if($(this).html()=="00 일 00:00:00"){
				  alert("경매가 마감 되었습니다");
			  }
			  if(event.strftime("%M")<10){
				  $(this).css("color","red");
			  }
			  $(this).html(event.strftime('%D 일 %H:%M:%S'));
		});

		
		function newrefresh(){
			$.ajax({
				url : "<c:url value='/auction/rankAuction.do'/>",
				data : {"auctionNo":auctionNo,"recordPrice":highPrice,"carNum":carNum,"sellerMemberId":sellerMemberId},
				type : "POST",
				dataType : "json",
				success : function(highVo) {
					highMember=highVo.buyerMemberId;
					auctionState=highVo.auctionState;
					if(auctionState=="END"){
						$("#nowHighPrice").html("종료된 경매 입니다").css("text-align","right");
						$("#goAuction").css("display","none");
						return;
					}
					$("#goAuction").show();
					$("#nowHighPrice").html(highVo.recordPrice+ "만원<br>"+highVo.buyerMemberId).css("text-align","right");
					if(sellerMemberId==buyerMemberId){
						$("#light").css("background","");
						return;
					}
					if(highMember==buyerMemberId){
						$("#light").css("background","#8eff67");
						$("#lightText").css("color", "black");
					}else{
						$("#light").css("background","");
						$("#lightText").css("color", "");
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
			if(auctionState=="END"){
				$("#nowHighPrice").html("종료된 경매 입니다").css("text-align","right");
				$("#goAuction").css("display","none");
				return;
			}
			$.ajax({
				url : "<c:url value='/auction/insertAuctionGo.do'/>",
				data : {"auctionNo":auctionNo,"recordPrice":5,	"carNum":carNum,"sellerMemberId":sellerMemberId,"buyerMemberId":buyerMemberId,"highPrice":highPrice},
				type : "POST",
				dataType : "json",
				success : function(highVo) {
					alert("입찰하였습니다");
					$("#goAuction").show();
					$("#nowHighPrice").html(highVo.recordPrice+"만원<br>"+highVo.buyerMemberId).css("text-align","right");
					$("#light").css("background","red");
					$("#lightText").css("color", "black");
					
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
	#countdown {
		color: #1B232F;
		font-family: Verdana, Arial, sans-serif;
		font-size: 18px;
		font-weight: bold;
		text-decoration: none;
	}

</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>관심경매
			</p>
		</div>
		<div class="auctiongopage">
			<input type="hidden" id="auctionNo" value="${auctionGo['AUCTION_NO'] }">
			<input type="hidden" id="carNum" value="${auctionGo['CAR_NUM'] }">
			<input type="hidden" id="sellerMemberId" value="${auctionGo['SELLER_MEMBER_ID'] }">
			<input type="hidden" id="highPrice" value="${auctionGo['AUCTION_FIRSTPRICE']}">
			<input type="hidden" id="byuerMemberId" value="${memberId }">
			<input type="hidden" id="nowMemberId" value="${memberId }">
			<table class="auctiongotable">
				<thead>
					<tr>
						<td style="width: 600px;" colspan="2">
							<div>종료까지 남은 시간 : </div>
							<div id="countdown">
							<input type="hidden" id="auctionFinish" value="${auctionGo['AUCTION_FINISH']}">
							</div>
						</td>
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
									<th colspan="2">경매 번호</th>
									<td colspan="2">${auctionGo['AUCTION_NO_YEAR'] } - ${auctionGo['AUCTION_NO_CAR'] } -${auctionGo['AUCTION_NO'] }</td>
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
					<td style="width: 100px; border-right:1px solid silver;" rowspan="4">경매상태</td>
					<td style="width: 200px; border-bottom: 1px solid silver; border-right:1px solid silver;" rowspan="2">경매번호<br> 
						<span style="color: blue;">${auctionGo['AUCTION_NO_YEAR'] } - ${auctionGo['AUCTION_NO_CAR'] } -${auctionGo['AUCTION_NO'] }</span>
					</td>
					<td style="width: 50px;" id="light" rowspan="2">
						<p id="lightText">권리</p>
					</td>
					<td rowspan="4" style="width: 50px; border-left:1px solid silver;">
						<input id="goAuction" type="button" value="응찰">
					</td>
				</tr>
				<tr>
				</tr>
				<tr>
					<td style="border-right:1px solid silver;">
						<span style="text-align: center; padding-bottom: 10px; ">현재 입찰가</span><br>
						<span style="float: right; font-size: 0.8em;">억천백십일만원</span>
					</td>
					<td rowspan="2">낙찰</td>
				</tr>
				<tr>
					<td id="nowHighPrice" style="text-align: right; color: red; font-size: 1em;">${auctionGo['AUCTION_FIRSTPRICE'] }만원</td>
				</tr>
			</table>
			<div class="informationmt">
				<dl>
					<dt>
						<strong>판매자정보</strong>
					</dt>
					<dd class="first">
						<span class="t">판매자</span> <span class="s"> <strong>${acVo.memberName }</strong>
							<dd>
								<span class="t">연락처</span> <span class="s">${acVo.memberHp }</span>
							</dd>
							<dd>
								<span class="t">주소</span> <span class="s">
									${acVo.memberAddr }</span>
							</dd>
							<dd>
								<span class="t">매매상사</span> <span class="s">${acVo.carCompany }</span>
							</dd>
							<dd class="pt1"></dd>
				</dl>
			</div>
			<div>
				<a href="#" id="regAucReport">
					<img alt="허위매물신고" src="<c:url value='/img/report_icon.png'/>">
				</a>
			</div>
		</div>

<%@ include file="carDetail.jsp" %>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp" %>
