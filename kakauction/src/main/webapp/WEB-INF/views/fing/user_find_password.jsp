<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
		/* function search(){
			if((pwsearch.id.value!=null)&&(pwsearch.email.value!=null)){
				pwsearch.submit();
			}else if(pwsearch.id.value==null) {
				alert("아이디를 입력하세요.")
			}else if(pwsearch.email.value==null) {
				alert("이메일주소를 입력하세요.")
			}
		
		}function showMsg(m){
			
			if(m==0){
				
			}else if(m==1){
				alert("입력하신 정보가 등록하신 정보와 다릅니다.");
				window.open("searchpw.do","_self", "" );
			}
		}function login(){
			window.open("login.do","_self","");
		}
	 */
	</script>
</head>
<body onload="showMsg(${msg})">

<h2 align="center">비밀번호 찾기</h2>
<div align="center">
<p >아이디와 이메일 주소를 입력해 주세요.</p>
<form action="<c:url value="/fing/user_find_password.do"/>" name="pwsearch" method="post" >
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

</form>
</div> 
</body>
</html>