<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/clear.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/mystyle.css"/>
<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
</head>

<body>	
	<!-- header -->				
	<header id="header">
			<ul class="views">					
				<li><a href="<%=request.getContextPath()%>/main/index.jsp">마이페이지</a></li>
				<li>|</li>
				<li><a href="<%=request.getContextPath()%>/main/index.jsp">회원가입</a></li>
				<li>|</li>
				<li><a href="<%=request.getContextPath()%>/main/index.jsp">로그인</a></li>
			</ul>				
	</header>
	<div id="wraplogo">
		<a href="<%=request.getContextPath()%>/main/index.jsp">
			<img alt="로고 이미지" src="<%=request.getContextPath()%>/img/logo.png" /></a>
	</div>
	<div id="mainsearch">
		<select id="totalsearch" name="search">
		    <option id="total" value="통합검색">통합검색</option>
		    <option value="판매자">판매자</option>
		    <option value="차종">차종</option>
		</select>
		<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" onmousedown="" value="" type="text"  />
		<p id="btn"><img src="<%=request.getContextPath()%>/img/search.jpg" alt="검색" onclick="" width="35px" height="35px"/></p>
	</div>
	<div id="headmenu">
		<ul>
			<li><a href="<%=request.getContextPath()%>/main/in">내차 잘 팔기</a></li>
			<li><a href="<%=request.getContextPath()%>/main/in">내차 잘 사기</a></li>
			<li><a href="<%=request.getContextPath()%>/main/in">마이페이지</a></li>
			<li><a href="<%=request.getContextPath()%>/main/in">고객센터</a></li>
		</ul>
	</div>
</body>
	<div id="test">
	</div>

