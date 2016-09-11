<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<body>
	<div>
    <table class="cartListTbl box2"
	summary="공매차량 목록에 관한 표로써, 사진, 차종, 연식, 주행거리, 초기매매가, 등록일 등의 정보를 제공합니다." style="text-align: center;">
		<caption>공매차랑 목록</caption>
		<colgroup>
			<col width="20%" />
			<col width="20%" />
			<col width="20%" />
			<col width="10%" />		
			<col width="10%" />		
			<col width="20%" />		
		</colgroup>
		<thead>
			<tr>
				<th scope="col">사진</th>
				<th scope="col">차종</th>
				<th scope="col">연식</th>
				<th scope="col">주행거리</th>			
				<th scope="col">초기 매매가</th>			
				<th scope="col">등록일</th>			
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty carList }">
				<tr>
					<td colspan="5" style="text-align: center;">등록하신 차량이 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${!empty carList }">
				<c:forEach var="car" items="${carList }">
					<tr class="align_center">
						<td class="align_left">
							<img alt="첫번째 차량 이미지" src="<c:url value='/picture_upload/${car["PICTURE_1"] }'/>" align="absmiddle" style="width: 80px; height: 80px;">
						</td>
						<td class="align_right"><a href="<c:url value='/car/detail.do?carNum=${car["CAR_NUM"] }'/>">
							<p>${car["CAR_MODEL"] }</p><p>${car["CAR_NUM"] }</p></a></td>
						<td>${car['CAR_BIRTH']}</td>
						<td class="align_right">${car['CAR_DIST']} km</td>
						<td><fmt:formatNumber value="${car['CAR_PRICE'] }" pattern="#,###"/>만원</td>
						<td><p><fmt:formatDate value="${car['CAR_REGDATE'] }" pattern="yyyy년MM월dd일"/></p>
						<p><fmt:formatDate value="${car['CAR_REGDATE'] }" pattern="HH시 mm분"/></p></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	</div>       
</body>

<%@ include file="../design/inc/bottom.jsp"%>