<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table>
		<thead>차량상세정보</thead>
		<tbody>
			<tr>
				<th>차량상세정보</th>
				<td>carVo.carModel</td>
			</tr>
			<tr>
				<th>소재지</th>
				<td>memberVo.memberAddr+memberAddr2</td>
			</tr>
			<tr>
				<th>보관장소</th>
				<td>carVo.carLoc</td>
			</tr>
			<tr>
				<th>기관/재산종류</th>
				<td>carVo.carCompany/불용품</td>
			</tr>
			<tr>
				<th>집행기관</th>
				<td>c:if test="!empty carVo.carCompany"
						carVo.carCompany(memberVo.memberName)
					if여기까지 if
					c:if test="empty carVo.carCompany"
						memberVo.memberName
					if여기까지 if
					/전화번호 : memberVo.memberHp
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
							<td>입찰중인지 뭔지</td>
						</tr>
						<tr>
							<th>입찰시작</th>
							<td>auctionVo.auctionRegdate</td>
							<th>입찰마감</th>
							<td>auctionVo.auctionFinish</td>
							<th>개찰일자</th>
							<td>auctionVo.auctionOpentime</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table>
						<tr>
							<th>최저입찰가</th>
							<td>auctionVo.auctionFirstprice</td>
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