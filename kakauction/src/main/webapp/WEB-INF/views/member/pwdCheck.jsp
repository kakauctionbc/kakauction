<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article class="simpleForm">
	<form name="frmCheck" id="frmCheck" method="post"
		action="<c:url value='/member/memberCheck.do'/>">
		<fieldset>
			<legend>비밀번호재확인</legend>
			<p class="p">개인정보 변경을 위해서 비밀번호 확인이 필요합니다.</p>
			<div>
				<label for="memberId">아이디</label> <input type="text" name="memberId"
					id="memberId" value="${memberId }" readonly="readonly">
			</div>
			<div>
				<label for="memberPwd">비밀번호</label> <input type="password"
					name="memberPwd" id="memberPwd">
			</div>
			<div class="align_center">
				<input type="submit" value="확인">
			</div>
		</fieldset>
	</form>
</article>