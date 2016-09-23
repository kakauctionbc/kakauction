<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var carNum = "";
		$("#carList").change(function() {
			carNum = $("#carList option:selected").val();
			/* var carNum = $(this).val(); */
			/* var carNum = $("#carList").val(); */
			if (carNum != null && carNum != -1) {
				$.ajax({
					url : "<c:url value='/admin/auction/selectCar.do'/>",
					data : "carNum="+ carNum,
					type : "POST",
					dataType : "json",
					success : function(vo) {
						alert(vo.carNum);
						console.log(vo.carNum);
						$("#carPic").html("");
						$("#carNum").attr("value",vo.carNum);
						$("#carSize").attr("value",vo.carSize);
						$("#sellerMemberId").attr("value",vo.memberId);
						$("#auctionPromp").attr("value",vo.carPrice);
						$("#carBirth").attr("value",vo.carBirth);
						$("#voCarModel").attr("value",vo.carModel);
 						var img = [$("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture1+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture2+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture3+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture4+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture5+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture6+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture7+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture8+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture9+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture10+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture11+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture12+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture13+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture14+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture15+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture16+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture17+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture18+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture19+"'/>"),
						           $("<img class='pic' alt='사진'>").attr("src", "<c:url value='/picture_upload/"+vo.picture20+"'/>")];
						$("#carPic").append(img);
						$("#carPic").css("text-align","center");
						$(".pic").css("width", "180px").css("height", "100px").css("border","1px solid silver").css("margin","2px");
						
						var carNum = vo.carNum;
						var addr = vo.memberAddr+ vo.memberAddr2;
						$("#voCarNum").html(carNum);
						$("#voMAddr").html(addr);
						$("#voCarLoc").html(vo.carLoc);
						$("#voCarCompany").html(vo.carCompany+ "/불용품").css("align","right");
						var carCompanyHp = "";
						if (vo.carCompany != null) {
							carCompanyHp = vo.carCompany+ "("+ vo.memberName+ ")";
						} else if (vo.carCompany == null) {
							carCompanyHp = vo.memberName;
						}
						carCompanyHp += "/전화번호 : "+ vo.memberHp;
						$("#voCarComHp").html(carCompanyHp);
						$("#voCarFailSell").html(vo.carFailSell);
						$("#voAuctionYN").html(vo.auctionNoYear+"-0"+vo.auctionNoCar);
						$("#voMemberGrade").html("경매 시작으로부터 회원 등급에 따라 달라 집니다");
						$("#voCarPrice").html(vo.carPrice+"만원");
						$("#VoMemberId").html(vo.memberId+"님의 차량 정보 : "+vo.carModel);
						$("#carVoCarNum").html(vo.carNum);
						$("#carVoCarBirth").html(vo.carBirth);
						$("#carVoCarGas").html(vo.carGas);
						$("#carVoCarAm").html(vo.carAm);
						$("#carVoCarDist").html(vo.carDist);
						$("#carVoCarCc").html(vo.carCc);
					},
					error : function(xhr,status,error) {
						alert("에러=>"+ status+ ":"+ error);
					}
				});
			}else if (carNum == -1) {
				$("#carNum").html("");
				$("#carPic").html("");
				$("#voCarNum").html("");
				$("#voMAddr").html("");
				$("#voCarLoc").html("");
				$("#voCarCompany").html("");
				$("#voCarComHp").html("");
				$("#voCarFailSell").html("");
				$("#voAuctionYN").html("");
				$("#voMemberGrade").html("");
				$("#voCarPrice").html("");
				$("#carVoCarNum").html("");
				$("#carVoCarBirth").html("");
				$("#carVoCarGas").html("");
				$("#carVoCarAm").html("");
				$("#carVoCarDist").html("");
				$("#carVoCarCc").html("");
				$("#selectAuctionHis").html("");
				$("#HisAucInfo").html("");
			}
		});
		
		$("#btAuctionList").click(function(){
			location.href="<c:url value='/admin/auction/auctionList.do'/>";
		});
		
		$("#btAuctionDeny").click(function(){
			if(carNum==""){
				alert("차량을 선택하세요");
				return;
			}
			if(confirm("경매 등록 거부하시겠습니까?")){
				location.href="<c:url value='/admin/auction/auctionDeny.do?carNum="+carNum+"&sellerMemberId="+$("#sellerMemberId").val()+"'/>";
			}
		});

		$("#btAuctionDefer").click(function(){
			if(carNum==""){
				alert("차량을 선택하세요");
				return;
			}
			if(confirm("경매등록을 보류 하시겠습니까?")){
				location.href="<c:url value='/admin/auction/auctionDefer.do?carNum="+carNum+"&sellerMemberId="+$("#sellerMemberId").val()+"'/>";
			}
		});
		
	});
