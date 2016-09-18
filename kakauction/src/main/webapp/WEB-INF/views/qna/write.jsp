<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('questionContent');	
		
		$("#frmWrite").submit(function(event){
			if($("#questionTitle").val()==""){
				alert("제목을 입력하세요");
				$("#questionTitle").focus();
				event.preventDefault();
				
				return false;
			}else if($("#questionContent").val().length<0){
				alert("내용을 입력하세요");
				$("#questionContent").focus();
				event.preventDefault();
				
				return false;
			} 
		});
	});
</script>
<style type="text/css">
	#QNAheader p{
		font-size: 25px;
		font-weight: bold;
	}
</style>
</head>
	<div style="width: 800px;margin-left: 450px;margin-top: 30px;">	
		<form action="<c:url value='/qna/write.do'/>" method="post" name="frmWrite" id="frmWrite" enctype="multipart/form-data">
			<div id="QNAheader">
				<p style="font-size: 35px;">QNA</p>
				<p>KAKAUCTION에 질문해주세요. 친절하게 답변해드릴게요.</p>
				<hr>
			</div>
			<div>
				<label for="memberId">아이디</label>
				<input type="text" name="memberId" id="memberId" readonly="readonly" value="${memberId}" size="10px;">
				<label for="freeboardTitle">제목</label>
				<input type="text" name="questionTitle" id="questionTitle" size="20px;">
			</div>
			<br><br>
			<textarea id="questionContent" name="questionContent" rows="12" cols="40"></textarea>
			<br><br>
			<input type="submit" value="작성">
			<input type="reset" value="초기화">
		</form>
	</div>
<%@ include file="../design/inc/bottom.jsp"%>