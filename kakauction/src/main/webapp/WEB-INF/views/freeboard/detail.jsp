<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
	<h2>자유게시판 - 글 상세보기</h2>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> 
			<span>${freeVo.freeboardTitle}</span>
		</div>
		<div>
			<span class="sp1">작성자</span> 
			<span>${freeVo.memberId}</span>
		</div>
		<div>
			<span class="sp1">등록일</span> 
			<span>${freeVo.freeboardRegdate}</span>
		</div>
		<div>
			<span class="sp1">조회수</span> 
			<span>${freeVo.freeboardReadCount}</span>
		</div>
		<div>
			<span class="sp1">첨부파일</span> 
			<span>
			<a href
				="<c:url value='/freeboard/download.do?no=${freeVo.freeboardNo}&fileName=${freeVo.freeboardFilename}'/>">
				${fileInfo }
			</a>
			</span>
			<span style="color:blue">${downInfo }</span>
		</div>		
		<div class="lastDiv">			
			<p class="content">${freeVo.freeboardContent}</p>
		</div>
		<div class="center">
			<a href	="<c:url value='/freeboard/edit.do?freeboardNo=${freeVo.freeboardNo}&freeboardFilename=${freeVo.freeboardFilename}'/>">
			수정</a> |
        	<a href	="<c:url value='/freeboard/delete.do?freeboardNo=${freeVo.freeboardNo}&freeboardFilename=${freeVo.freeboardFilename}'/>">
			삭제</a> |
        	<a href="<c:url value='/freeboard/list.do'/>">목록</a>			
		</div>
	</div>
	<jsp:include page="/freeboardreply/comment.do?freeboardNo=${param.freeboardNo }"></jsp:include>
<%@ include file="../design/inc/bottom.jsp"%>