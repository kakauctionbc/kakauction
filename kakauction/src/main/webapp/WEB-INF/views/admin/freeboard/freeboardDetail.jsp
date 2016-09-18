<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript">
	$(function(){
		var freeboardNo = $("#freeboardNo").val();
		$("#df").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${freeVo.freeboardTitle})")){
				return false;
			}
		});
	});
</script>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>자유게시판>글 상세보기
			</p>
		</div>	
	<c:if test="${freeVo.prevFreeboardNo!='0' }">
		<a href="<c:url value='/admin/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>">다음글</a>
	</c:if>
	<c:if test="${freeVo.nextFreeboardNo!='0' }">
		<a href="<c:url value='/admin/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">이전글</a>
	</c:if>
	<h2>자유게시판 - 글 상세보기</h2>
	<div class="divForm">
		<input type="hidden" name="freeboardNo" id="freeboardNo" value="${freeVo.freeboardNo }">
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
			<a href ="<c:url value='/freeboard/download.do?no=${freeVo.freeboardNo}&fileName=${freeVo.freeboardFilename}'/>">
				${fileInfo }
			</a>
			</span>
			<span style="color:blue">${downInfo }</span>
		</div>		
		<div class="lastDiv">			
			<p class="content">${freeVo.freeboardContent}</p>
		</div>
		<div class="center">
			 <a id="df" href="<c:url value='/admin/freeboard/freeboardDelete.do?freeboardNo=${freeVo.freeboardNo}&freeboardFilename=${freeVo.freeboardFilename}'/>">
			 삭제</a> |
			<a href="<c:url value='/admin/freeboard/freeboardList.do'/>">목록</a>         
			<button id="btReport">신고하기</button>
    	</div>
	</div>
	<jsp:include page="/admin/freeboardreply/comment.do?freeboardNo=${param.freeboardNo }"></jsp:include>
	</div>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>