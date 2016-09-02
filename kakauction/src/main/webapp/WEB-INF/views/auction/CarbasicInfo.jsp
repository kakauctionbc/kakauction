<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table>
		<thead>차량상세정보</thead>
		<tbody>
			<tr>
				<th>차량상세정보</th>
				<td>차량모델</td>
			</tr>
			<tr>
				<th>소재지</th>
				<td>여기는 회원주소</td>
			</tr>
			<tr>
				<th>보관장소</th>
				<td>여기는 차량주소</td>
			</tr>
			<tr>
				<th>기관/재산종류</th>
				<td>내용내용/내용</td>
			</tr>
			<tr>
				<th>집행기관</th>
				<td>판매신청을 한 회원의 번호</td>
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
							<td>시작날짜+시간+초</td>
							<th>입찰마감</th>
							<td>종료날짜+시간+초</td>
							<th>개찰일자</th>
							<td>입찰마감+18시간</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table>
						<tr>
							<th>최저입찰가</th>
							<td>비싸겠지?</td>
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