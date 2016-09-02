<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	#divAgree{
		width:700px;
	}
	#divAgreeFirst{
		text-align: right;
		margin: 10px 0;
	}	
</style>
<script type="text/javascript">
	$(function(){
		$("#frmAgree").submit(function(event){
			if(!$("#chkAgree").is(":checked")){
				alert("약관에 동의하셔야 합니다.");
				event.preventDefault();
				$("#chkAgree").focus();
			}
		});
	});
</script>
    <div id="wrap">
	<div id="registerwrap">
		<div id="registertop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>일반회원가입
			</p>
		</div>
		<div id="registerlogo">
			<img src="${pageContext.request.contextPath }/img/register_logo.png"
				alt="로그인로고">
		</div>
		<div id="step">
			<img src="${pageContext.request.contextPath }/img/register_step1.png" alt="스텝로고">
		</div>
		<iframe id="agreementframe" src="${pageContext.request.contextPath }/inc2/provision.html" 
			width="700px" height="300px"></iframe>

		<div id="divAgree">
		<form name="frmAgree" id="frmAgree" method="post" action="<c:url value='/member/register.do'/>">
			<div id="divAgreeFirst">
				<input type="checkbox" name="chkAgree" id="chkAgree">
				<label for="chkAgree">약관에 동의합니다</label>
			</div>
			<div id="btn_area">
					<button type="submit" value="동의" id="btn_agree">
					동의</button>
					<button type="reset" value="동의" id="btn_disagree"
						 onclick="location.href='${pageContext.request.contextPath }/design/index.do'">
					동의하지 않음</button>
			</div>
		</form>
	</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp" %>
