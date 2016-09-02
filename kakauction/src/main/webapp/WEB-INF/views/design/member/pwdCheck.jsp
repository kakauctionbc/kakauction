<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#userid").focus();
		
		$("#frmLogin").submit(function(){
			if($("#userid").val().length<1){
				alert("아이디를 입력하세요");
				$("#userid").focus();
				return false;
			}else if($("#pwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#pwd").focus();
				return false;
			}
		});
	});
	
</script>
<div id="wrap">
	<div id="loginwrap">
		<div id="logintop">
			<p><a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>로그인</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/pwdCheck_logo.png" alt="비밀번호확인">
		</div>
		<div id="loginp">
			<p>
				안전한 카카옥션 사용을 위해 비밀번호를 다시 한 번 입력해주세요.
			</p>
		</div>

		<div class="simpleForm">
			<form name="frmLogin" id="frmLogin" method="post" 
				action="<c:url value='/design/member_edit.do'/>" >
				<fieldset>
					<div>
						<label for="userid" class="label">
							아이디</label>
						<input type="text" name="userid"
							id="userid" 
							value="${cookie.ck_userid.value}">
					</div>
					<div>	
						<label for="pwd"  class="label">
							비밀번호</label>
						<input type="password" name="pwd"
							id="pwd">
					</div>
						<button type="submit" id="pwdCheck_btn">확인</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>