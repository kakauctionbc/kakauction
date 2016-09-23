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
		
		$(".btrere").click(function(){
			var index = $(this).next().val();
			if($("#rereplyContent"+index).val()==""){
				alert("댓글을 입력하세요");
				$("#rereplyContent"+index).focus();
				return false;
			}
			$("#frmRere"+index).submit();
		});
		
		$(".flip").click(function(){
	    	var index = $(this).children().val();
	    	$("#panel_"+index).slideToggle();
		});

		$(".edit").click(function(){
	    	var index = $(this).next().val();
	    	$("#editPanel_"+index).slideToggle();
		});
		
		$(".btEdit").click(function(){
			var index = $(this).next().val();
			if($("#editContent"+index).val()==""){
				alert("댓글을 입력하세요");
				$("#rereplyContent"+index).focus();
				return false;
			}
			$("#frmEdit"+index).submit();
		});
		
		$(".delete").click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				var index = $(this).next().val();
		    	$("#deleteReply"+index).submit();
			}
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
				<col style="width:10%;" />
				<col style="width:50%;" />
				<col style="width:20%;" />
				<col style="width:20%;" />
			</colgroup>
			<thead>
				<tr>
				    <th scope="col">작성자</th>
				    <th scope="col">내용</th>
				    <th scope="col">작성일시</th>
				    <th scope="col"></th>
				</tr>
			</thead>
			<c:if test="${empty alist1 }">
				<tr>
					<td colspan="4" class="align_center">등록된 댓글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty alist1 }">
				<c:forEach var="freereplyVo" items="${alist1 }" varStatus="vs">
					<tr 
						<c:if test="${freereplyVo.freereplyStep>0 }">
							style="border-top: hidden;"	
						</c:if>>
						<td style="text-align: center">${freereplyVo.memberId }</td>
						<td>
							<c:if test="${freereplyVo.freereplyDelflag=='N' }">
								<c:if test="${freereplyVo.freereplyStep>0 }">
									&nbsp;&nbsp;${freereplyVo.freereplyContent }	
								</c:if>
								<c:if test="${freereplyVo.freereplyStep==0 }">
									${freereplyVo.freereplyContent }	
								</c:if>
							</c:if>
							<c:if test="${freereplyVo.freereplyDelflag=='Y' }">
								삭제된 댓글입니다.
							</c:if>
						</td>
						<td style="text-align: center"><fmt:formatDate value="${freereplyVo.freereplyRegdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td style="text-align: center">
							<c:if test="${freereplyVo.memberId==sessionScope.memberId && freereplyVo.freereplyDelflag=='N'}">
								<form action="<c:url value='/freeboardreply/delete.do'/>" id="deleteReply${vs.index }" method="post">
									<input type="hidden" name="freeboardNo" value="${freeVo.freeboardNo }">
									<input type="hidden" name="freereplyNo" value="${freereplyVo.freereplyNo }">
									<input type="hidden" name="freereplyGroupno" value="${freereplyVo.freereplyGroupno }">
									<input type="hidden" name="freereplyStep" value="${freereplyVo.freereplyStep }">
								</form>
								<a class="edit">수정</a> | 
								<input type="hidden" class="flip" value="${vs.index}" >
								<a class="delete">삭제</a>
								<input type="hidden" class="flip" value="${vs.index}" >
								<form action="<c:url value='/freeboardreply/edit.do'/>" method="post" id="frmEdit${vs.index }">
									<tr style="display: none;" id="editPanel_${vs.index}" >
										<td colspan="3"><textarea rows="5" cols="165" name="freereplyContent" id="editContent${vs.index }"></textarea></td>
										<input type="hidden" name="freereplyNo" value="${freereplyVo.freereplyNo }">
										<input type="hidden" name="freeboardNo" value="${freeVo.freeboardNo }">
										<td><input type="button" class="btEdit" value="수정"><input type="hidden" class="btEdit" value="${vs.index}" ></td>
									</tr>
								</form>
							</c:if>
							<c:if test="${freereplyVo.memberId!=sessionScope.memberId && freereplyVo.freereplyDelflag=='N'}">
								<c:if test="${freereplyVo.freereplyStep==0 }">
									<div class="flip">
										<input type="hidden" class="flip" value="${vs.index}" >
										<a>답글</a>
									</div>
								</c:if>
							</c:if>
						</td>
					</tr>
					<form action="<c:url value='/freeboardreply/rere.do'/>" method="post" id="frmRere${vs.index }">
						<tr style="display: none;" id="panel_${vs.index}" >
							<td colspan="3"><textarea rows="5" cols="165" name="freereplyContent" id="rereplyContent${vs.index }"></textarea></td>
							<input type="hidden" name="freeboardNo" value="${freereplyVo.freeboardNo }">
							<input type="hidden" name="freereplyStep" value="${freereplyVo.freereplyStep }">
							<input type="hidden" name="freereplyGroupno" value="${freereplyVo.freereplyGroupno }">
							<td><input type="button" class="btrere" value="등록"><input type="hidden" class="btrere" value="${vs.index}" ></td>
						</tr>
					</form>
				</c:forEach>
			  </c:if>
	 	</table>
 		<form id="replyComment" name="replyComment" method="post" action="<c:url value='/freeboardreply/insertComment.do'/>">
			<div class="commentWrite" style="width: 1000px; margin-top: 20px;">
				<fieldset>
					<input type="hidden" id="memberId" name="memberId" style="width: 30%" value="${sessionScope.memberId }" readonly>
					<input type="hidden" name="freeboardNo" value="${freeVo.freeboardNo}">
					<p style="margin-top: 20px;">
						<textarea rows="1" cols="165" name="freereplyContent" id="freereplyContent" style="height: 50px;"></textarea>
						<input type="submit" name="commentSubmit" value="확인" style="margin-left: 480px; margin-top: 20px;">
					</p>
				</fieldset>
			</div>
		</form>
		<div class="pagediv">
			<ul class="page">
				<!-- 이전 블럭으로 이동 -->
				<li class="firstPage"><c:if test="${pagingInfo1.firstPage>1 }">
					<a href="#" onclick="pageProc(${pagingInfo1.firstPage-1})">&laquo;</a>
				</c:if></li>
				<!-- 페이지 번호 추가 -->
				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<li><c:forEach var="i" begin="${pagingInfo1.firstPage }" end="${pagingInfo1.lastPage }">
					<c:if test="${i==pagingInfo1.currentPage }">
						<span> ${i }</span>
					</c:if>
					<c:if test="${i!=pagingInfo1.currentPage }">
						<a href="#" onclick="pageProc(${i})"> ${i}</a>
					</c:if>
				</c:forEach></li>
				<!--  페이지 번호 끝 -->
	
				<!-- 다음 블럭으로 이동 -->
				<li><c:if test="${pagingInfo1.lastPage<pagingInfo1.totalPage }">
					<a href="#" onclick="pageProc(${pagingInfo1.lastPage+1})">&raquo;</a>
				</c:if></li>
			</ul>
		</div>
	</div>
	
	<c:if test="${freeVo.prevFreeboardNo!='0' }">
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>">다음글</a> | 
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.prevFreeboardNo}'/>">${freeVo.prevFreeboardTitle }</a>
	</c:if>
	<br>
	<c:if test="${freeVo.nextFreeboardNo!='0' }"> 
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">이전글</a> |
		<a href="<c:url value='/freeboard/updateCount.do?freeboardNo=${freeVo.nextFreeboardNo}'/>">${freeVo.nextFreeboardTitle }</a>
	</c:if>
	<hr style="color: silver;"><br>
</body>
</html>