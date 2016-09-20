<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
	<script type="text/javascript" 
	src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr").hover(function(){
			$(this).css("background","skyblue")
				.css("cursor","pointer");
		}, function(){
			$(this).css("background","");
		});
		$("#frmOrderList").submit(function(){
			if($("#startDay").val().length<1){
				alert("시작일을 입력하세요");
				$("#startDay").focus();
				return false;
			}else if($("#endDay").val().length<1){
				alert("종료일을 입력하세요");
				$("#endDay").focus();
				return false;
			}
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

<form name="frm1" method="post" id="frmOrderList" action="<c:url value='/auction/myAuctionList.do'/>" >
	<!-- 조회기간 include -->
	<%@include file="../design/inc/dateTerm.jsp" %>
	<input type="submit" value="조회" >
</form>

<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>신고리스트
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
		<div><p>내가 참여한 경매 건 수 : ${alistsize }</p></div>
		<div class="divList">
			<table class="box2">
				<caption>나의 경매리스트</caption>
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
						<th rowspan="2">경매 번호</th>
						<th rowspan="2">사진</th>
						<th rowspan="2">차번호</th>
						<th>연식</th>
						<th>내 입찰가</th>
						<th>입찰시작</th>
						<th rowspan="2" class="readCount">조회</th>
					</tr>
					<tr>
						<th>주행거리</th>
						<th>경매 시작가</th>
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
						<c:forEach var="vo" items="${alist}">
							<tr style="text-align: center">
								<c:if test="${vo['auctionState']=='END'}">
									<td colspan="9"><a href="#" style="color: gray;">이미 종료된 경매 입니다</a></td>
								</c:if>
								<c:if test="${vo['auctionState']!='END'}">
								<td>${vo['auctionNoYear']}-${vo['auctionNoCar']}-${vo['auctionNo']}</td>
								<td class="listImg">
									<img alt="사진" height="56px;" width="90px;" src="<c:url value='/picture_upload/${vo["picture1"]}'/>">
								</td>
								<td class="listName" style="text-align: left;">
									<a class="auctionTitle" href="<c:url value='/auction/updateCount.do?auctionNo=${vo["auctionNo"]}'/>">
										${vo['carNum']}<br>
										<c:if test="${fn:length(vo['carLoc'])>30}">
											${fn:substring(vo['carLoc'], 0,30)}...
										</c:if> 
										<c:if test="${fn:length(vo['carLoc'])<=30}">
											${vo['carLoc']}
										</c:if>
									</a>
									</td>
								<td>${vo['carBirth']}<br> <fmt:formatNumber pattern="#,###" value="${vo['carDist']}"/>km
								</td>
								<td>
									<p style="color:red;font-size: 1.5em;font-weight: bold;">
										<fmt:formatNumber pattern="#,###" value="${vo['recordPrice']}"/>만원
									</p>
									<fmt:formatNumber pattern="#,###" value="${vo['auctionFirstprice'] }"/>만원
								</td>
								<td>${vo['auctionRegdate']}<br> ${vo['auctionFinish']}
								</td>
								</c:if>
								<td class="readCount">${vo['auctionReadCount']}</td>
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