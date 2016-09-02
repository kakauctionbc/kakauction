<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			}else if($("#questionContent").val()==""){
				alert("내용을 입력하세요");
				$("#questionContent").focus();
				event.preventDefault();
				
				return false;
			} 
			
			/*else if($("#memberId").val().length<1){
				alert("아이디ㄹ,ㄹ 입력하세요");
				$("#memberId").focus();
				event.preventDefault();
			}else if($("#pwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#pwd").focus();
				event.preventDefault();
			} */
		});
	});
	
</script>
</head>
<body>
	<form action="<c:url value='/qna/write.do'/>" method="post" name="frmWrite" id="frmWrite" enctype="multipart/form-data">
		<div>
			<label for="memberId">아이디</label>
			<input type="text" name="memberId" id="memberId" readonly="readonly" value="admin">
		</div>
		<div>
			<label for="freeboardTitle">제목</label>
			<input type="text" name="questionTitle" id="questionTitle">
		</div>
		<textarea id="questionContent" name="questionContent" rows="12" cols="40"></textarea>
		<input type="submit" value="작성">
		<input type="reset" value="초기화">
	</form>
</body>
</html>