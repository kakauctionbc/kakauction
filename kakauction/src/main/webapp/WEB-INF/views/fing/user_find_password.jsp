<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<style>
	#loginp p{
		font-size: 1.2em;
	}
	#join{
		margin-left: 30px;
	}
	#searchpwd{
		margin-left: 30px;
	}
	.name{
		margin-left: 30px;
	}
	.result{
		width:500px;
	}
	.result td{
		text-align: center;
	}
	tr{
		height: 15px;
	}
	h1{
		font-size: 2em;
		font-weight: bold;
		margin-bottom: 10px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#pwsearch").submit(function(event){
			if($("#memberId").val().length < 1){
				alert("아이디를 입력하세요");
				$("#memberId").focus();
				return false;
			} else if($("#memberEmail").val().length < 1){
				alert("이메일을 입력하세요");
				$("#memberEmail").focus();
				return false;
				
			}
		});
	});
		
</script>
<div id="wrap">
	<div id="loginwrap">
		<div id="logintop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>로그인>비밀번호찾기
			</p>
		</div>
		<div id="pagelogo">
			<%-- <img src="${pageContext.request.contextPath }/img/memberOut_logo.png"
				alt="아이디 찾기"> --%>
			<h1>비밀번호 찾기</h1>
		</div>
		<div id="loginp">
			<p>
				아래 정보를 입력하여 주십시오. 임시비밀번호를 문자로 전송해드립니다.
			</p>
		</div>
		<div class="simpleForm">
			<form action="<c:url value="/fing/user_find_password.do"/>" name="pwsearch" id="pwsearch" method="post" >
				<fieldset>
					<div class="memberId">
						<label for="memberId" class="label">
							아이디</label>
						<input type="text" name="memberId" id="memberId">
					</div>
					<div class="jumin">	
						<label for="memberEmail"  class="label">
							이메일</label>
						<input type="text" name="memberEmail" id="memberEmail">
					</div>
					<div style="width:100%; margin-top: 20px;">
						<button type="submit" id="pwdCheck_btn">확인</button>
						<button type="reset" onclick="location.href='${pageContext.request.contextPath }/design/index.do'" id="pwdCheck_main">취소</button>
					</div>
				</fieldset>
				<!-- 
				<table border="1" >
					<tr>
						<td>아이디</td>
						<td>e-mail</td>
					</tr>
					<tr>
						<td><input type="text" name="memberId"/></td>
						<td><input type="email" name="memberEmail" /></td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="submit" value="비밀번호 찾기 "/></td>
					</tr>
					
				</table> -->
				<input type="hidden" id="memberPwd" name="memberPwd" value="${memberPwd }">
				<article>
					<div style="width: 100%; height: 30px;"></div>
					<div id="join">
						<label for="join" class="label">※ 회원이 아니신가요?</label>
						<button type="submit"
							onclick="location.href='${pageContext.request.contextPath }/member/register.do'">회원가입</button>
					</div>
					<div id="searchpwd">
						<label for="searchpwd" class="label">※ 아이디를 잊으셨나요?</label>
						<button type="submit"
							onclick="location.href='${pageContext.request.contextPath }/fing/user_find_id'">아이디</button>
					</div>
				</article>
			</form>
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>