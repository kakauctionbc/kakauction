<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<table>
	<tr>
		<th>
			<table>
				<tr>
					<td>
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
		<td>거래 취소 확인</td>
	</tr>
	<tr>
		<td>
			<table>
				<tr>
					<th>
						차량번호
					</th>
					<th>
						낙찰가의 10%금액
					</th>
					<th>
						차량주소
					</th>
				</tr>
				<tr>
					<th>
						차량번호
					</th>
					<th>
						낙찰가
					</th>
					<th>
						차량주소
					</th>
				</tr>
				<tr>
					<td>
						총 금액
					</td>
					<td colspan="2">
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<%@ include file="../design/inc/bottom.jsp" %>