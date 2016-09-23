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
				$("#auctionMember").html("현재 입찰한 회원 목록 닫기");
				$("#auctionMember").css("color", "#ff499a");
				
			}else if($("#on_off").val()=="on"){
				$("#on_off").val("off");
				$("#auctionMemberList").hide();
				$("#auctionMember").html("현재 입찰한 회원 목록 보기");
				$("#auctionMember").css("color", "#4996ff");
			}
		});
	});
</script>
<style type="text/css">
	table{
		width: 1000px;
	}
	.border-none td{
		border: none;
	}
	#auctionMember{
		padding-top: 50px;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>경매리스트관리>진행상황관리
			</p>
		</div>
		<div>
			<table>
				<tr>
					<th style="text-align: right;">현재 신고수</th>
					<td style="text-align: center; border: none; font-size: 1.2em; font-weight: bold; color: red; width: 50px;">
					${auctionVo.auctionReportCount}</td>
				</tr>
			</table>
			<table>
				<tr>
					<th style="padding-bottom: 20px;">
						<img src="${pageContext.request.contextPath }/img/adminAuctionDetail_logo.png" alt="경매진행상황로고">
					</th>
				</tr>
				<tr>
					<td style="border-left: none; border-right: none;">
						<table>
							<colgroup>
								<col style="width: 330px;"/>
								<col style="width: 330px;"/>
								<col style="width: 340px;"/>
							</colgroup>
							<tr>
								<th colspan="3" style="background:#fbe779; height: 30px; font-size: 1.1em; border-top: 1px solid silver;">
									현재 최고가 회원
								</th>
							</tr>
							<tr style="background: #fcf2b8;">
								<th>현재 낙찰가</th>
								<th>현재 낙찰 회원 아이디</th>
								<th>입찰 시간</th>
							</tr>
							<c:if test="${empty firstMem}">
								<tr><td>현재 입찰한 회원이 없습니다</td></tr>
							</c:if>
							<c:if test="${!empty firstMem}">
								<tr style="text-align: center;" class="border-none">
									<td style="border-bottom: 1px solid silver;"><fmt:formatNumber pattern="#,###" value="${firstMem.recordPrice}"/>만원</td>
									<td style="border-bottom: 1px solid silver;">${firstMem.buyerMemberId}</td>
									<td style="border-bottom: 1px solid silver;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${firstMem.recordRegdate}"/></td>
								</tr>
							</c:if>
						</table>
					</td>
				</tr>
				<tr>
					<td style="border-left: none; border-right: none;">
						<table>
							<col style="width: 330px;"/>
							<col style="width: 330px;"/>
							<col style="width: 340px;"/>
							<tr>
								<input type="hidden" id="on_off" value="off">
								<th colspan="3" id="auctionMember" style="padding-bottom: 5px; color:#4996ff; cursor: pointer;">
									현재 입찰한 회원 목록 보기 
								</th>
							</tr>
							<tr>
								<th style="border-top: 1px solid silver; background:#fcf2b8;">입찰가</th>
								<th style="border-top: 1px solid silver; background:#fcf2b8;"">회원 아이디</th>
								<th style="border-top: 1px solid silver; background:#fcf2b8;"">입찰 시간</th>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div id="auctionMemberList">
				<table style="text-align: center;">
				<col style="width: 330px;"/>
				<col style="width: 330px;"/>
				<col style="width: 340px;"/>
					<c:if test="${empty alist }">
						<tr><td>참여한 회원이 없습니다</td></tr>
					</c:if>
					<c:if test="${!empty alist }">
						<c:forEach var="vo" items="${alist}">
							<tr>
								<th style="border-bottom: 1px solid silver;"><fmt:formatNumber pattern="#,###" value="${vo.recordPrice}"/>만원</td>
								<th style="border-bottom: 1px solid silver;">${vo.buyerMemberId}</td>
								<th style="border-bottom: 1px solid silver;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${vo.recordRegdate}"/></td>
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
