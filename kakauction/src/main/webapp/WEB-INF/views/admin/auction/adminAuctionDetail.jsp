<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../design/inc/adminTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#auctionMemberList").hide();
		$("#auctionMember").click(function(){
			if($("#on_off").val()=="off"){
				$("#on_off").val("on");
				$("#auctionMemberList").show();
				$("#auctionMember").html("현재 입찰한 회원 목록 닫기 ");
				
			}else if($("#on_off").val()=="on"){
				$("#on_off").val("off");
				$("#auctionMemberList").hide();
				$("#auctionMember").html("현재 입찰한 회원 목록 보기 ");
			}
		});
	});
</script>
<style type="text/css">
	table{
		width: 1000px;
	}
	td{
		border: 1px solid silver;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>관심경매
			</p>
		</div>
		<div>
			<table>
				<tr>
					<th style="text-align: right;">현재 신고수</th>
					<td style="text-align: center;">${auctionVo.auctionReportCount}</td>
				</tr>
			</table>
			<table>
				<tr>
					<th>
						경매 진행 상황
					</th>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<th colspan="3">
									현재 최고가 회원
								</th>
							</tr>
							<tr>
								<th>현재 낙찰가</th>
								<th>현재 낙찰 회원 아이디</th>
								<th>입찰 시간</th>
							</tr>
							<c:if test="${empty firstMem}">
								<tr><td>현재 입찰한 회원이 없습니다</td></tr>
							</c:if>
							<c:if test="${!empty firstMem}">
								<tr>
									<td>${firstMem.recordPrice}</td>
									<td>${firstMem.buyerMemberId}</td>
									<td>${firstMem.recordRegdate}</td>
								</tr>
							</c:if>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<input type="hidden" id="on_off" value="off">
								<th colspan="3" id="auctionMember">
									현재 입찰한 회원 목록 보기 
								</th>
							</tr>
							<tr>
								<th>입찰가</th>
								<th>회원 아이디</th>
								<th>입찰 시간</th>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div id="auctionMemberList">
				<table>
					<c:if test="${empty alist }">
						<tr><td>참여한 회원이 없습니다</td></tr>
					</c:if>
					<c:if test="${!empty alist }">
						<c:forEach var="vo" items="${alist}">
							<tr>
								<td><fmt:formatNumber pattern="#,###" value="${vo.recordPrice}"/>만원</td>
								<td>${vo.buyerMemberId}</td>
								<td><fmt:formatDate pattern="yyyy-MM-ss HH:mm:ss" value="${vo.recordRegdate}"/></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
		<br>
	</div>
	</div>
	<br><br>
<%@ include file="auctionCarDetail.jsp" %>
</div>
</body>
</html>
