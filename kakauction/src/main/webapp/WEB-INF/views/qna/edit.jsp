<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mystyle.css'/>" />

<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('questionContent');	
		
		$("#frmWrite").submit(function(event){
			if($("#questionTitle").val()==""){
				alert("제목을 입력하세요");
				$("#questionTitle").focus();
				return false;
			}else if($("#questionContent").val().length<1){
				alert("내용을 입력하세요");
				$("#noticeContent").focus();
				return false;
			}
		});
		$("#listPage").click(function(){
			location.href="${pageContext.request.contextPath}/qna/list.do";
		});
	});
</script>

<title>카카옥션 공지 쓰기</title>
	<div class="divForm">
	<form name="noticeWrite" id="noticeWrite" method="post" action="<c:url value='/qna/edit.do'/>" >
	 <fieldset>
		<legend>글쓰기</legend>
		<input type="hidden" name="questionNo" value="${qnaVo.questionNo}">
	        <div class="firstDiv">
	            <label for="title">제목</label>
	            <input type="text" id="questionTitle" name="questionTitle" value="${qnaVo.questionTitle }" />
	        </div>
	        <div>
	            <label for="name">작성자</label> : ${qnaVo.memberId }
	            <input type="hidden" id="memberId" name="memberId" value="${qnaVo.memberId }"/>
	        </div>
	        <div>  
	        	<label for="questionContent">내용</label>
	        </div>
	        <div>	        
	 			<textarea id="questionContent" name="questionContent" rows="12" cols="40" >${qnaVo.questionContent }
	 			</textarea>
	        </div>
	        
	        <div class="center">
	            <input type = "submit" value="등록"/>
	            <input type = "Button" name="listPage" id="listPage" value="글목록">         
	        </div>
	    </fieldset>
	</form>
	</div>   
<%@ include file="../design/inc/bottom.jsp"%>