</script>
<style type="text/css">
.auctionWrite{
	width: 1000px;
	border: 1px solid #534a4a;
	margin-top: 30px;
}
.auctionWrite td{
	border: 1px solid #534a4a;
}
.p_10{
	background:#ebebeb;
	height: 30px; 
	padding-left: 10px;
}
.p_10 select{
	font-size: 1.1em;
}
.writeDetail{
	width: 1000px;
	border: 1px solid #534a4a;
	margin-top: 30px;
	margin-bottom: 30px;
}
.writeDetail th{
	background: #ebebeb;
	border: 1px solid #534a4a;
	height: 30px;
}
.writeDetail td{
	border: 1px solid #534a4a;
}
.carprice th{
	width: 200px;
}
.carprice td{
	width: 300px;
}
.seller th{
	width:200px;
}
.seller td{
	width: 300px;
}
.carInfotable{
	width:1000px; 
	borde:1px solid silver;
}
.carInfotable th{
	background: #ebebeb;
	border: 1px solid #534a4a;
	height: 30px;
}
.carInfotable td{
	border: 1px solid #534a4a;
	height: 30px;
}
h3{
	font-size: 1.3em;
	font-weight: bold;
}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/index.do">HOME</a>>경매등록
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/auctionWrite_logo.png" alt="경매등록로고">
		</div>
	<form action="<c:url value='/admin/auction/auctionWrite.do'/>" name="auctionWrite" method="post">
		<table class="auctionWrite" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td height="30px;" class="p_10">
				<span for="auctionNo">물건관리번호	: </span> 
				<select id="carList" name="carNum">
						<c:if test="${empty carAlist}">
							<option>등록된 차량이 없습니다</option>
						</c:if>
						<c:if test="${!empty carAlist}">
						<option value="-1">차량을 선택하세요</option>
							<c:forEach var="carVo" items="${carAlist}">
								<option value="${carVo.carNum}">${carVo.carNum}</option>
							</c:forEach>
						</c:if>
				</select>
				<!-- <input type="hidden" id="carNum" name="carNum"> -->
				<input type="hidden" id="sellerMemberId" name="sellerMemberId">
				<input type="hidden" id="auctionPromp" name="auctionPromp">
				<input type="hidden" id="carBirth" name="carBirth">
				<input type="hidden" id="carSize" name="carSize">
				<input type="text" id="voCarModel" readonly="readonly" >
				<input type="submit" id="btAuctionSubmit" value="경매 등록"> 
				<input type="button" id="btAuctionDeny" value="경매 거부"> 
				<input type="button" id="btAuctionDefer" value="경매 보류"> 
				<input type="button" id="btAuctionList" value="경매 목록">
				</td>
			</tr>
			<tr>
				<td height='220px;' width="1000px;" id="carPic"></td>
			</tr>
		</table>
	</form>
	<div id="voName"></div>
		<table class="writeDetail" cellspacing="0" cellpadding="0" align="center">
			<tbody>
				<tr>
					<th>차량상세정보</th>
					<td id="voCarNum"></td>
				</tr>
				<tr>
					<th>소재지</th>
					<td id="voMAddr"></td>
				</tr>
				<tr>
					<th>보관장소</th>
					<td id="voCarLoc"></td>
				</tr>
				<tr>
					<th>기관/재산종류</th>
					<td id="voCarCompany"></td>
				</tr>
				<tr>
					<th>집행기관</th>
					<td id="voCarComHp"></td>
				</tr>
				<tr>
					<th>입찰기간 설정</th>
					<td id="memberTime">회원등급별 차등시간 </td>
				</tr>
				<tr>
					<td colspan="2" style="padding: 0px; border: none;">
						<table style="width: 1000px; border: none;">
							<colgroup>
								<col style="width:120px;"/>
								<col style="width:200px;"/>
								<col style="width:120px;"/>
								<col style="width:200px;"/>
								<col style="width:120px;"/>
								<col style="width:150px;"/>
							</colgroup>
							<tr>
								<th>물건관리 번호</th>
								<td id="voAuctionYN"></td>
								<th>유찰 횟수</th>
								<td id="voCarFailSell"></td>
								<th>물건상태</th>
								<td></td>
							</tr>
							<tr>
								<th>입찰시작</th>
								<td>경매 등록 시간</td>
								<th>입찰마감</th>
								<td id="voMemberGrade"></td>
								<th>개찰일자</th>
								<td>입찰 시간으로부터 15시간 이후</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table>
							<tr class="carPrice">
								<th >최저입찰가</th>
								<td id="voCarPrice">${vo.carPrice}</td>
							</tr>
						</table>
					</td>
					<td>
						<table>
							<tr class="seller">
								<th>이전책임</th>
								<td>매수자</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<div style="margin-bottom: 30px;">
			<table class="carInfotable" cellspacing="0" cellpadding="0" align="center">
				<h3>-물건 기본 정보</h3><br>
				<tbody>
					<tr>
						<th>차량명</th>
						<td id="VoMemberId"></td>
					</tr>
					<tr>
						<td colspan="2" style="padding: 0px;">
							<table>
								<colgroup>
									<col style="width: 100px;"/>
									<col style="width: 200px;"/>
									<col style="width: 100px;"/>
									<col style="width: 300px;"/>
									<col style="width: 100px;"/>
									<col style="width: 200px;"/>
								</colgroup>
								<tr>
									<th>차량번호</th>
									<td id="carVoCarNum"></td>
									<th>연식</th>
									<td id="carVoCarBirth"></td>
									<th>연료</th>
									<td id="carVoCarGas"></td>
								</tr>
								<tr>
									<th>기어</th>
									<td id="carVoCarAm"></td>
									<th>주행거리</th>
									<td id="carVoCarDist"></td>
									<th>배기량</th>
									<td id="carVoCarCc"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th>세부내역</th>
						<td>시청 상징물 등 도색된 상태로 매수자가 제거 필요 사진은 해당 차량이 아닐 수 있으므로 실물 확인 바람
						</td>
					</tr>
			</table>
		</div>
		<div  width="1000px" border="1px solid silver;" cellspacing="0" cellpadding="0" >
		<pre>- 제공된 정보가 실제 매각물건의 정보와 일치하지 않거나 정보의 제공 이후 중요한 변동사항이 생길 수 있습니다.<br>
- 물건의 내용은 온비드, 입찰 집행기관 등에서 반드시 재확인 하시기 바랍니다.<br>
* 본 정보와 관련하여 발생하는 모든 문제에 대해 어떠한 책임도 지지 않습니다.</pre>
		</div>
	</div>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>