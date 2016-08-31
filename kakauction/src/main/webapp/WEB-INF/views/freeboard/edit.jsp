<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		CKEDITOR.replace('freeboardContent');	
		$("#frmWrite").submit(function(event){
			if($("#freeboardTitle").val()==""){
				alert("제목을 입력하세요");
				$("#freeboardTitle").focus();
				event.preventDefault();
			}
		});
	});
	
</script>
</head>
<body>
	<form action="<c:url value='/freeboard/edit.do'/>" method="post" name="freeEditFrm" enctype="multipart/form-data">
		<div>
			<label for="memberId">아이디</label>
			<input type="text" name="memberId" id="memberId" readonly="readonly" value="${freeboardVO.memberId}">
		</div>
		<div>
			<label for="freeboardTitle">제목</label>
			<input type="text" name="freeboardTitle" id="freeboardTitle" value="${freeboardVO.freeboardTitle}">
		</div>
		<div>
			<label for="upfile">파일첨부</label> <input type="file" id="upfile" name="upfile" />
			<c:if test="${!empty freeboardVO.freeboardFilename }">
				<p style="color: green; padding: 5px 0 5px 135px;">
					※첨부파일을 새로 지정할 경우 기존 파일<img alt="파일이미지"
						src="<c:url value='/images/file.gif'/>">
					${reBoardVo.originalFileName}은 삭제됩니다.
				</p>
			</c:if>
		</div>
		<textarea id="freeboardContent" name="freeboardContent" rows="12" cols="40" >${freeboardVO.freeboardContent}</textarea>
		<input type="submit" value="작성">
		<input type="reset" value="초기화">
	</form>
</body>
</html>