<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
	$(function(){
		$("#pwdEditForm").submit(function(){
			if($("#memberPwd").val()!=$("#memberPwd2").val()){
				alert("비밀번호가 동일하지 않습니다.");
				return false;
			}
		});
	});
</script>
<style type="text/css">
.pwdEditForm{
	width: 100%;
	margin-top: 30px;
}
#passwordEdit{
	margin-left: 330px;
}
#passwordEdit td{
	padding-bottom: 10px;
}
#btn_pwdEdit button{
	width: 100px;
    height: 30px;
    border-radius: 10px;
    background: #f2f2ee;
    font-weight: bold;
    margin-left: 480px;
}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>비밀번호변경
			</p>
		</div>
		<div id="pagelogo">
			<img
				src="${pageContext.request.contextPath }/img/pwdEdit_logo.png"
				alt="자유게시판로고">
		</div>
		<div id="loginp">
			<p style="margin-left: 70px;">${sessionScope.memberId} 님 새로운 비밀번호를 입력해주세요</p>
		</div>
			<form name="frm1" class="pwdEditForm" id="pwdEditForm" method="post" action="<c:url value='/fing/pwd_Edit.do'/>">
				<table id="passwordEdit">
					<colgroup>
						<col width="120" />
					</colgroup>
					<tbody>
						<tr>
							<th>
								<label for="userid"> 
									회원 ID
								</label>
							</th>
							<td>
								<input type="text" name="memberId" id="memberId" value="${sessionScope.memberId}" readonly
									style="ime-mode: inactive; width: 160px;">&nbsp;
							</td>
						</tr>
						<tr>
							<th>
								<label for="pwd2"> 
									비밀번호
								</label>
							</th>
							<td>
								<input type="Password" name="memberPwd" id="memberPwd" style="width: 160px;">
							</td>
						</tr>
						<tr>
							<th>
								<label for="pwd3"> 
									비밀번호확인
								</label>
							</th>
							<td>
								<input type="Password" name="memberPwd2" id="memberPwd2" style="width: 160px;">
							</td>
						</tr>
					</tbody>
				</table>
				<div id="btn_area">
					<ul>
						<li id="btn_pwdEdit">
							<button type="submit">비밀번호수정</button>
						</li>
					</ul>
				</div>
			</form>
		</div>
		</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>