<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
<script type="text/javascript">
	
</script>
<div id="wrap">
	<div id="registerwrap">
		<div id="registertop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>일반회원가입
			</p>
		</div>
		<div id="registerlogo">
			<img src="${pageContext.request.contextPath }/img/register_logo.png" alt="로그인로고">
		</div>
		<div id="step">
		<img src="${pageContext.request.contextPath }/img/register_step3.png" alt="스텝로고">
		</div>
		<div id="register_ok">
			<h1>회원가입이 완료되었습니다.</h1>
			<p>KAKAUCTION에서 사용하실계정은 ${memberId}입니다.</p>
			<div id="register_button">
				<button type="submit" id="register_ok_login" 
				onclick="location.href='${pageContext.request.contextPath }/login/login.do'">로그인하러 가기</button>
				<button type="submit" id="register_ok_main" 
				onclick="location.href='${pageContext.request.contextPath }/design/index.do'">메인홈으로</button>
			</div>
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>