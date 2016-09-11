<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A</title>
<script type="text/javascript">
	$(function(){
		$("#delete").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${QnaVo.questionTitle})")){
				return false;
			}
		});
	});
</script>
</head>
<body>
	<h2>Q&A 글 상세보기</h2>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> 
			<span>${QnaVo.questionTitle}</span>
		</div>
		<div>
			<span class="sp1">작성자</span> 
			<span>${QnaVo.memberId}</span>
		</div>
		<div>
			<span class="sp1">등록일</span> 
			<span><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${QnaVo.questionRegdate}"/></span>
		</div>
		<div class="lastDiv">			
			<p class="content">${QnaVo.questionContent}</p>
		</div>
		<div class="center">
			<a href
			="<c:url value='/qna/edit.do?questionNo=${QnaVo.questionNo}'/>">
			수정</a> |
        	<a id='delete' href ="<c:url value='/qna/delete.do?questionNo=${QnaVo.questionNo}'/>">
			삭제</a> |
        	<a href="<c:url value='/qna/list.do'/>">목록</a>			
		</div>
	</div>
</body>
</html>