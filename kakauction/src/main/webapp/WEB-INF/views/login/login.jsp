<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
<script type="text/javascript" src="<c:url value='/js/member.js'/>"></script>
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
	<div class="simpleForm">
		<form name="frmLogin" id="frmLogin" method="post" 
			action="<c:url value='/login/login.do'/>" >
			<fieldset>
				<div>
					<label for="userid" class="label">아이디</label>
					<input type="text" name="memberId" id="memberId" value="${cookie.ck_userid.value}">
				</div>
				<div>	
					<label for="pwd"  class="label">비밀번호</label>
					<input type="password" name="memberPwd" id="memberPwd">
				</div>
					<button type="submit" id="loginbutton">Login</button>
					<input type="checkbox" name="chkSave"
						id="chkSave"
						<c:if test="${!empty cookie.ck_userid }">
							checked
						</c:if>
					>
					<label for="chkSave">아이디 저장하기</label>
			</fieldset>
		</form>
			<article>
			<div style="width: 100%; height: 30px;"></div>
				<div id="join">
				<label for="join" class="label">※ 회원이 아니신가요?</label>
					<button type="submit" onclick="location.href='${pageContext.request.contextPath }/member/register.do'">회원가입</button>
				</div>
				<div id="searchid">
					<label for="searchid" class="label">※ 아이디를 잊으셨나요?</label>
					<button type="submit">아이디</button>
				</div>
				<div id="searchpwd">
					<label for="searchpwd" class="label">※ 비밀번호를 잊으셨나요?</label>
					<button type="submit">비밀번호</button>
				</div>
			</article>
		</div>
	</div>
	<a href="<c:url value='/member/memberEdit.do'/>">회원정보수정</a>
</div>
<%@ include file="../design/inc/bottom.jsp"%>