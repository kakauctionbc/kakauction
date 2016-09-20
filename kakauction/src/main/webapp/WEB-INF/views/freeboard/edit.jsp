<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
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
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>자유게시판>글 수정
			</p>
		</div>
	<div class="writeForm">
	<form action="<c:url value='/freeboard/edit.do'/>" method="post" name="freeEditFrm" enctype="multipart/form-data">
	<legend>자유게시판 - 글수정</legend>
		<div>
			<input type="hidden" name="freeboardNo" id="freeboardNo" value="${param.freeboardNo}">
			<input type="hidden" name="freeboardFilename" id="freeboardFilename" value="${param.freeboardFilename}">
			<input type="hidden" name="freeboardOriginalname" id="freeboardOriginalname" value="${freeboardVO.freeboardOriginalname}">
		</div>
		<div>
			<label for="memberId">아이디</label>
			<input type="text" name="memberId" id="memberId" value="${sessionScope.memberId }" style="border: none;"readonly>
		</div>
		<div style="margin-bottom: 20px;">
			<label for="freeboardTitle">제 목</label>
			<input type="text" name="freeboardTitle" id="freeboardTitle" style="width: 900px; height: 30px;">
		</div>
		<div>
			<label for="freeboardUload">파일첨부</label> 
			<input type="file" id="freeboardUload" name="freeboardUload" />
			<c:if test="${!empty freeboardVO.freeboardFilename  }">
				<p style="color: green; padding: 5px 0 5px 135px;">
					※첨부파일을 새로 지정할 경우 기존 파일<img alt="파일이미지"
						src="<c:url value='/image/file.gif'/>">
					${freeboardVO.freeboardOriginalname}은 삭제됩니다.
				</p>
			</c:if>
		</div>
		<textarea id="freeboardContent" name="freeboardContent" rows="12" cols="40" >${freeboardVO.freeboardContent}</textarea>
		<input type="submit" value="수정" style="margin-left: 430px; margin-right: 20px; margin-top: 20px;">
		<input type="reset" value="초기화">
	</form>
	</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>