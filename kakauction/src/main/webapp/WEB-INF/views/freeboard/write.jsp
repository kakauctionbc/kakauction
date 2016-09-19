<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('freeboardContent');	
		
		$("#frmWrite").submit(function(){
			if($("#freeboardTitle").val()==""){
				alert("제목을 입력하세요");
				$("#freeboardTitle").focus();
				return false;
			}else if($("#freeboardContent").val().length<1){
				alert("내용을 입력하세요");
				$("#freeboardContent").focus();
				return false;
			}
		});
		
		$("#list").click(function(){
			location.href="/kaka/freeboard/list.do";
		});
	});
</script>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>자유게시판>글쓰기
			</p>
		</div>	
		<form action="<c:url value='/freeboard/write.do'/>" method="post" name="freeWriteFrm" id="frmWrite" enctype="multipart/form-data">
			<div style="margin-bottom: 20px;">
				<label for="memberId">아이디</label>
				<input type="text" name="memberId" id="memberId" value="${sessionScope.memberId }" style="border: none;"readonly>
			</div>
			<div style="margin-bottom: 20px;">
				<label for="freeboardTitle" style="margin-right: 10px;">제목</label>
				<input type="text" name="freeboardTitle" id="freeboardTitle" style="width: 950px; height: 30px;">
			</div>
			<div>
	            <label for="upfile">첨부파일</label>
		        <input type="file" id="upfile" name="upfile">(최대100M)
	        </div>
			<textarea id="freeboardContent" name="freeboardContent" rows="30" cols="40"></textarea>
			<input type="submit" value="작성" style="margin-left: 450px; margin-right: 10px; margin-top: 10px;">
			<input type="reset" value="초기화">
			<input type="button" id="list" value="목록">
		</form>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>