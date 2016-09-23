<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
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
<style type="text/css">
	#right{
		float: right;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>경매리스트관리
			</p>
		</div>
	<div id="right">
		<a href="<c:url value='/admin/auction/auctionWrite.do'/>">경매 등록 화면</a>
	</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/adminAuctionList_logo.png" alt="경매리스트관리로고">
		</div>
		<form name="frmPage" method="post" action="<c:url value='/admin/auction/auctionList.do'/>">
			<input type="hidden" name="currentPage"> 
			<input type="hidden" name="searchCondition" value="${param.searchCondition }"> 
			<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">
		</form>

		<div class="divList">
			<p>전체 목록 - ${pagingInfo.totalRecord }건 조회되었습니다</p>
			<table class="box2">
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
						<th rowspan="2" class="listImg">사진</th>
						<th rowspan="2" class="listSize">차종</th>
						<th>물건명</th>
						<th>연식</th>
						<th>변속기</th>
						<th>감정평가액</th>
						<th>물건상태</th>
						<th rowspan="2" style="border-left: 1px solid silver; border-right: 1px solid silver;">물건번호</th>
						<th>입찰시작</th>
						<th rowspan="2" class="readCount">조회수</th>
					</tr>
					<tr>
						<th>소재지</th>
						<th>주행거리</th>
						<th>연료</th>
						<th>입찰시작가</th>
						<th>유찰횟수</th>
						<th>입찰마감</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty alist}">
						<tr>
							<td colspan="10" class="align_center">해당 데이터가 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${!empty alist}">
						<!--게시판 내용 반복문 시작  -->
						<c:forEach var="vo" items="${alist }">
							<tr style="text-align: center">
								<td class="listImg"><img alt="사진" height="56px;" width="90px;" src="<c:url value='/picture_upload/${vo.picture1}'/>"></td>
								<td class="listSize">${vo.carSize}</td>
								<c:if test="${vo.auctionState=='END' }">
									<td class="listName" style="text-align: center;">
										<a href="<c:url value='/admin/auction/auctionDetail.do?auctionNo=${vo.auctionNo}'/>">
											[종료]<br>${vo.carModel} 
										</a>
									</td>
								</c:if>
								<c:if test="${vo.auctionState!='END' }">
									<td class="listName" style="text-align: left;">
										<a href="<c:url value='/admin/auction/auctionDetail.do?auctionNo=${vo.auctionNo}'/>">
											${vo.carModel}<br> 
										<c:if test="${fn:length(vo.carLoc)>30}">
											${fn:substring(vo.carLoc, 0,30)}...
										</c:if> 
										<c:if test="${fn:length(vo.carLoc)<=30}">
											${vo.carLoc}
										</c:if>
										</a>
									</td>
								</c:if>
								<td>${vo.carBirth}<br> ${vo.carDist}km
								</td>
								<td>${vo.carAm}<br> ${vo.carGas}
								</td>
								<td>${vo.carPrice}<br> ${vo.auctionFirstprice}
								</td>
								<td>${vo.auctionState}<br> ${vo.carFailSell}
								</td>
								<td>${vo.auctionNoYear} - ${vo.auctionNoCar} -
									${vo.auctionNo}</td>
								<td>${vo.auctionRegdate}<br> ${vo.auctionFinish }
								</td>
								<td>${vo.auctionReadCount}</td>
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
		<div id="right">
			<a href="<c:url value='/admin/auction/auctionWrite.do'/>">경매 등록 화면</a>
		</div>		
		</div>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>