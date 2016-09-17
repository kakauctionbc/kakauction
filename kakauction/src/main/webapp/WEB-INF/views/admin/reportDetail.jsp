<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		$("#btHandle").click(function(){
			if(confirm($("#memberGrade").val()+" 처리 하시겠습니까?")){
	        	location.href = "/kaka/report/handle.do?memberId=${reportedMemberId}&reportNo=${reportVo.reportNo}&memberGrade="+$("#memberGrade").val();
			}
	    });
	});
</script>
	<h2>신고게시판 - 신고 상세보기</h2>
	<div class="divForm">
		<input type="hidden" name="reportNo" id="reportNo" value="${reportVo.reportNo }">
		<div class="firstDiv">
			<span class="sp1">제목</span> 
			<span>${reportVo.reportTitle}</span>
		</div>
		<div>
			<span class="sp1">신고자</span> 
			<span>${reportVo.reportMemberId}</span>
		</div>
		<div>
			<span class="sp1">피신고자</span> 
			<span>${reportedMemberId}</span>
		</div>
		<div>
			<span class="sp1">신고유형</span> 
			<span>
				<c:if test="${reportVo.originType == 1}">
					자유게시판 - 
				</c:if>
				<c:if test="${reportVo.originType == 2}">
					경매 차량 - 
				</c:if>
				${reportVo.reportType }
			</span>
		</div>
		<div>
			<span class="sp1">신고일</span> 
			<span>${reportVo.reportRegdate}</span>
		</div>
		<div class="lastDiv">			
			<p class="content">${reportVo.reportContent}</p>
			<br>
			<c:if test="${reportVo.originType == 1}">
				<a href="<c:url value='/freeboard/detail.do?freeboardNo=${reportVo.originNo }'/>">원글 보러가기</a>
			</c:if>
			<c:if test="${reportVo.originType == 2}">
				<a href="<c:url value='/auction/auctiongo.do?auctionNo=${reportVo.originNo }'/>">원글 보러가기</a>
			</c:if>
		</div>
		<div class="center">
            <select name="memberGrade" id="memberGrade" style="width:100px; font-size: 1.1em;" title="회원등급">
				<option value="경고">경고</option>
				<option value="활동정지">활동정지</option>
				<option value="강등">강등</option>
				<option value="강제탈퇴">강제탈퇴</option>
			</select>
            <button id="btHandle">처리하기</button> | 
            <a href="<c:url value='/report/reportAllList.do'/>">목록</a>         
      </div>
	</div>
<%@ include file="../design/inc/bottom.jsp"%>