<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function(){
		CKEDITOR.replace('noticeContent');	
		
		$("#frmWrite").submit(function(event){
			if($("#title").val()==""){
				alert("제목을 입력하세요");
				$("#title").focus();
				return false;
			}else if($("#noticeContent").val().length<1){
				alert("내용을 입력하세요");
				$("#noticeContent").focus();
				return false;
			}
		});
		
		$("#listPage").click(function(){
			location.href="${pageContext.request.contextPath}/admin/notice/list.do";
		});
	});
</script>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>공지사항> 글쓰기
			</p>
		</div>
		<div class="writeForm">
		<legend>공지사항 - 글쓰기</legend>
	        <div class="firstDiv">	
				<form action="<c:url value='/freeboard/write.do'/>" method="post" name="freeWriteFrm" id="frmWrite" enctype="multipart/form-data">
					<div style="padding: 5px 0;">
						<label for="memberId">아이디</label>
						<input type="text" name="memberId" id="memberId" value="${sessionScope.memberId }" style="border: none;"readonly>
					</div>
					<div style="margin-bottom: 20px;">
						<label for="freeboardTitle" style="margin-right: 10px;">제 목</label>
						<input type="text" name="freeboardTitle" id="freeboardTitle" style="width: 950px; height: 30px; border: none;">
					</div>
					<div>
			            <label for="upfile">첨부파일</label>
				        <input type="file" id="upfile" name="upfile">(최대100M)
			        </div>
					<textarea id="freeboardContent" name="freeboardContent" rows="30" cols="40"></textarea>
			        <div class="center">
			            <input type = "submit" value="등록"/>
			            <input type = "Button" name="listPage" id="listPage" value="글목록" 
			      			onclick="location.href='<c:url value="/admin/notice/list.do"/>';" />         
			        </div>
				</form>
			</div>  
		</div>
	</div>
</div> 
<%@ include file="../../design/inc/adminBottom.jsp"%>