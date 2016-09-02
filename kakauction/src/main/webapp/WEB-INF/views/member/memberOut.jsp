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
<article class="simpleForm">
	<form name="frmOut" id="frmOut" method="post" 
		action="<c:url value='/member/memberOut.do'/>">
		<fieldset>
			<legend>비밀번호재확인</legend>
			<p class="p">안전한 카카옥션 사용을 위해 비밀번호를 다시 한 번 입력해주세요</p>
			<div>
				<label for="memberId">아이디</label>
				<input type="text" name="memberId" id="memberId" value="${memberId }" readonly="readonly">
			</div>
			<div>
				<label for="memberPwd">비밀번호</label>
				<input type="password" name="memberPwd" id="memberPwd">
			</div>
			<div class="align_center">
				<input type="submit" value="회원탈퇴">
				<input type="reset" value="취소">
			</div>
		</fieldset>
	</form>
</article>
<%@ include file="../design/inc/bottom.jsp"%>






