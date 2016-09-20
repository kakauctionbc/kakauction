<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		var freeboardNo = $("#freeboardNo").val();
		$("#df").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${freeVo.freeboardTitle})")){
				return false;
			}
			});
			
		$("#btReport").click(function(){
	         window.open("/kaka/freeboard/freeboardReport.do?freeboardNo="+freeboardNo,
	               "zip",
	         "width=700,height=600,left=10,top=50,resizable=yes,location=yes");
	      });//zipcode click
	});
</script>
<style type="text/css">
a{
	text-decoration: none;
	color:black;
}
a:hover{
	text-decoration: blink;
	color: #fae100;
}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>자유게시판>글 상세보기
			</p>
		</div>	
	<c:if test="${freeVo.prevFreeboardNo!='0' }">
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>" style="float: right;">다음글</a>
	</c:if>
	<c:if test="${freeVo.nextFreeboardNo!='0' }"> 
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">이전글</a>
	</c:if>
	<div class="writeForm" style="margin-top: 20px;">
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
			<a href="<c:url value='/freeboard/download.do?no=${freeVo.freeboardNo}&fileName=${freeVo.freeboardFilename}'/>">
				${fileInfo }
			</a>
			</span>
			<span style="color:blue">${downInfo }</span>
		</div>		
		<div class="lastDiv">			
			<p class="content">${freeVo.freeboardContent}</p>
		</div>
		<div class="center">
	<jsp:include page="/freeboardreply/comment.do?freeboardNo=${param.freeboardNo }"></jsp:include>
    <c:if test="${freeVo.memberId == sessionScope.memberId }">
       <a href   ="<c:url value='/freeboard/edit.do?freeboardNo=${freeVo.freeboardNo}&freeboardFilename=${freeVo.freeboardFilename}'/>">
       수정</a> |
         <a id="df" href="<c:url value='/freeboard/delete.do?freeboardNo=${freeVo.freeboardNo}&freeboardFilename=${freeVo.freeboardFilename}'/>">
       삭제</a> |
         <a href="<c:url value='/freeboard/list.do'/>">목록</a>         
    </c:if>
    <c:if test="${freeVo.memberId != sessionScope.memberId }">
       <img src="<c:url value='/img/report_icon.png'/>" id="btReport" style="float: right;">
    	<a href="<c:url value='/freeboard/list.do'/>">목록</a>
    </c:if>
      </div>
	</div>
	<br>
	
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>