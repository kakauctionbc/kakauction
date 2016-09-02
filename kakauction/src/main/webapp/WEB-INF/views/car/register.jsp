<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>차량등록</title>

<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>

<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('freeboardContent');	
		
		$("#frmWrite").submit(function(event){
			if($("#freeboardTitle").val()==""){
				alert("제목을 입력하세요");
				$("#freeboardTitle").focus();
				event.preventDefault();
			}else if($("#name").val().length<1){
				alert("이름을 입력하세요");
				$("#name").focus();
				event.preventDefault();
			}else if($("#pwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#pwd").focus();
				event.preventDefault();
			}
		});
	});
	
</script>
</head>
<body>
	<form action="<c:url value='/car/register.do'/>" method="post" name="registerFrm" enctype="multipart/form-data">
		<h2>출품 신청</h2>
		<h3>차량 정보</h3>
		<div>
			<label for="memberId">등록자 아이디</label>
			<input type="text" name="memberId" id="memberId" readonly="readonly" value="admin">
		</div>
		<div>
			<label for="memberId">등록자 아이디</label>
			<input type="text" name="memberId" id="memberId" value="admin">
		</div>
		<div>	
			<label for="freeboardTitle">제목</label>
			<input type="text" name="freeboardTitle" id="freeboardTitle">
		</div>
		<div>
            <label for="upfile">첨부파일</label>
	        <input type="file" id="upfile" name="upfile">(최대100M)
        </div>
		<textarea id="freeboardContent" name="freeboardContent" rows="12" cols="40"></textarea>
		<input type="submit" value="작성">
		<input type="reset" value="초기화">
	</form>
</body>
</html>