<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#memberPwd").focus();
		
		$("#frmOut").submit(function(){
			if($("#memberPwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#memberPwd").focus();
				return false;
			}	
		});
	});
</script>
<div id="wrap">
	<div id="loginwrap">
		<div id="logintop">
			<p><a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원탈퇴</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/memberOut_logo.png" alt="회원탈퇴">
		</div>
		<div id="loginp">
			<p>
				안전한 카카옥션 사용을 위해 비밀번호를 다시 한 번 입력해주세요.
			</p>
		</div>
		<div class="simpleForm">
			<form name="frmLogin" id="frmLogin" method="post" action="<c:url value='/member/memberOut.do'/>">
				<fieldset>
					<div>
						<label for="userid" class="label">아이디</label>
						<input type="text" name="memberId" id="memberId" value="${memberId }" readonly="readonly">
					</div>
					<div>
						<label for="memberPwd">비밀번호</label>
						<input type="password" name="memberPwd" id="memberPwd">
					</div>
					<div style="width:100%; margin-top: 20px;">
						<button type="submit" id="pwdCheck_btn">회원탈퇴</button>
						<input type="reset" value="취소">
						<button type="reset" onclick="location.href='${pageContext.request.contextPath }/design/index.do'" id="pwdCheck_main">메인페이지</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>






