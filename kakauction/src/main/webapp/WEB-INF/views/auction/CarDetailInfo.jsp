<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table>
		<thead>물건 기본 정보
		</thead>
		<tbody>
			<tr>
				<th>차량명</th>
				<td>memberId 님의 차량</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<th>차량번호</th>
							<td>carVo.carNum</td>
							<th>연식</th>
							<td>carVo.carBirth</td>
							<th>연료</th>
							<td>carGas</td>
						</tr>
						<tr>
							<th>기어</th>
							<td>carVo.carAm</td>
							<th>주행거리</th>
							<td>carVo.carDist</td>
							<th>배기량</th>
							<td>carVo.carCc</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<th>세부내역</th>
				<td>시청 상징물 등 도색된 상태로 매수자가 제거 필요
사진은 해당 차량이 아닐 수 있으므로 실물 확인 바람 </td>
			</tr>
	</table>
</div>