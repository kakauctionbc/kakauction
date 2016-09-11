<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		$("#delete").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${noticeVo.noticeTitle})")){
				return false;
			}
		});
	});
</script>
<title>공지사항 상세보기</title>
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
        	<a id="delete" href	="<c:url value='/notice/delete.do?noticeNo=${noticeVo.noticeNo}&noticeGroupno=${noticeVo.noticeGroupno }&noticeFilename=${noticeVo.noticeFilename}'/>">
			삭제</a> |
        	<a href="<c:url value='/notice/list.do'/>">목록</a>			
		</div>
	</div>
	<jsp:include page="/notireply/comment.do?noticeNo=${param.noticeNo }"></jsp:include>
<%@ include file="../design/inc/bottom.jsp"%>