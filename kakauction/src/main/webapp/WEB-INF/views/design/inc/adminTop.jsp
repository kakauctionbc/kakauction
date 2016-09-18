<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
$(function(){
  var show = $('#headmenu');
  var content = $('#headmenu-content');
  	show.hover(function(){
  		content.slideDown(500);
  	});
  	content.hover(function(){
  		content.addClass('Fixed');
  	}, function(){
		content.slideUp('fast');
	});
});

</script>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/adminlayout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/list.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/carList.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/adminCarDetail.css" />
<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
</head>
<body style="overflow-x:hidden; overflow:visible;">
	<div id="wrap">
	<header>
	<!-- header -->
		<div id="header">
			<div id=headerdiv>
				<ul>					
					<!-- 로그인이 안된 경우 -->	
					<c:if test="${empty sessionScope.memberId }">
						<li><a href="<c:url value='/board/list.do'/>">고객센터</a></li>					
						<li><a href="<c:url value='/member/agreement.do'/>" id="boderli">회원가입</a></li>
						<li><a href="<c:url value='/login/login.do'/>">로그인</a></li>
					</c:if>
					<!-- 로그인된 경우 -->
					<c:if test="${!empty sessionScope.memberId }">
						<li><a href="<c:url value='/member/memberOut.do'/>" >회원탈퇴</a></li>	            
						<li><a href="<c:url value='/member/pwdCheck.do'/>" id="boderli">회원정보수정</a></li>	            
						<li><a href="<c:url value='/login/logout.do'/>">로그아웃</a></li>
						<li>
							<span style="font-size:1em; color:blue;">
								${sessionScope.memberName}님</span>
						</li> 
					</c:if>
				</ul>
			</div>
		</div>
	</header>
	<div id="middle">
		<div id="middlediv">
			<div id="wraplogo">
				<a href="<c:url value='/admin/index.do'/>">
				<img alt="로고 이미지" src="<c:url value='/img/logo.png'/>" /></a>
			</div>
			<div id="headmenu">
				<ul>
					<li><a href="<c:url value='/admin/auction/auctionWrite.do'/>">차량 관리</a></li>
					<li><a href="<c:url value='/admin/member/memberList.do'/>">회원관리</a></li>
					<li><a href="<c:url value='/admin/auction/auctionList.do'/>">컨텐츠 관리</a></li>
					<li><a href="<c:url value='/admin/qna/qnalist.do'/>">QNA 관리</a></li>
				</ul>
			</div>
		</div>
	</div>
		<div id="headmenu-content">
			<div id="content-auction">
				<ul>
					<li><a href="<c:url value='/admin/auction/auctionWrite.do'/>">경매신청</a></li>
					<li><a href="<c:url value='/admin/auction/auctionList.do'/>">경매목록</a></li>
					<li><a href="<c:url value='/admin/auction/auctionSuccess.do'/>">낙찰경매현황</a></li>
					<li><a href="<c:url value='/admin/auction/auctionDenyList.do'/>">경매거부 목록</a></li>
				</ul>
			</div>
			<div id="content-member">
				<ul>
					<li><a href="<c:url value='/admin/member/memberList.do'/>">회원 정보 조회</a></li>
					<li><a href="<c:url value='/admin/excel/uploadExcel.do'/>">회원 엑셀 일괄등록</a></li>
					<li><a href="<c:url value='/admin/member/auctionMember.do'/>">경매 회원 조회</a></li>
				</ul>
			</div>
			<div id="content-info">
				<ul>
					<li><a href="<c:url value='/report/auctionReport.do'/>">불량경매신고</a></li>
					<li><a href="<c:url value='/freeboard/myFreeboardList.do'/>">내가 쓴 글</a></li>
				</ul>
			</div>
			<div id="content-notice">
				<ul>
					<li><a href="<c:url value='/notice/list.do'/>">공지사항</a></li>
					<li><a href="<c:url value='/qna/list.do'/>">QNA</a></li>
					<li><a href="#">이용안내</a></li>
				</ul>
			</div>
		</div>
