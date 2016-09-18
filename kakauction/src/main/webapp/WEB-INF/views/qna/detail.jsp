<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		$("#delete").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${QnaVo.questionTitle})")){
				return false;
			}
		});
	});
</script>
<style type="text/css">
	#qnaT{
		width: 800px;
	}
</style>
	<h2>Q&A 글 상세보기</h2>
	<div class="divForm">
		<table id="qnaT">
			<tr>
				<th>제목</th>
				<td>${QnaVo.questionTitle}</td>
				<th>작성자</th>
				<td>${QnaVo.memberId}</td>
			</tr>
			<tr>
				<th colspan="2">등록일</th>
				<td colspan="2"><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${QnaVo.questionRegdate}"/></td>
			</tr>
			<tr>
				<th colspan="4">내용</th>
			</tr>
			<tr>
				
			</tr>
			<tr>
				<td colspan="4">
		        	<a href="<c:url value='/qna/edit.do?questionNo=${QnaVo.questionNo}'/>">
					수정</a> |
        			<a id='delete' href ="<c:url value='/qna/delete.do?questionNo=${QnaVo.questionNo}'/>">
					삭제</a> |
        			<a href="<c:url value='/qna/list.do'/>">목록</a>	
				</td>
			</tr>
		</table>
	</div>
<%@ include file="../design/inc/bottom.jsp"%>