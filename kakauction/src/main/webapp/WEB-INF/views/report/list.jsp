<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" 
	src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr")
			.hover(function(){
				$(this).css("background","skyblue")
					.css("cursor","pointer");
			}, function(){
				$(this).css("background","");
			});
	});

	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
	

</script>

<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>경매리스트
			</p>
		</div>
		<div id="pagelogo">
			<img
				src="${pageContext.request.contextPath }/img/auctionList_logo.png"
				alt="경매리스트">
		</div>
		<form name="frmPage" method="post" action="<c:url value='/auction/list.do'/>">
			<input type="hidden" name="currentPage"> 
			<input type="hidden" name="searchCondition" value="${param.searchCondition }"> 
			<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">
		</form>

		<div class="divList">
			<c:if test="${!empty param.searchKeyword }">
				<p>${param.searchKeyword }님의 신고 접수 ${pagingInfo.totalRecord }건입니다.</p>
			</c:if>
			<c:if test="${empty searchVO.searchKeyword }">
				<p>전체 조회 결과 - ${pagingInfo.totalRecord }건 조회되었습니다</p>
			</c:if>
			<table class="box2" summary="자료실에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
				<caption>자료실</caption>
				<colgroup>
					<col style="width: 10%;" />
					<col style="width: 7%;" />
					<col style="width: 20%;" />
					<col style="width: 10%;" />
					<col style="width: 7%;" />
					<col style="width: 10%;" />
					<col style="width: 7%;" />
					<col style="width: 12%;" />
					<col style="width: 12%;" />
					<col style="width: 4%;" />
				</colgroup>
				<thead>
					<tr class="listTitle">
						<th>경매번호 / 자동차 정보</th>
						<th>신고유형</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty alist}">
						<tr>
							<td colspan="3" class="align_center">해당 데이터가 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${!empty alist}">
						<!--게시판 내용 반복문 시작  -->
						<c:forEach var="vo" items="${alist }">
							<tr style="text-align: center">
								<td class="listName" style="text-align: left;">
									<a href="<c:url value='/report/updateCount.do?auctionNo=${vo.auctionNo}'/>">
										${vo.auctionNo} / ${vo.reportCarinfo}</a>
								</td>
								<td>${vo.reportType }</td>
							</tr>
						</c:forEach>
						<!--반복처리 끝  -->
					</c:if>
					
				</tbody>
			</table>
		</div>
		
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
		
		<div class="divSearch">
			<form name="frmSearch" method="post"
				action="<c:url value='/reBoard/list.do' />">
				<select name="searchCondition">
					<option value="title"
						<c:if test="${param.searchCondition=='title'}">
            		selected
               </c:if>>제목</option>
					<option value="content"
						<c:if test="${param.searchCondition=='content'}">
            		selected
               </c:if>>내용</option>
					<option value="name"
						<c:if test="${param.searchCondition=='name'}">
            		selected
               </c:if>>작성자</option>
				</select> <input type="text" name="searchKeyword" title="검색어 입력"
					value="${param.searchKeyword}"> <input type="submit"
					value="검색">
			</form>
		</div>
		<div class="writebutton">
			<button type="submit" onclick="<c:url value='/auction/write.do'/>">글쓰기</button>
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>