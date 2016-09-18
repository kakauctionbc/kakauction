<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../design/inc/top.jsp" %>
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
					auctionState=highVo.auctionState;
					alert("입찰하였습니다");
					if(auctionState=="END"){
						$("#nowHighPrice").html("종료된 경매 입니다").css("text-align","right");
						$("#goAuction").css("display","none");
						return;
					}
					$("#goAuction").show();
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
			<input type="hidden" id="highPrice" value="${auctionGo['AUCTION_FIRSTPRICE']}">
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
				<div>
					<a href="#" id="regAucReport">
						<img alt="허위매물신고" src="<c:url value='/img/report_icon.png'/>">
					</a>
				</div>
		</div>
		<div class='Quick_layer'>
			<div class="Quick" id="QuickMenu"
				style="width: 120px; top: 155px; left: 515px">
				<!-- 우측 배너 -->
				<div id='div-gpt-ad-1398066581850-0'
					style='width: 120px; height: 225px; border: 1px solid;' tabindex="0">
					<script type='text/javascript'>
						googletag.cmd.push(function() {
							googletag.display('div-gpt-ad-1398066581850-0');
						});
					</script>
				</div>
		
		
				<dl id="qdl" class="ml" style="margin-left: 3.5px">
					<dt class="t">
						<a href="/mycar/manage/mycar_recent.php" id="f_jump"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_view.png"
							alt="최근 본 차량"> <em id="recenct_Cnt">(0)</em></a>
					</dt>
					<dd id='qImg'></dd>
					<dd id='qImgPage' class="page">
						<a href="javascript:qMenuAjax('M');"><img
							src="http://image.bobaedream.co.kr/image/quick/icon_l.gif"
							alt="왼쪽이동"></a> <span id="qNavi"><strong>1</strong>/1</span> <a
							href="javascript:qMenuAjax('P');"><img
							src="http://image.bobaedream.co.kr/image/quick/icon_r.gif "
							alt="오른쪽이동"></a>
					</dd>
				</dl>
				<ul class="ml">
					<li><a href="/mycar/manage/mycar_select_list.php"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_wish.png"
							alt="찜한차량"> <em id="zzim2">(0)</em></a></li>
					<li><a href="/dealguide/accident_search.php"><img
							src="http://image.bobaedream.co.kr/image/quick/q_s6.gif"
							alt="사고이력 조회" /></a></li>
					<li><a href="http://direct.samsungfire.com/CR_MyAnycarWeb/overture_index.jsp?OTK=A1410AF0019"
							target="_blank" title="새 창"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_insurance.png"
							alt="보험료계산"></a></li>
					<li><a
						href="http://ad56.feeldmc.com/adv.dmc?m=bobaedream&c=3007&s=12053&a=87065&ac=1"
						target="_blank" title="새 창"><img
						src="http://image.bobaedream.co.kr/image/quick/quick_installment.png"
						alt="할부한도조회"></a></li>
					<li><a href="http://www.bobaedream.co.kr/mycar/mycar.php"
						target="_blank" title="새 창"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_register.png"
							alt="내차팔기"></a></li>
					<li class="top"><a href="#"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_top.png"
							alt="top"></a></li>
				</ul>
				<div class="sns_area">
					<a href="https://www.facebook.com/bobaedream"
						title="보배드림 페이스북 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns1.gif"
						alt="페이스북" /></a> <a
						href="https://www.youtube.com/channel/UCLwH6qjWELskt7sGT2b3FOg"
						title="보배드림 유튜브 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns4.gif"
						alt="유튜브" /></a> <a href="https://instagram.com/bobaedream"
						title="보배드림 인스타그램 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns3.gif"
						alt="인스타그램" /></a>
				</div>
			</div>
		</div>

<%@ include file="carDetail.jsp" %>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp" %>
