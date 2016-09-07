<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
</script>
<div id="wrap">
		<h1>인증번호 입력</h1>
		<form name="frm1" method="post" action="<c:url value='/fing/randomPwd.do?memberId=${param.memberId}'/>">
			<p>${param.memberId}님 인증번호를 입력해주세요</p>
			<table id="randomPwd">
				<colgroup>
					<col width="120" />
				</colgroup>
				<tbody>
					<tr>
						<th>
							<label for="pwd"> 
								인증번호
							</label>
						</th>
						<td>
							<input type="hidden" name="memberId" id="memberId" value="${param.memberId}">
							<input type="Password" name="memberPwd" id="memberPwd" style="width: 120px;">
						</td>
					</tr>
				</tbody>
			</table>
			<div id="btn_area">
				<ul>
					<li id="btn_register">
						<button type="submit">다음단계로</button>
					</li>
				</ul>
			</div>
		</form>
	</div>
<%@ include file="../design/inc/bottom.jsp"%>