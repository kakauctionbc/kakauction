<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
function Div_carphto_onoff(){
	var n = document.getElementById("carphto_onoff").value;
	if(n=="on"){

		$("#Div_carphto_onoff").hide();
		$("#carphto_onoff").val("off") ;
		$("#photoOnoffText").html("▶ 차량 사진 열기");
	}else if(n=="off"){

		$("#Div_carphto_onoff").show();
		$("#carphto_onoff").val("on") ;
		$("#photoOnoffText").html("◁ 차량 사진 닫기");
	}
}

	$(function(){ 
		var carImgSrc;
		$(".carImg").click(function(){
			carImgSrc = $(this).attr("src");
			$("#myModal").css("display", "block");
			$("#img01").attr("src",carImgSrc);
		});
		$(".close").click(function() {
			$("#myModal").css("display", "none");
		});
	});
	$(document).ready(function(){
		var auctionNo = $("#auctionNo").val();
		$(".stopAuction").click(function(){
			if(confirm("경매를 강제로 중지 하시겠습니까?")){
				location.href="<c:url value='/admin/auction/auctionStop.do?auctionNo="+auctionNo+"'/>";
			}
		});
	});
</script>
<style type="text/css">
	#carImage{
		height: 80px;
		width: 80px;
	}
	.photoarea{
		width: 1000px;
		height: 165px;
	}
	.photoarea img{
		width: 180px;
		height: 160px;
	}
	.page_tab, .top, #photoOnoffText, .detailbottom, .rightarea, .sellerInformation{
		margin-left: 450px;
	}
	#top{
		margin-left: 450px;
		font-size: 20px;
		font-weight: bold;
	}
	.sellerInformation th{
		text-align: left;
		padding-left: 30px;
	}
	.sellerInformation td{
		text-align: center;
	}
	.stopAuction, .AuctionList{
		font-size: 25px;
		font-weight: bold;
	}
		#carImage{
		height: 80px;
		width: 80px;
	}
	.photoarea{
		width: 1000px;
		height: 165px;
	}
	.carImg {
		width: 180px;
		height: 160px;
	    cursor: pointer;
	    transition: 0.3s;
	}
	.carImg:hover {
		opacity: 0.7;
	}
	.modal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
	}
	
	/* Modal Content (Image) */
	.modal-content {
	    margin: auto;
	    display: block;
	    width: 80%;
	    max-width: 700px;
	}
	
	/* Caption of Modal Image (Image Text) - Same Width as the Image */
	#caption {
	    margin: auto;
	    display: block;
	    width: 80%;
	    max-width: 700px;
	    text-align: center;
	    color: #ccc;
	    padding: 10px 0;
	    height: 150px;
	}
	
	/* Add Animation - Zoom in the Modal */
	.modal-content, #caption { 
	    -webkit-animation-name: zoom;
	    -webkit-animation-duration: 0.6s;
	    animation-name: zoom;
	    animation-duration: 0.6s;
	}
	
	/* The Close Button */
	.close {
	    position: absolute;
	    top: 15px;
	    right: 35px;
	    color: #f1f1f1;
	    font-size: 40px;
	    font-weight: bold;
	    transition: 0.3s;
	}
	
	.close:hover, .close:focus {
	    color: #bbb;
	    text-decoration: none;
	    cursor: pointer;
	}
	
    .modal-content {
        width: 100%;
    }
   @media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
    .detailbottom{
    	width:500px;
    	float: left;
    }
    .sellerInformation{
    	float: right;
    }
    .sellerInformation table{
    	background:silver;
    	width: 400px;
    }
    .auctionStateTable{
		width: 1000px;
		border: 3px solid black;
		border-collapse: collapse;
	}
	.auctionStateTable tr td{
		border-top:1px solid silver;
		border-bottom:1px solid silver;
		height: 40px;
	}
	
	.auctionStateTable tbody tr td{
		height: 30px;
	}
