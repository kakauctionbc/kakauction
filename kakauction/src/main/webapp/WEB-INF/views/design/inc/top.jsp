<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/layout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/register.css" />
<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
</head>
<body style="overflow-x:hidden; overflow-y:auto;">
	<div id="wrap">
	<header>
	<!-- header -->
		<div id="header">
				<ul class="views">					
					<!-- 로그인이 안된 경우 -->	
					<c:if test="${empty sessionScope.memberId }">
						<li><a href="<c:url value='/board/list.do'/>">고객센터</a></li>					
						<li>|</li>
						<li><a href="<c:url value='/design/agreement.do'/>">회원가입</a></li>
						<li>|</li>	            
						<li><a href="<c:url value='/design/login.do'/>">로그인</a></li>
					</c:if>
					<!-- 로그인된 경우 -->
					<c:if test="${!empty sessionScope.memberId }">
						<li><a href="<c:url value='/design/memberOut.do'/>">회원탈퇴</a></li>	            
						<li><a href="<c:url value='/design/pwdCheck.do'/>">회원정보수정</a></li>	            
						<li><a href="<c:url value='/design/logout.do'/>">로그아웃</a></li>
						<li>
							<span style="font-size:1em; color:blue;">
								${sessionScope.memberName}님</span>
						</li> 
					</c:if>
					
				</ul>				
		</div>
	</header>
	<div id="middle">
		<div id="wraplogo">
			<a href="${pageContext.request.contextPath }/design/index.do">
			<img alt="로고 이미지" src="${pageContext.request.contextPath }/img/logo.png" /></a>
		</div>
		<div id="mainsearch">
			<select id="totalsearch" name="search">
		    <option id="total" value="통합검색">통합검색</option>
		    <option value="판매자">판매자</option>
		    <option value="차종">차종</option>
			</select>
			<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" onmousedown="" value="" type="text"  />
			<p id="search_btn"><a href=""><img src="<%=request.getContextPath()%>/img/search.png" alt="검색" onclick="" width="25px" height="25px"/></a></p>
		</div>

		<div id="headmenu">
			<ul>
				<li><a href="<%=request.getContextPath()%>/main/in">내차 잘 팔기</a></li>
				<li><a href="<%=request.getContextPath()%>/main/in">내차 잘 사기</a></li>
				<li><a href="<%=request.getContextPath()%>/main/in">마이페이지</a></li>
				<li><a href="<%=request.getContextPath()%>/main/in">고객센터</a></li>
			</ul>
		</div>
	</div>
		<div id="headmenu-content">
			<div id="content-member">
					<ul>
					<li><a href="#">회원가입</a></li>
					<li><a href="#">회원정보수정</a></li>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">찾아오시는 길</a></li>
				</ul>
			</div>
			<div id="content-sell">
				<ul>
					<li><a href="#">바로팔기</a></li>
					<li><a href="#">경매신청</a></li>
				</ul>
			</div>
			<div id="content-buy">
				<ul>
					<li><a href="#">바로사기</a></li>
					<li><a href="#">일정안내</a></li>
					<li><a href="#">경매리스트</a></li>
					<li><a href="#">공매리스트</a></li>
				</ul>
			</div>
			<div id="content-myinfo">
				<ul>
					<li><a href="#">출품현황</a></li>
					<li><a href="#">경매낙찰현황</a></li>
					<li><a href="#">공매입찰현황</a></li>
					<li><a href="#">클레임신청현황</a></li>
					<li><a href="#">관심물품</a></li>
					<li><a href="#">포인트</a></li>
				</ul>
			</div>
			<div id="content-notice">
				<ul>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">시세</a></li>
					<li><a href="#">이용안내</a></li>
				</ul>
			</div>
		</div>
