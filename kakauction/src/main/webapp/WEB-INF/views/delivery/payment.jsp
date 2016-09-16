<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<style type="text/css">
	table {
		margin-top: 50px;
		margin-left: 450px;
		border: 1px solid silver;
	}
	td{
		border: 1px solid silver;
		height: 50px;
	}
	#inTable{
		margin: 0 auto;
		width: 800px;
	}
	.imgTag{
		padding-bottom: 0px;
		text-align: center;
	}
</style>
<table>
	<tr>
		<td style="height: 20px;">&diams;결제가 완료되었습니다</td>
	</tr>
	<tr>
		<th colspan="2">
			<table id="inTable">
				<tr>
					<td style="text-align: center;">
						<img alt="아이콘" src="<c:url value='/img/payFinish.png'/>">
					</td>
					<td>
						<h1>결제가 완료되었습니다</h1>
						<br><h3>거래해주셔서 감사합니다. 아래 내역을 확인해 주세요</h3>
					</td>
				</tr>
			</table>
		</th>
	</tr>
	<tr>
		<td colspan="2"><br><br>주문 내역 확인</td>
	</tr>
	<tr>
		<td colspan="2">
			<table id="inTable">
				<tr>
					<th>
						차량번호
					</th>
					<th>
						거래금액
					</th>
					<th>
						차량주소
					</th>
				</tr>
				<tr>
					<th>
						${data["carNum"]}
					</th>
					<th>
						${data["recordPrice"]}
					</th>
					<th>
						${data["buyerMemberId"]}
					</th>
				</tr>
				<tr>
					<th>
						총 금액
					</th>
					<td colspan="2">
						${data["recordPrice"]}
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="height: 150px;" class="imgTag">
			<a href="<c:url value='/auction/list.do'/>"><img alt="경매보러가기" src="<c:url value='/img/auctionList.png'/>"/></a>
		</td>
		<td class="imgTag">
			<a href="<c:url value='/index.do'/>"><img alt="메인페이지로" src="<c:url value='/img/KAKA.png'/>"/></a>
		</td>
	</tr>
</table>
<%@ include file="../design/inc/bottom.jsp" %>