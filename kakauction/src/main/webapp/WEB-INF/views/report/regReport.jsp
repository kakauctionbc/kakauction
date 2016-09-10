<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<script src="<c:url value='/ckeditor/ckeditor.js'/>" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('regReportContent');
	});
</script>
	<div>
		<form action="<c:url value='/report/auctionReport.do'/>" method="post" id="frmReport">
			<table>
				<tr>
					<td>카카옥션 불량 경매 신고</td>
					<td>
						<label for="buyerMemberId">아이디</label>
						<input type="text" name="buyerMemberId" id="buyerMemberId" readonly="readonly" value="${memberId }">
					</td>
					<td>
						<input type="submit" value="신고하기">
					</td>
					<td>
						<label for="reportCarInfo">차량정보</label>
						<input type="text" name="reportCarInfo" id="reportCarInfo" readonly="readonly" value="${auctionVo.carNum }">
					</td>
					<td>
						<input type="text" readonly="readonly" value="판매자 아이디${auctionVo.sellerMemberId }">
					</td>
					<td>
						<select>
							<option value="허위매물">허위매물</option>
							<option value="고의응찰">고의응찰</option>
							<option value="허위정보">허위정보</option>
							<option value="과장정보">과장정보</option>
							<option value="판매자허위정보">판매자허위정보</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<label for="regReportContent">신고내용</label>
						<textarea id="regReportContent" name="regReportContent" rows="12" cols="40"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="submit" value="작성">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="../design/inc/bottom.jsp" %>