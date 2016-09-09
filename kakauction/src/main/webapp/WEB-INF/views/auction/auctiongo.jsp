<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../design/inc/top.jsp" %>
<style type="text/css">
	table, td{
		border: 1px solid red;
	}
</style>
	<div>
		<table>
			<thead>
				<tr>
					<td><img alt="logo" src="<c:url value='/img/logo.png'/>"></td>
					<td><a href="#"><img alt="관심경매" src="<c:url value='/img/auctionChoice.png'/>"></a></td>
					<td><img alt="관심경매" src="<c:url value='/img/blank.png'/>"></td>
					<td>회원아이디</td>
					<td>경매 나가기</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="3">
						<table>
							<tr>
								<th colspan="6">차모델+연식</th>
							</tr>
							<tr>
								<td>년식</td>
								<td>db년식</td>
								<td>주행거리</td>
								<td>db주행거리km</td>
								<td rowspan="2">특이</td>
								<td rowspan="2">여긴 특이점 쓴당</td>
							</tr>
							<tr>
								<td>변속기</td>
								<td>db자/수동</td>
								<td>연료</td>
								<td>db연료</td>
							</tr>
							<tr>
								<td>연료</td>
								<td>db연료</td>
								<td>변경</td>
								<td>변경쓰는곳</td>
								<td>여기는</td>
								<td>크엉</td>
							</tr>
							<tr>
								<td colspan="4">사진1</td>
								<td colspan="2">사진2</td>
							</tr>
						</table>
					</td>
					<td colspan="2">
						<table>
							<tr>
								<td><input type="button" value="후상담 낙찰결과"></td>
							</tr>
							<tr>
								<td>
									<a href="#">정보 1-cardetailinfo</a><br>
									<a href="#">정보 2-sellmemberinfo</a><br>
									<a href="#">정보 3-auctioninfo</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<table>
							<tr>
								<td rowspan="2">경매번호<br> 여기들어감</td>
								<td colspan="3">경매상태</td>
								<td rowspan="2">
									<p>작은 글씨로 최초입찰가</p>
									<p>억 천 백 십 일</p><br>
									<h1>현재 최고 입찰가 만원</h1>
								</td>
								<td>
									권리-내가 최고입찰가면 불이 띵동
								</td>
								<td rowspan="2">
									<input type="button" value="응찰">
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>낙찰</td>
							</tr>
						</table>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
<%@ include file="../design/inc/bottom.jsp" %>
