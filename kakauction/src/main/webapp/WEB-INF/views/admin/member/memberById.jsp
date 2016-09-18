<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/layout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/register.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/list.css" />
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<style>
	.logo{
		background-color: #3c4451;
		height: 40px;
	}
	div img{
		height: 20px;
		padding-top: 10px;
		padding-left: 10px;
	}
	h1{
		font-size: 1.3em;
		font-weight: bold;
		padding-top: 10px;
		padding-left: 10px;
	}
	.mtable{
		padding-top: 10px;
		padding-left: 10px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btClose").click(function(){
			self.close();
		});
	});
</script>	
	
	<div class="memberDetail">
		<form action="<c:url value='/admin/member/memberById.do'/>" method="post" name="frm1">
			<div class="logo">
				<img alt="로고" src="<c:url value='../../img/logo.png'/>">
			</div>
			<h1>■ 기본정보</h1>
			<div class="mtable">
				<table>
					<tr>
						<th>아이디</th>
						<td>${memVo.memberId }</td>
						<th>회원등급</th>
						<c:if test="${memVo.memberGrade=='MEMBER_VIP'}">
							<td>골드회원</td>
						</c:if>
						<c:if test="${memVo.memberGrade=='MEMBER'}">
							<td>일반회원</td>
						</c:if>
						<c:if test="${memVo.memberGrade=='BLACK'}">
							<td>불량회원</td>
						</c:if>
					</tr>
					<tr>
						<th>총적립금</th>
						<td>${memVo.memberMileage}</td>
						<th>경매참여횟수</th>
						<td>12</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${memVo.memberName }</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>[${memVo.memberZipcode}] ${memVo.memberAddr} ${memVo.memberAddr2}</td>
					</tr>
					<tr>
						<th>휴대번호</th>
						<td>${memVo.memberHp}</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${memVo.memberEmail}</td>
					</tr>
				</table>
			</div>
			
			<div class="button">
				<button type="button" id="btClose">닫기</button>
			</div>
		</form>
	</div>
