<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr").hover(function(){
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
<!-- 페이징 처리를 위한 form 시작-->
<form name="frmPage" method="post">
	<input type="hidden" name="startDay" value="${param.startDay}">
	<input type="hidden" name="endDay" value="${param.endDay}">
	<input type="hidden" name="currentPage">	
</form>

<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>경매입찰현황
			</p>
		</div>
		<div id="pagelogo">
			<img
				src="${pageContext.request.contextPath }/img/auctionList_logo.png"
				alt="회원가입로고">
		</div>
		<form name="frmPage" method="post" action="<c:url value='/auction/list.do'/>">
			<input type="hidden" name="currentPage"> <input type="hidden"
				name="searchCondition" value="${param.searchCondition }"> <input
				type="hidden" name="searchKeyword"
				value="${searchVO.searchKeyword }">
		</form>
		<div><p>내가 등록한 차량 경매 건 수 : ${alistsize }</p></div>
		<div class="divList">
			<table class="box2">
				<caption>나의 경매리스트</caption>
				<colgroup>
					<col style="width: 20%;" />
					<col style="width: 40%;" />
					<col style="width: 10%;" />
					<col style="width: 20%;" />
					<col style="width: 10%;" />
				</colgroup>
				<thead>
					<tr class="listTitle">
						<th rowspan="2">경매 번호</th>
						<th rowspan="2">차번호</th>
						<th>조회수</th>
						<th>초기구입가</th>
						<th>입찰시작</th>
					</tr>
					<tr>
						<th>신고수</th>
						<th>경매 시작가</th>
						<th>입찰마감</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty alist}">
						<tr>
							<td colspan="7" class="align_center">해당 데이터가 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${!empty alist}">
						<!--게시판 내용 반복문 시작  -->
						<c:forEach var="vo" items="${alist}">
							<tr style="text-align: center">
								<c:if test="${vo['auctionState']=='END'}">
									<td colspan="7"><a href="#" style="color: gray;">이미 종료된 경매 입니다</a></td>
								</c:if>
								<c:if test="${vo['auctionState']!='END'}">
								<td>
									<p style="font-size: 2em;">
										${vo['AUCTION_NO_YEAR']}-${vo['AUCTION_NO_CAR']}-${vo['AUCTION_NO']}
									</p>
								</td>
								<td class="listName" style="text-align: center;">
									<a class="auctionTitle" href="<c:url value='/auction/updateCount.do?auctionNo=${vo["auctionNo"]}'/>">
										${vo['CAR_NUM']}<br>
										<c:if test="${fn:length(vo['CAR_LOC'])>30}">
											${fn:substring(vo['CAR_LOC'], 0,30)}...
										</c:if> 
										<c:if test="${fn:length(vo['CAR_LOC'])<=30}">
											${vo['CAR_LOC']}
										</c:if>
									</a>
									</td>
								<td>${vo['AUCTION_READ_COUNT']}<br> ${vo['AUCTION_REPORT_COUNT']}"
								</td>
								<td>
									<p style="color:red;font-size: 1.5em;font-weight: bold;">
										<fmt:formatNumber pattern="#,###" value="${vo['AUCTION_PROMP']}"/>만원
									</p>
									<fmt:formatNumber pattern="#,###" value="${vo['AUCTION_FIRSTPRICE'] }"/>만원
								</td>
								<td>${vo['AUCTION_REGDATE']}<br> ${vo['AUCTION_FINISH']}
								</td>
								</c:if>
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
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>