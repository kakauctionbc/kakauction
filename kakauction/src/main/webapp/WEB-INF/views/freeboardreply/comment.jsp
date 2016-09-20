<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
	
	$(document).ready(function(){
		$("#replyComment").submit(function(){
			if($("#freereplyContent").val().length<1){
				alert("댓글을 입력하세요");
				$("#freereplyContent").focus();
				return false;
			}
		});
		
		$("#btrere").click(function(){
			if($("#rereplyContent").val().length<1){
				alert("댓글을 입력하세요");
				$("#rereplyContent").focus();
				return false;
			}
			
			$("#frmRere").submit();
		});
		
		 $(".flip").click(function(){
		    	var index = $(this).children().val();
		    	$("#panel_"+index).slideToggle();
		});
	});
</script>
</head>
<body>
	<form name="frmPage" method="post" action="<c:url value='/freeboard/detail.do?freeboardNo=${freeVo.freeboardNo}'/>">
		<input type="hidden" name="currentPage">
	</form>
	<div class="comment">
	<br><br>
		<table class="box2"
	 		summary="게시판 댓글에 대한 표로써, 작성자, 내용, 작성일시에 대한 정보를 제공합니다." style="width: 1000px">
	 		<colgroup>
				<col style="width:20%;" />
				<col style="width:50%;" />
				<col style="width:20%;" />
				<col style="width:10%;" />
			</colgroup>
			<thead>
				<tr>
				    <th scope="col">작성자</th>
				    <th scope="col">내용</th>
				    <th scope="col">작성일시</th>
				    <th scope="col"></th>
				</tr>
			</thead>
			<c:if test="${empty alist }">
				<tr>
					<td colspan="4" class="align_center">등록된 댓글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty alist }">
				<c:forEach var="freereplyVo" items="${alist }" varStatus="vs">
					<tr>
						<td style="text-align: center">${freereplyVo.memberId }</td>
						<td>${freereplyVo.freereplyContent }</td>
						<td style="text-align: center"><fmt:formatDate value="${freereplyVo.freereplyRegdate }" pattern="yyyy-MM-dd"/></td>
						<td style="text-align: center">
							<c:if test="${freereplyVo.memberId==sessionScope.memberId }">
								<a href="#" id="delete">삭제</a>
							</c:if>
							<c:if test="${freereplyVo.memberId!=sessionScope.memberId }">
								<div class="flip">
									<input type="hidden" class="flip" value="${vs.index}" >
									<a href="#">답글</a>
								</div>
							</c:if>
						</td>
					</tr>
					<form action="<c:url value='/freeboardreply/rere.do'/>" method="post" id="frmRere">
						<tr style="display: none;" id="panel_${vs.index}" >
								<td colspan="3"><textarea rows="5" cols="165" name="freereplyContent" id="rereplyContent"></textarea></td>
								<input type="hidden" name="freeboardNo" value="${freereplyVo.freeboardNo }">
								<td><input type="button" id="btrere" value="등록"></td>
						</tr>
					</form>
				</c:forEach>
			  </c:if>
	 	</table>
		<div class="pagediv">
			<ul class="page">
				<!-- 이전 블럭으로 이동 -->
				<li class="firstPage"><c:if test="${pagingInfo.firstPage>1 }">
					<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">&laquo;</a>
				</c:if></li>
				<!-- 페이지 번호 추가 -->
				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<li><c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
					<c:if test="${i==pagingInfo.currentPage }">
						<span> ${i }</span>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
						<a href="#" onclick="pageProc(${i})"> ${i}</a>
					</c:if>
				</c:forEach></li>
				<!--  페이지 번호 끝 -->
	
				<!-- 다음 블럭으로 이동 -->
				<li><c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
					<a href="#" onclick="pageProc(${pagingInfo.lastPage+1})">&raquo;</a>
				</c:if></li>
			</ul>
		</div>
	</div>
	<form id="replyComment" name="replyComment" method="post" action="<c:url value='/freeboardreply/insertComment.do'/>">
		<div class="commentWrite" style="width: 1000px; margin-top: 20px;">
			<fieldset>
			<hr style="color: silver;"><br>
					<p style="margin-top: 10px;">
						<label for="memberId" style="margin-right: 10px;">작성자</label>
						<span>${sessionScope.memberId }</span>
						<input type="hidden" id="memberId" name="memberId" style="width: 30%" value="${sessionScope.memberId }" readonly>
					</p>
					<input type="hidden" name="freereplyGroupno" value="${freeVo.freeboardNo}">
					<p style="margin-top: 20px;">
						<textarea rows="5" cols="165" name="freereplyContent" id="freereplyContent"></textarea>
					</p>
					<div style="text-align: center; margin-top: 10px;">
						<input type="submit" name="commentSubmit" value="확인">
					</div>
			</fieldset>
		</div>
	</form>
	<c:if test="${freeVo.prevFreeboardNo!='0' }">
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>">다음글</a> | 
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>">${freeVo.prevFreeboardTitle }</a>
	</c:if>
	<br>
	<c:if test="${freeVo.nextFreeboardNo!='0' }"> 
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">이전글</a> |
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">${freeVo.nextFreeboardTitle }</a>
	</c:if>
	
</body>
</html>