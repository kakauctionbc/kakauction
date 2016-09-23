<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">

</script>
	<div id="wrap">
		<h1>새로운 비밀번호 입력</h1>
		<p>${sessionScope.memberId} 님 이제 새로운 비밀번호를 입력해주세요</p>
		<form name="frm1" method="post" action="<c:url value='/fing/pwd_Edit.do'/>">
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
							<input type="Password" name="memberPwd" id="memberPwd" style="width: 120px;">
						</td>
					</tr>
					<tr>
						<th>
							<label for="pwd3"> 
								비밀번호확인
							</label>
						</th>
						<td>
							<input type="Password" name="memberPwd2" id="memberPwd2" style="width: 120px;">
						</td>
					</tr>
				</tbody>
			</table>
			<div id="btn_area">
				<ul>
					<li id="btn_register">
						<button type="submit">비밀번호수정</button>
					</li>
				</ul>
			</div>
		</form>
	</div>
<%@ include file="../design/inc/bottom.jsp"%>