</style>

	<div class="sellerInformation">
	<input type="hidden" id="auctionNo" value="${auctionVo.auctionNo}">
		<table class="auctionStateTable">
			<c:if test="${auctionVo.auctionState!='END'}">
				<tr>
					<td style="border-top:1px solid silver;	border-bottom:1px solid silver;border-right: 1px solid silver;">
						<a href="#" class="stopAuction" style="color:#fae100;">경매 강제 종료</a>
					</td>
			</c:if>
					<td  style="border-top:1px solid silver;	border-bottom:1px solid silver;">
						<a href="<c:url value='/admin/auction/auctionList.do'/>" class="AuctionList" style="color:#fae100;">경매 목록</a>
					</td>
				</tr>
		</table>
	</div>
	<!--차량사진-->
	<div class="tab7_view dealer">
		<div class="page_tab">
			<ul class="tab7" id="tab6">
				<li class="t7"><a href="#tab6" style="text-decoration: none; color: black; font-size: 1.5em;">◎ 상세정보</a></li>
			</ul>
		</div>
	
		<div class="pagetitle">
			<div class="detailbtn01"> <a href="javascript:Div_carphto_onoff();" style="text-decoration: none; color: black;">
				<pre id="photoOnoffText">◁ 차량 사진 닫기</pre></a>
			</div>
		</div>
		<div class="carphoto">
			<input type="hidden" name="carphto_onoff" id="carphto_onoff" value="on">
			<div id="Div_carphto_onoff" style=" display:block; padding:0 ; " align="center">
				<div class="imgtext">
					<ul class="inline" style="margin-bottom: 20px; margin-top: 10px;">
						<li>본 이미지는 사업적 용도가 아닌 경우 SNS, 카페, 블로그 등에서 자유롭게 사용이 가능합니다.</li>
					</ul>
				</div>
				<div class="photoarea">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture1}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture2}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture3}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture4}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture5}'/>" width="200" alt="차량사진">
				</div>
				<div class="photoarea">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture6}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture7}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture8}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture9}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture10}'/>" width="200" alt="차량사진">
				</div>
				<div class="photoarea">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture11}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture12}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture13}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture14}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture15}'/>" width="200" alt="차량사진">
				</div>
				<div class="photoarea">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture16}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture17}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture18}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture19}'/>" width="200" alt="차량사진">
					<img class="carImg" src="<c:url value='/picture_upload/${acVo.picture20}'/>" width="200" alt="차량사진">
				</div>
				<div id="myModal" class="modal">
					<span class="close">×</span>
						<img class="modal-content" id="img01">
					<div id="caption"></div>
				</div>
			</div>
			<br>
			<div class="detailbottom">
				<dl>
					<dt style="font-weight: bold; font-size: 1.3em;">※책임한계 및 법적고지</dt><br>
					<dd>카카옥션은 판매자가 등록한 매물정보가 노출될 수 있도록 등록 시스템만을 제공하며, <br>
						판매자가 등록한 매물 정보 및 이와 관련한 실제 거래에 대하여 어떤 책임도 부담하지 않습니다.</dd>
				</dl>
			</div>
			<div class="sellerInformation">
				<table>
					<tr>
						<th colspan="2" style="font-size: 15px;height: 35px;">판매자 정보</th>
					</tr>
					<tr>
						<th>판매자</th>
						<td>${acVo.memberName}<a href="#" style="text-decoration: none; color: black;">쪽지</a></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>${acVo.memberHp}</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${acVo.memberAddr}</td>
					</tr>
					<tr>
						<th>매매상사</th>
						<td>${acVo.carCompany}</td>
					</tr>
				</table>
			</div>
			<br>						
		</div>
		<div class="clear"></div>
	</div>
	<br>
	<br><br>
	<div class="rightarea">
		<dt> <strong>차량 옵션 정보</strong> </dt>
			<div class="option">
				<table id="carOptionTable" summary="차량옵션선택" style="font-size: 0.7em">
					<%-- <colgroup>
						<col width="20%">
						<col width="20%">
						<col width="23%">
						<col width="20%">
						<col width="*">
					</colgroup> --%>
					<tbody>
						<tr id="carDetailHeader">
							<th class="h2" scope="row">내/외장옵션</th>
							<th class="h2" scope="row">편의장치1</th>
							<th class="h2" scope="row">편의장치2</th>
							<th class="h2" scope="row">안전장치</th>
							<th class="h2" scope="row">AV/오디오/항법</th>
							<th class="h2" scope="row">튜닝사항</th>
						</tr>
						<tr>
							<td class="opInout">
								<ul>
									<li>
										<input type="checkbox" id="options_95" name="opIn" value="95" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='95' }">
													checked
												</c:if>
											</c:forEach>><label for="options_95">파워윈도우</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_96" name="opIn" value="96" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='96' }">
													checked
												</c:if>
											</c:forEach>><label for="options_96">에어컨</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_97" name="opIn" value="97" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='97' }">
													checked
												</c:if>
											</c:forEach>><label for="options_97">풀오토에어컨</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_98" name="opIn" value="98" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='98' }">
													checked
												</c:if>
											</c:forEach>><label for="options_98">좌/우독립에어컨</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_99" name="opIn" value="99" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='99' }">
													checked
												</c:if>
											</c:forEach>><label for="options_99">가죽시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_100" name="opIn" value="100" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='100' }">
													checked
												</c:if>
											</c:forEach>><label for="options_100">열선시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_101" name="opIn" value="101" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='101' }">
													checked
												</c:if>
											</c:forEach>><label for="options_101">통풍시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_102" name="opIn" value="102" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='102' }">
													checked
												</c:if>
											</c:forEach>><label for="options_102">마사지시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_103" name="opIn" value="103" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='103' }">
													checked
												</c:if>
											</c:forEach>><label for="options_103">버켓시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_104" name="opIn" value="104" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='104' }">
													checked
												</c:if>
											</c:forEach>><label for="options_104">메모리시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_105" name="opIn" value="105" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='105' }">
													checked
												</c:if>
											</c:forEach>><label for="options_105">분할폴딩시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_106" name="opIn" value="106" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='106' }">
													checked
												</c:if>
											</c:forEach>><label for="options_106">운전석전동시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_107" name="opIn" value="107" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='107' }">
													checked
												</c:if>
											</c:forEach>><label for="options_107">동승석전동시트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_108" name="opIn" value="108" disabled
											<c:forEach var="opInNum" items="${opIn }">
												<c:if test="${opInNum=='108' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_108">뒷좌석전동시트</label>
									</li>
								</ul>
								<ul>
									<li>
										<input type="checkbox" id="options_109" name="opOut" value="109" disabled
											<c:forEach var="opOutNum" items="${opOut }">
												<c:if test="${opOutNum=='109' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_109">알루미늄휠</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_110" name="opOut" value="110" disabled
											<c:forEach var="opOutNum" items="${opOut }">
												<c:if test="${opOutNum=='110' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_110">크롬휠</label>
									</li>

									<li>
										<input type="checkbox" id="options_111" name="opOut" value="111" disabled
											<c:forEach var="opOutNum" items="${opOut }">
												<c:if test="${opOutNum=='111' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_111">광폭타이어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_112" name="opOut" value="112" disabled
											<c:forEach var="opOutNum" items="${opOut }">
												<c:if test="${opOutNum=='112' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_112">샤크안테나</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_113" name="opOut" value="113" disabled
											<c:forEach var="opOutNum" items="${opOut }">
												<c:if test="${opOutNum=='113' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_113">데이라이트</label>
									</li>
								</ul>
							</td>
							<td class="opCon">
								<ul>
									<li>
										<input type="checkbox" id="options_38" name="opCon" value="38" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='38' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_38">썬루프</label>
									</li>

									<li>
										<input type="checkbox" id="options_39" name="opCon" value="39" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='39' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_39">파노라마썬루프</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_40" name="opCon" value="40" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='40' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_40">HID/제논램프</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_41" name="opCon" value="41" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='41' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_41">오토라이트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_42" name="opCon" value="42" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='42' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_42">스마트키</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_43" name="opCon" value="43" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='43' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_43">엔진스타트버튼</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_44" name="opCon" value="44" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='44' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_44">라이트세척장치</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_45" name="opCon" value="45" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='45' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_45">주차조향보조시스템</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_46" name="opCon" value="46" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='46' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_46">전자주차브레이크</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_47" name="opCon" value="47" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='47' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_47">이모빌라이져</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_48" name="opCon" value="48" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='48' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_48">트립컴퓨터</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_49" name="opCon" value="49" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='49' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_49">슈퍼비전계기판</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_50" name="opCon" value="50" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='50' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_50">HUD</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_51" name="opCon" value="51" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='51' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_51">나이트비전</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_52" name="opCon" value="52" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='52' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_52">ECM룸미러</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_53" name="opCon" value="53" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='53' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_53">크루즈컨트롤</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_54" name="opCon" value="54" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='54' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_54">에어서스펜션</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_55" name="opCon" value="55" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='55' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_55">전동트렁크</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_56" name="opCon" value="56" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='56' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_56">타이어공기압경보</label>
									</li> 
								</ul>
							</td>
							<td class="opCon">
								<ul> 
									<li>
										<input type="checkbox" id="options_57" name="opCon" value="57" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='57' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_57">파워핸들</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_58" name="opCon" value="58" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='58' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_58">히팅핸들</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_59" name="opCon" value="59" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='59' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_59">리모컨핸들</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_60" name="opCon" value="60" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='60' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_60">가죽/우드핸들</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_61" name="opCon" value="61" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='61' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_61">속도감응식핸들</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_62" name="opCon" value="62" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='62' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_62">원격시동장치</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_63" name="opCon" value="63" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='63' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_63">무선도어리모컨</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_64" name="opCon" value="64" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='64' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_64">유아시트고정장치</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_65" name="opCon" value="65" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='65' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_65">패들쉬프트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_66" name="opCon" value="66" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='66' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_66">압축도어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_67" name="opCon" value="67" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='67' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_67">자동도어잠금</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_68" name="opCon" value="68" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='68' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_68">자동슬라이딩도어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_69" name="opCon" value="69" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='69' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_69">전동접이식미러</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_70" name="opCon" value="70" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='70' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_70">냉장고</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_71" name="opCon" value="71" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='71' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_71">루프캐리어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_72" name="opCon" value="72" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='72' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_72">에어스카프</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_73" name="opCon" value="73" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='73' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_73">공기청정기</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_74" name="opCon" value="74" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='74' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_74">전동햇빛가리개</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_75" name="opCon" value="75" disabled
											<c:forEach var="opConNum" items="${opCon }">
												<c:if test="${opConNum=='75' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_75">레인센서와이퍼</label>
									</li> 
								</ul>
							</td>
							<td class="opSafe">
								<ul>
									<li>
										<input type="checkbox" id="options_76" name="opSafe" value="76" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='70' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_76">운전석에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_77" name="opSafe" value="77" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='77' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_77">동승석에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_78" name="opSafe" value="78" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='78' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_78">측면에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_79" name="opSafe" value="79" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='79' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_79">커튼에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_80" name="opSafe" value="80" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='80' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_80">승객감지에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_81" name="opSafe" value="81" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='81' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_81">무릎보호에어백</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_82" name="opSafe" value="82" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='82' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_82">액티브헤드레스트</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_83" name="opSafe" value="83" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='83' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_83">ABS</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_84" name="opSafe" value="84" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='84' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_84">BAS</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_85" name="opSafe" value="85" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='85' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_85">EBD</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_86" name="opSafe" value="86" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='86' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_86">ECS</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_87" name="opSafe" value="87" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='87' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_87">LSD</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_88" name="opSafe" value="88" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='88' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_88">TCS</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_89" name="opSafe" value="89" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='89' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_89">VDC/ESP</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_90" name="opSafe" value="90" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='90' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_90">전,측면감지센서</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_91" name="opSafe" value="91" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='91' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_91">후방감지센서</label>
									</li>
									<li>
										<input type="checkbox" id="options_92" name="opSafe" value="92" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='92' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_92">전방카메라</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_93" name="opSafe" value="93" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='93' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_93">후방카메라</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_94" name="opSafe" value="94" disabled
											<c:forEach var="opSafeNum" items="${opSafe }">
												<c:if test="${opSafeNum=='94' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_94">차선이탈경보장치</label>
									</li>
								</ul>
							</td>
							<td class="opAa">
								<ul>
									<li>
										<input type="checkbox" id="options_114" name="opAa" value="114" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='114' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_114">내비게이션</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_115" name="opAa" value="115" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='115' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_115">하이패스</label>
									</li>
									<li>
										<input type="checkbox" id="options_116" name="opAa" value="116" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='116' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_116">블랙박스</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_117" name="opAa" value="117" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='117' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_117">핸즈프리</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_118" name="opAa" value="118" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='118' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_118">블루투스</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_119" name="opAa" value="119" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='119' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_119">CD플레이어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_120" name="opAa" value="120" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='120' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_120">CD체인저</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_121" name="opAa" value="121" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='121' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_121">DVD플레이어</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_122" name="opAa" value="122" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='122' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_122">DMB</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_123" name="opAa" value="123" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='123' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_123">DivX</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_124" name="opAa" value="124" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='124' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_124">MP3</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_125" name="opAa" value="125" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='125' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_125">AUX</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_126" name="opAa" value="126" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='126' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_126">USB</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_127" name="opAa" value="127" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='127' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_127">아이팟단자</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_128" name="opAa" value="128" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='128' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_128">앞좌석TV</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_129" name="opAa" value="129" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='129' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_129">뒷좌석TV</label>
									</li> 
									 
									<li>
										<input type="checkbox" id="options_130" name="opAa" value="130" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='130' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_130">엠프</label>
									</li>  
									
									<li>
										<input type="checkbox" id="options_131" name="opAa" value="131" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='131' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_131">우퍼</label>
									</li>
									
									<li>
										<input type="checkbox" id="options_132" name="opAa" value="132" disabled
											<c:forEach var="opAaNum" items="${opAa }">
												<c:if test="${opAaNum=='132' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_132">모젠시스템</label>
									</li>
								</ul>
							</td>
							<td class="opTune">
								<ul>
			               		<li>
				               		<input type="checkbox" name="opTune" id="options_133" value="133" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='133' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_133">흡기</label>
								</li>
								
			               		<li>
				               		<input type="checkbox" name="opTune" id="options_134" value="134" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='134' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_134">배기</label>
								</li>
								
			               		<li>
				               		<input type="checkbox" name="opTune" id="options_135" value="135" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='135' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_135">미션</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_136" value="136" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='136' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_136">핸들</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_137" value="137" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='137' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_137">계기판</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_138" value="138" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='138' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_138">ECU맵핑</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_139" value="139" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='139' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_139">터보차저</label>
								</li>
			               		
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_140" value="140" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='140' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_140">슈퍼차저</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_141" value="141" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='141' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_141">다운스프링</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_142" value="142" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='142' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_142">일체형쇼바</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_143" value="143" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='143' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_143">NA튜닝</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_144" value="144" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='144' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_144">오디오</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_145" value="145" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='145' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_145">스트럿바</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_146" value="146" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='146' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_146">스테빌라이저</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_147" value="147" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='147' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_147">엔진스왑</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_148" value="148" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='148' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_148">브레이크</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_149" value="149" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='149' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_149">스포일러</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_150" value="150" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='150' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_150">휠/타이어</label>
								</li>
								
			               		<li >
				               		<input type="checkbox" name="opTune" id="options_151" value="151" disabled
											<c:forEach var="opTuneNum" items="${opTune }">
												<c:if test="${opTuneNum=='151' }">
													checked
												</c:if>
											</c:forEach>> <label for="options_151">에어로파츠</label>
								</li>
			               	</ul>
						</td>
					</tr>
				</tbody>
			</table> 
		</div>
	</div>
	<br>
	<a href="#" style="text-decoration: none; color: black;" id="top">TOP</a>
	<br>

		<div>
			<c:if test="${auctionVo.auctionState!='END'}">
				<tr>
					<td>
						<a href="#" class="stopAuction" style="color:#fae100;">경매 강제 종료</a>
					</td>
					<td>
						<a href="<c:url value='/admin/auction/auctionList.do'/>" class="AuctionList" style="color:#fae100;">경매 목록</a>
					</td>
				</tr>
			</c:if>
		</div>

</div>
