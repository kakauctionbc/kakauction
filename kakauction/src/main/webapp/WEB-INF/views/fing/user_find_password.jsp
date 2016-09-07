<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#pwsearch").click(function(event){
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
</head>

<h2 align="center">비밀번호 찾기</h2>
<div align="center">
<p>회원가입시 등록했던 이메일로 비밀번호를 이메일로 보내드립니다.</p>
<form action="<c:url value="/fing/user_find_password.do"/>" name="pwsearch" id="pwsearch" method="post" >
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
		
	</table>
	<input type="hidden" id="memberPwd" name="memberPwd" value="${memberPwd }">
</form>
</div>
<%@ include file="../design/inc/bottom.jsp"%>