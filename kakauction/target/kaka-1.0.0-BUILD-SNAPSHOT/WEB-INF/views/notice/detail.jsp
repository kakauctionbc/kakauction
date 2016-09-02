<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 상세보기</title>
</head>

<body>
	<h2>공지사항 상세보기</h2>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> 
			<span>${noticeVo.noticeTitle}</span>
		</div>
		<div>
			<span class="sp1">작성자</span>
			<span>${noticeVo.memberId}</span>
		</div>
		<div>
			<span class="sp1">등록일</span> 
			<span><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${noticeVo.noticeRegdate}"/></span>
		</div>
		<div>
			<span class="sp1">조회수</span> 
			<span>${noticeVo.noticeReadCount}</span>
		</div>
		<div>
			<span class="sp1">첨부파일</span> 
			<span>
			<a href	="<c:url value='/notice/download.do?noticeNo=${noticeVo.noticeNo}&noticeFilename=${noticeVo.noticeFilename}'/>">
				${fileInfo }
			</a>
			</span>
			<span style="color:blue">${downInfo }</span>
		</div>		
		<div class="lastDiv">			
			<p class="content">${noticeVo.noticeContent}</p>
		</div>
		<div class="center">
			<a href
			="<c:url value='/notice/edit.do?noticeNo=${noticeVo.noticeNo}'/>">
			수정</a> |
        	<a id="delete" href	="<c:url value='/notice/delete.do?noticeNo=${noticeVo.noticeNo}&noticeFilename=${noticeVo.noticeFilename}'/>">
			삭제</a> |
        	<a href="<c:url value='/notice/list.do'/>">목록</a>			
		</div>
	</div>
	<jsp:include page="/notireply/comment.do?noticeNo=${param.noticeNo }"></jsp:include>
</body>
</html>