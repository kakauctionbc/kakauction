<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
<script type="text/javascript">
	
</script>
<div id="wrap">
	<div id="registerwrap">
		<div id="registertop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원탈퇴
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/memberOut_logo.png" alt="로그인로고">
		</div>

		<div id="register_ok">
			<h1>회원탈퇴가 완료되었습니다.</h1>
			<div id="register_button">
				<button type="submit" id="register_ok_login" 
				onclick="location.href='${pageContext.request.contextPath }/design/index.do'">메인홈으로</button>
			</div>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>