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
<div id="loginwrap">
	<div id="logintop">
		<p><a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>로그인</p>
	</div>
	<div id="loginlogo">
		<img src="${pageContext.request.contextPath }/img/login_logo.png" alt="로그인로고">
	</div>
	<div id="loginp">
		<p>
			카카옥션 사이트 방문을 환영합니다.<br>
			사이트의 원활한 사용을 위하여 로그인을 해주시기 바랍니다.
		</p>
	</div>
	<form method='' action='' id="memberradio">
		<input TYPE='radio' id='memberY' name='membercheck' value='회원' /><label for='memberY'>개인회원</label> 
		<input TYPE='radio' id='memberN' name='membercheck' value='비회원' /><label for='memberN'>경매회원</label> 
	</form>
	<div class="simpleForm">
		<form name="frmLogin" id="frmLogin" method="post" 
			action="<c:url value='/login/login.do'/>" >
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
					<button type="submit" id="loginbutton">Login</button>
					<input type="checkbox" name="chkSave"
						id="chkSave">
					<label for="chkSave">아이디 저장하기</label>
			</fieldset>
			<div id="loginlb">
				<label for="userid" class="label">아이디</label>
				<label for="userid" class="label">아이디</label>
				<label for="userid" class="label">아이디</label>
			<div>
			<div id="loginbt">
				<button type="submit" id="loginbutton">Login</button>
				<button type="submit" id="loginbutton">Login</button>
				<button type="submit" id="loginbutton">Login</button>

			</div>
		</form>
		
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>