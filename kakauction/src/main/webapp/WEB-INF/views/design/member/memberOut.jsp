<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			if (confirm("Are you sure?") == true){
				return true;
			}else{ 
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
			<form name="frmLogin" id="frmLogin" method="post" 
				action="<c:url value='/design/memberOut_ok.do'/>" >
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
					<div style="width:100%; margin-top: 20px;">
						<button type="submit" id="pwdCheck_btn">회원탈퇴</button>
						<button type="reset" onclick="location.href='${pageContext.request.contextPath }/design/index.do'" id="pwdCheck_main">메인페이지</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>