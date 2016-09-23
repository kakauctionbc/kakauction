<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<style>
#loginp p{
	font-size: 1.2em;
}
#join{
	margin-left: 42px;
}
#join label{
	width: 160px;
	margin-right: 27px;
}
#searchpwd{
	margin-left: 30px;
}
#searchpwd label{
	width:200px;
}
.name{
	margin-left: 30px;
}
.result{
	width:400px;
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
		$("#findId").click(function(event){
			if($("#memberName").val().length < 1){
				alert("이름을 입력하세요");
				$("#memberName").focus();
				return false;
			} else if($("#memberBirth").val().length < 1){
				alert("생년월일을 입력하세요");
				$("#memberBirth").focus();
				return false;
				
			}
		});
	});	
</script>
<style type="text/css">
#userfind_btn{
	background-color: #f2f2ee;
    color: black;
    cursor: pointer;
    width: 80px;
    height:30px;
	border-radius: 10%;
	box-shadow: 0 5px 5px lightgray;
	font-weight: bold;
	margin-left: 95px;
	float: left;
}
</style>
<div id="wrap">
	<div id="loginwrap">
		<div id="logintop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>로그인>아이디찾기
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/id_logo.png" alt="아이디 찾기">
		</div>
		<div id="loginp">
			<p>
				이름과 휴대폰 번호를 입력하세요 '-'포함 예)010-1234-5678
			</p>
		</div>
		<div class="simpleForm">
			<form action="<c:url value='/fing/user_find_id.do'/>" name="findId" id="findId" method="post">
				<fieldset>
					<div class="name">
						<label for="memberName" class="label">
							이름</label>
						<input type="text" name="memberName" id="memberName" value="${param.memberName}" style="width: 200px;">
						
					</div>
					<div class="hp">	
						<label for="memberHp"  class="label">
							휴대번호</label>
						<input type="text" name="memberHp" id="memberHp" value="${param.memberHp}" style="width: 200px;">
					</div>
					<div style="width:100%; margin-top: 20px;">
						<button type="submit" id="userfind_btn">확인</button>
						<button type="reset" onclick="location.href='${pageContext.request.contextPath }/design/index.do'" id="pwdCheck_main">취소</button>
					</div>
				</fieldset>
				<div style="width: 400px; height: 30px; border-top: 1px solid silver; margin-top: 20px;"></div>
				<table class="result">
					<tr class="color">
						<th>ID 찾기</th>					
					<tr>
					<tr class="color2">
						<td>
							<c:if test="${!empty memberId}">
							<p>귀하의 아이디는 <span>${memberId }</span> 입니다.</p>
							</c:if>		
						</td>			
					<tr>
				</table>
			</form>
				<div style="width: 400px; height: 5px; border-top: 1px solid silver;"></div>
				<div id="join">
					<label for="join" class="label">※ 회원이 아니신가요?</label>
					<button type="submit"
						onclick="location.href='${pageContext.request.contextPath }/member/register.do'">회원가입</button>
				</div>
				<div id="searchpwd">
					<label for="searchpwd" class="label">※ 비밀번호를 잊으셨나요?</label>
					<button type="submit"
						onclick="location.href='${pageContext.request.contextPath }/fing/user_find_password.do'">비밀번호</button>
				</div>
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>