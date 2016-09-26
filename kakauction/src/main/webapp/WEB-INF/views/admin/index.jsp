<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/adminTop.jsp" %>
<style>
	h1{
		font-size: 2em;
		font-weight: bold;
		margin-bottom: 10px;
	}
	td, th{
		border: 1px solid silver;
	}
	.memTable{
		width: 1000px;
		border: 1px solid silver;
		border-collapse: collapse;
	}
	.memTable tr th{
		border-top:1px solid silver;
		border-bottom:1px solid silver;
		background: #fffffb;
		height: 30px;
		
	}
	.memTable tr td{
		border-bottom: 1px solid silver;
		text-align: center;
	}
	
	.memTable tbody tr td{
		height: 50px;
	}
	
	#wrap{
		height: 120px;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="pagelogo">
			<%-- <img src="${pageContext.request.contextPath }/img/auctionList_logo.png" alt="회원가입로고"> --%>
			<h1>kakauction 현황</h1>
		</div>
		<div>
			<table summary="메인에 들어갈 것으로 카카옥션에 대한 정보를 제공합니다." class="memTable">
				<colgroup>
					<col style="width: *%;" />
					<col style="width: 14%;" />
					<col style="width: 14%;" />
					<col style="width: 14%;" />
					<col style="width: 14%;" />
					<col style="width: 14%;" />
					<col style="width: 14%;" />
				</colgroup>
				<thead>
					<tr>
						<th>경매신청차량</th>
						<th>경매등록</th>
						<th>경매완료</th>
						<th>신고차량</th>
						<th>신고회원</th>
						<th>당일가입회원</th>
						<th>당일탈퇴회원</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${carApply }건</td>
						<td>${auctionStart }건</td>
						<td>${auctionEnd }건</td>
						<td>${reportCar }건</td>
						<td>${reportNo }명</td>
						<td>${memberJoin }명</td>
						<td>${memberOut }명</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div id="wrap">
	<div id="wrapdiv">
		<div id="pagelogo">
		</div>
	</div>
</div>
 <jsp:include page="/admin/highChart.do"></jsp:include>
<%@ include file="../design/inc/adminBottom.jsp" %>