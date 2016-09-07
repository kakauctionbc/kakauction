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
<style>
	td, th{
		border: 2px solid silver;
	}
</style>
<form name="frmPage" method="post" action="<c:url value='/auction/list.do'/>">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchCondition" value="${param.searchCondition }">
	<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">	
</form>

<h2>자료실</h2>
<div class="divList">
<c:if test="${!empty param.searchKeyword }">
	<p>검색어 : ${param.searchKeyword }, ${pagingInfo.totalRecord }건 검색되었습니다.</p>
</c:if>
<c:if test="${empty searchVO.searchKeyword }">
	<p>전체 조회 결과 - ${pagingInfo.totalRecord }건 조회되었습니다</p>
</c:if>
<table class="box2"
	 	summary="자료실에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
	<caption>자료실</caption>
	<colgroup>
		<col style="width:10%;" />
		<col style="width:7%;" />
		<col style="width:25%;" />
		<col style="width:10%;" />
		<col style="width:7%;" />		
		<col style="width:6%;" />		
		<col style="width:7%;" />		
		<col style="width:12%;" />		
		<col style="width:12%;" />		
		<col style="width:4%;" />		
	</colgroup>
	<thead>
		<tr>
  			<th rowspan="2">사진</th>
  			<th rowspan="2">차종</th>
  			<th>물건명</th>
  			<th>연식</th>
  			<th>변속기</th>
  			<th>감정평가액</th>
  			<th>물건상태</th>
  			<th>입찰번호</th>
  			<th>입찰시작</th>
  			<th rowspan="2">조회</th>
		</tr>
	  	<tr>
  			<th>소재지</th>
  			<th>주행거리</th>
  			<th>연료</th>
  			<th>입찰시작가</th>
  			<th>유찰횟수</th>
  			<th>물건번호</th>
  			<th>입찰마감</th>
	  	</tr>
	</thead> 
	<tbody>  
	<c:if test="${empty alist}">
		<tr>
			<td colspan="10" class="align_center">
			해당 데이터가 없습니다
			</td>
		</tr>
	</c:if>
	<c:if test="${!empty alist}">
		<!--게시판 내용 반복문 시작  -->		
		<c:forEach var="vo" items="${alist }">
			<tr style="text-align: center">
				<td><img alt="사진" height="56px;" width="90px;" src="<c:url value='/picture_upload/${vo.picture1}'/>"></td>
				<td>${vo.carSize}</td>
				<td style="text-align: left;">
					<a href	="<c:url value='/auction/updateCount.do?auctionNo=${vo.auctionNo}'/>">
						${vo.carModel}<br>
						<c:if test="${fn:length(vo.carLoc)>30}">
							${fn:substring(vo.carLoc, 0,30)}...
						</c:if>
						<c:if test="${fn:length(vo.carLoc)<=30}">
							${vo.carLoc}
						</c:if>
					</a>
				</td>
				<td>
					${vo.carBirth}<br>
					${vo.carDist}km
				</td>
				<td>
					${vo.carAm}<br>
					${vo.carGas}
				</td>
				<td>
					${vo.carPrice}<br>
					${vo.auctionFirstprice}
				</td>
				<td>
					${vo.auctionState}<br>
					${vo.carFailSell}
				</td>
				<td>
					${vo.auctionNoYear} - ${vo.auctionNoCar} - ${vo.auctionNo}
				</td>
				<td>
					${vo.auctionRegdate}<br>
					${vo.auctionFinish }
				</td>
				<td>${vo.auctionReadCount }</td>
			</tr>
		</c:forEach>
		<!--반복처리 끝  -->
	</c:if>
	</tbody>
</table>	   
</div>
<div class="divPage">
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">	
		<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/images/first.JPG'/>" 
					alt="이전블럭으로">
		</a>	
	</c:if>
	
	<!-- 페이지 번호 추가 -->						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage }" 
		end="${pagingInfo.lastPage }">	 
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight: bold">
				${i }</span>
		</c:if>		
		<c:if test="${i!=pagingInfo.currentPage }">
				<a href="#" onclick="pageProc(${i})">
				[${i}]</a>
		</c:if>
	</c:forEach>	
	<!--  페이지 번호 끝 -->
	
	<!-- 다음 블럭으로 이동 -->
	<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">	
		<a href="#" 
		onclick="pageProc(${pagingInfo.lastPage+1})">
			<img src="<c:url value='/images/last.JPG'/>" 
					alt="다음블럭으로">
		</a>
	</c:if>
</div>
<div class="divSearch">
   	<form name="frmSearch" method="post" 
   	action="<c:url value='/reBoard/list.do' />" >
        <select name="searchCondition">
            <option value="title"
           	   <c:if test="${param.searchCondition=='title'}">
            		selected
               </c:if>
            >제목</option>
            <option value="content" 
            	<c:if test="${param.searchCondition=='content'}">
            		selected
               </c:if>
            >내용</option>
            <option value="name" 
            	<c:if test="${param.searchCondition=='name'}">
            		selected
               </c:if>
            >작성자</option>
        </select>   
        <input type="text" name="searchKeyword" 
        	title="검색어 입력" value="${param.searchKeyword}" >   
		<input type="submit" value="검색">
    </form>
</div>

<div class="divBtn">
    <a href="<c:url value='/reBoard/write.do'/>" >
	글쓰기</a>
</div>
<%@ include file="../design/inc/bottom.jsp"%>