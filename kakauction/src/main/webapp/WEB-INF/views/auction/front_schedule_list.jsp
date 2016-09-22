<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<style>
	h1{
		font-size: 2em;
		font-weight: bold;
		margin-bottom: 10px;
	}
</style>
<form name="frmPage" method="post" action="<c:url value='/auction/front_schedule_list.do'/>">
	<input type="hidden" name="currentPage">
</form>

<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/admin/index.do">HOME</a>>회원목록
			</p>
		</div>
		<div id="pagelogo">
			<%-- <img src="${pageContext.request.contextPath }/img/auctionList_logo.png" alt="회원가입로고"> --%>
			<h1>일정안내</h1>
		</div>
		
		<div class="schedule">
			<table
				summary="경매 일정을 알려드립니다.">
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 10%;" />
					<col style="width: 15%;" />
					<col style="width: 15%;" />
					<col style="width: 10%;" />
				</colgroup>
				<thead>
					<tr class="listTitle">
						<th>경매회차</th>
						<th>경매장</th>
						<th>시작</th>
						<th>종료</th>
						<th>진행</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>회차</td>						
						<td>경매장</td>						
						<td>시작</td>						
						<td>종료</td>						
						<td>진행</td>						
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 페이징 처리하기~ -->
		<%-- <div class="divPage">
			<!-- 이전 블럭으로 이동 -->
			<c:if test="${pagingInfo.firstPage>1 }">	
				<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">
					<img src="<c:url value='/image/first.JPG'/>" 
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
					<img src="<c:url value='/image/last.JPG'/>" 
							alt="다음블럭으로">
				</a>
			</c:if>
		</div> --%>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>