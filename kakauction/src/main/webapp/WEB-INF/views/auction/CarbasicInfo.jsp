<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table  width="960" border="1px solid silver;" cellspacing="0" cellpadding="0" align="center">
		<thead >차량상세정보</thead>
		<tbody>
			<tr>
				<th>차량상세정보</th>
				<td>${vo.carNum}</td>
			</tr>
			<tr>
				<th>소재지</th>
				<td>vo.memberAddr+memberAddr2</td>
			</tr>
			<tr>
				<th>보관장소</th>
				<td>vo.carLoc</td>
			</tr>
			<tr>
				<th>기관/재산종류</th>
				<td>vo.carCompany/불용품</td>
			</tr>
			<tr>
				<th>집행기관</th>
				<td>c:if test="!empty vo.carCompany"
						vo.carCompany(vo.memberName)
					if여기까지 if
					c:if test="empty vo.carCompany"
						vo.memberName
					if여기까지 if
					/전화번호 : vo.memberHp
				</td>
			</tr>
			<tr>
				<th>입찰기간 설정</th>
				<td>회원등급별 차등시간 
				<input type="text" id="auctionStartTime" value=""> 
				<input type="text" id="auctionEndTime" value="">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<th>물건관리 번호</th>
							<td>경매번호나와라</td>
							<th>입찰번호</th>
							<td>현재까지 입찰한 횟수</td>
							<th>물건상태</th>
							<td>vo.auction_state</td>
						</tr>
						<tr>
							<th>입찰시작</th>
							<td>경매 등록 시간</td>
							<th>입찰마감</th>
							<td>vo.memberGrade</td>
							<th>개찰일자</th>
							<td>입찰 시간으로부터 15시간 이후 </td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table>
						<tr>
							<th>최저입찰가</th>
							<td>vo.auctionFirstprice</td>
						</tr>
					</table>
				</td>
				<td>
					<table>
						<tr>
							<th>이전책임</th>
							<td>매수자</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>