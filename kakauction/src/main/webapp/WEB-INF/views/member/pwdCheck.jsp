<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>개인정보 변경을 위해서 비밀번호 확인이 필요합니다.</h3>
	<form name="frmCheck" id="frmCheck" method="post" action="<c:url value='/member/memberEdit.do'/>">
		<input type="password" id="memberPwd" name="memberPwd">
		<input type="submit" value="확인">
	</form>