<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<style type="text/css">
	.memList{
		width: 80%;
		margin: 0 auto;
	}
	th, td{
		border: 1px solid silver;
	}
	.listTitle{
		margin-top: 40px;
		margin-bottom: 20px;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/admin/index.do">HOME</a>>회원관리>경매회원조회
			</p>
		</div>
		<div id="pagelogo">
		</div>
		<form name="frmPage" method="post" action="<c:url value='/admin/member/auctionMember.do'/>">
			<input type="hidden" name="currentPage">
		</form>
	
		<div class="memList">
			<form name="frmList" method="post" action="<c:url value='/admin/member/auctionMember.do'/>">
				<div class="listTitle">
					<h1 style="font-size: 1.5em; font-weight: bold;">■ 경매에 참여한 회원 목록</h1>
				</div>
				<div class="memTable">
					<table
						summary="회원에 관한 표로써, 아이디, 등급, 가입일, 주소지, 등에 대한 정보를 제공합니다.">
						<colgroup>
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: 12%;" />
							<col style="width: *%;" />
						</colgroup>
						<thead>
							<tr class="listTitle">
								<th>차량번호</th>
								<th>구매자아이디</th>
								<th>이름</th>
								<th>휴대번호</th>
								<th>낙찰가</th>
								<th>낙찰일시</th>
								<th>판매자아이디</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:if test="${empty aMemList}">
									<td colspan="8" style="text-align: center;">경매에 참여한 회원이 없습니다.</td>
								</c:if>
								<c:if test="${!empty aMemList}">
									<c:forEach var="map" items="${aMemList}">
										<tr>
											<td>${map['CAR_NUM']}</td>
											<td>${map['BUYER_MEMBER_ID'] }</td>
											<td>${map['MEMBER_NAME']}</td>
											<td>${map['MEMBER_HP']}</td>
											<td><fmt:formatNumber pattern="#,###" value="${map['RECORD_PRICE']}"/>만원</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${map['LASTBUYER_REGDATE']}"/></td>
											<td>${map['SELLER_MEMBER_ID']}</td>
										</tr>
									</c:forEach>
								</c:if>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 페이징 처리하기~ -->
				<div class="divPage">
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
				</div>
			</form>
		</div>	
	</div>	
</div>	
<%@ include file="../../design/inc/adminBottom.jsp"%>