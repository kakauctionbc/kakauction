<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mystyle.css'/>" />

<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('noticeContent');	
		
		$("#frmWrite").submit(function(event){
			if($("#noticeTitle").val()==""){
				alert("제목을 입력하세요");
				$("#noticeTitle").focus();
				return false;
			}else if($("#noticeContent").val().length<1){
				alert("내용을 입력하세요");
				$("#noticeContent").focus();
				return false;
			}
		});
		$("#listPage").click(function(){
			location.href="${pageContext.request.contextPath}/notice/list.do";
		});
	});
</script>

<title>카카옥션 공지 쓰기</title>
	<div class="divForm">
	<form name="noticeWrite" id="noticeWrite" method="post" enctype="multipart/form-data" 
	  action="<c:url value='/notice/edit.do'/>" >
	 <fieldset>
		<legend>글쓰기</legend>
		<input type="hidden" name="noticeNo" value="${noticeVo.noticeNo}">
		<input type="hidden" name="oldFileName" value="${noticeVo.noticeFilename}">
		<input type="hidden" name="oldFileSize" value="${noticeVo.noticeFilesize}">
		<input type="hidden" name="oldOriginalFileName" value="${noticeVo.noticeOriginalname}">
	        <div class="firstDiv">
	            <label for="title">제목</label>
	            <input type="text" id="noticeTitle" name="noticeTitle" value="${noticeVo.noticeTitle }" />
	        </div>
	        <div>
	            <label for="name">작성자</label> : ${noticeVo.memberId }
	            <input type="hidden" id="memberId" name="memberId" value="${noticeVo.memberId }"/>
	        </div>
	       <div>
				<label for="upfile">파일첨부</label> <input type="file" id="upfile"
					name="upfile" />
				<c:if test="${!empty noticeVo.noticeFilename }">
					<p style="color: green; padding: 5px 0 5px 135px;">
						※첨부파일을 새로 지정할 경우 기존 파일
						<img alt="파일이미지" src="<c:url value='/image/file.gif'/>">
						${noticeVo.noticeOriginalname}은 삭제됩니다.
					</p>
				</c:if>
			</div>
	        <div>  
	        	<label for="noticeContent">내용</label>
	        </div>
	        <div>	        
	 			<textarea id="noticeContent" name="noticeContent" 
	 			rows="12" cols="40" >${noticeVo.noticeContent }</textarea>
	 			
	<!--  			<textarea id="content" name="content" 
	 			rows="12" cols="40" class="ckeditor"></textarea> -->
	        </div>
	        
	        <div class="center">
	            <input type = "submit" value="등록"/>
	            <input type = "Button" name="listPage" id="listPage" value="글목록"/>         
	        </div>
	    </fieldset>
	</form>
	</div>   
<%@ include file="../design/inc/bottom.jsp"%>