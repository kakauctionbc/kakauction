<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/layout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/register.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/list.css" />
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("input[type=radio]").change(function(){
			if($(this).val()=="기타"){
				$("#repoCon").css("visibility", "visible");
				$("#repoCon").focus();
			}else{
				$("#repoCon").val("").css("visibility", "hidden");
			}
		});
		
		$("#cancel").click(function(){
			self.close();
		});
		
		
		/* $("#frmReport").submit(function(){
			if(!$("#freeboardreportContent").is(":checked")){
				alert("신고사유를 선택해야 합니다.");
				event.preventDefault();
				$("#freeboardreportContent").focus();
			}else{
				return true;
			}
		}); */
	});//document.ready
</script>	
<style>
	.reportForm{
		margin-left: 10px;
		margin-right: 10px;
	}
	.title{
		background-color: #fae100;
		height: 50px;
	}
	.title_font{
		font-weight: bold;
		font-size: 1.5em;
		padding-top: 15px;
		padding-left: 5px;
	}
	.menu{
		margin-top: 15px;
		margin-bottom: 15px;
	}
	.fr1{
		font-weight: bold;
		font-size: 1.2em;
		padding-left: 5px;
	}
	.fr2{
		font-size: 1.2em;
	}
	.reportType li{
		margin-top:5px;
		margin-left:75px;
	}
	.text_area{
		margin-top:5px;
		margin-left:80px;
	}
	.advertising{
		margin-left: -50px;
	}
</style>
<div class="reportForm">
	<form action="<c:url value='/freeboard/freeboardReport.do'/>" method="post" name="frmReport" id="frmReport">
		<input type="hidden" name="freeboardNo" id="freeboardNo" value="${freeVo.freeboardNo }">
		<input type="hidden" name="freereportTitle" id="freereportTitle" value="${freeVo.freeboardTitle }">
		
		<div class="title">
			<h1 class="title_font">신고하기</h1>
		</div>
		<div class="menu">
			<span class="fr1">제   목 : </span>
			<span class="fr2">${freeVo.freeboardTitle }</span><br>
			<span class="fr1">작성자 : </span>
			<span class="fr2">${freeVo.memberId }</span>
		</div>
		<hr>
		<div class="menu">
			<span class="fr1">사유선택 : </span>
			<span class="fr2" style="color: #848484">여러 사유에 해당되는 경우, 대표적인 사유 1개를 선택해 주세요</span>
			<a href="#">운영원칙 자세히 보기 ▶</a>
			<ul class="reportType">
				<li>
					<input type="radio" name="freereportType" id="freereportType" value="광고글">
					<label class="fr2" for="freereportType">부적절한 홍보 게시글</label>
					<span class="more"><a href="#">더보기</a></span>
					<ul class="advertising">
						<li>불법 사행성, 도박 사이트를 홍보하는 경우</li>
						<li>개인정보, 이미테이션, 성인의약품, 마약, 대포폰 등 불법 제품 및<br>
							 정보를 홍보, 판매하는 경우</li>
						<li>성매매, 장기매매등의 신체 관련 거래 정보</li>
						<li>홍보/스팸성 내용을 반복하여 등록하는 경우</li>
					</ul>
				</li>
				<li>
					<input type="radio" name="freereportType" id="freereportType" value="음란물">
					<label class="fr2" for="freereportType">음란성 또는 청소년에게 부적합한 내용</label>
					<span class="more"><a href="#">더보기</a></span>
					<ul class="advertising">
						<li>음란물 또는 음란한 행위(노골적인 성행위 장면)를 묘사하는 이미지/동영상</li>
						<li>살해/상해/폭력 등 잔인한 장면을 묘사하는 이미지/동영상</li>
						<li>중고 속옷 판매, 가출 유도 등의 청소년 유해 정보 공유</li>
					</ul>
				</li>
				<li>
					<input type="radio" name="freereportType" id="freereportType" value="기타">
					<label class="fr2" for="freereportType">기타</label>
				</li>
			</ul>
			<textarea class="text_area" name="freereportContent" id="repoCon" rows="7" cols="100" style="visibility: hidden"></textarea>
			</div>
		<hr>
		<div class="menu">
			<span class="fr1">잠깐!</span>
			<span class="fr2">만일, 허위 사실을 신고한 경우 무고죄로 형사처분 또는 징계처분을 받게 됩니다.</span>
		</div>
		<div id="btn_area">
			<ul>
				<li id="btn_register">
					<button type="submit" id="btReport">신고하기</button>
				</li>
				<li id="btn_cancel">
					<button id="cancel">취소</button>
				</li>
			</ul>
		</div>
	</form>
</div>
