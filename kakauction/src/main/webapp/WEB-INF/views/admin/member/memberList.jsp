<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 조회</title>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<style type="text/css">
	.align_center{
		text-align: center;
	}
	.align_left{
		float:left;
		/* text-align: left; */
	}
	.align_right{
		float:right;
		/* text-align: right; */
	}
	td, th{
		border: 1px solid silver;
	}
	
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[name=chkAll]").click(function(){
			$("tbody input[type=checkbox]").prop("checked", this.checked);
		});
		
		$("#btEvent").click(function(){
			var count
			= $("input[type=checkbox]:checked").length;
			if (count==0) {
				alert("이벤트로 등록하려는 상품을 먼저 체크하세요");
				return false;
			}else if ($("input[type=checkbox]:checked").length<1){
				alert("이벤트를 선택하세요");
				return false;
			}
		
			frmList.action="<c:url value='/admin/member/memberBlack.do'/>";
			frmList.submit();
		});
		
		$("#btGrade").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			if (count==0) {
				alert("등급변경하려는 아이디를 선택하세요");
				return false;
			}else if ($("input[type=checkbox]:checked").length<1){
				alert("아이디를 선택하세요 선택하세요");
				return false;
			}
		
			frmList.action="<c:url value='/admin/member/memberGrade.do'/>";
			frmList.submit();
		});
		
		$("#download").click(function(){
			
			frmList.action="<c:url value='/admin/member/memberGrade.do'/>";
			frmList.submit();
		});
		
		$("#btEventd").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			if (count==0) {
				alert("불량회원등급으로 설정하려는 회원을 선택하세요");
				return false;
			}
			document.frmList.action="<c:url value='/admin/member/memberBlack.do'/>";
			document.frmList.submit();
		});
		
		//회원 삭제
		$("#btDel").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("삭제하려는 아이디를 먼저 체크하세요");
				return false;
			}
			
			frmList.action = "<c:url value='/admin/member/memberDelete.do'/>";
			frmList.submit();
		});
	});
	
	function btMember(val) {
		var memberId = $("#memberId").val();
		window.open("/kaka/admin/member/memberById.do?memberId="+memberId,
	               "member",
	         "width=700,height=600,left=10,top=50,resizable=yes,location=yes");
	}
</script>
</head>
<body>
	<div class="memList">
		<form name="frmList" method="post" action="<c:url value='/admin/member/memberList.do'/>">
			<p>회원목록</p>
			<div class="memTable">
				<table
					summary="회원에 관한 표로써, 아이디, 등급, 가입일, 주소지, 등에 대한 정보를 제공합니다.">
					<colgroup>
						<col style="width: 5%;" />
						<col style="width: 15%;" />
						<col style="width: 15%;" />
						<col style="width: 15%;" />
						<col style="width: 20%;" />
						<col style="width: 5%;" />
						<col style="width: 5%;" />
						<col style="width: *%;" />
					</colgroup>
					<thead>
						<tr class="check">
							<th colspan="9">
								<!-- <input class="align_left" type="button" id="btEvent" value="블랙리스트관리"> -->
								<button class="align_left" type="button" id="btEventd" value="BLACKLIST">불량회원관리</button>
								<button class="align_left" id="btDel">삭제</button>
								<button class="align_right"><a href="<c:url value='/admin/member/downloadExcel.do'/>">엑셀 다운로드</a></button>
							</th>
						</tr>
						<tr class="listTitle">
							<th><input type="checkbox" name="chkAll" id="chkAll"></th>
							<th>이름</th>
							<th>아이디</th>
							<th>등급</th>
							<th>휴대전화</th>
							<th>성별</th>
							<th>나이</th>
							<th>지역</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty memberList}">
							<td class="align_center" colspan="9">등록된 회원이 없습니다.</td>
						</c:if>
						<c:if test="${!empty memberList}">
							<c:set var="i" value="0"/>
							<c:forEach var="vo" items="${memberList}">
								<c:if test="${vo.memberGrade!='ADMIN'}">
								<c:if test="${empty vo.memberOutdate }">
									<tr class="align_center">
										<th>
											<input type="checkbox" name="memberItems[${i}].memberId" value="${vo.memberId}" id="chk_${i}">
										</th>
										<td>${vo.memberName }</td>
										<td>
											<a href="#" onclick="btMember(this)">${vo.memberId }</a>
											<input type="hidden" name="memberId" id="memberId" value="${vo.memberId }">
										</td>
										<c:if test="${vo.memberGrade=='MEMBER_VIP'}">
											<td>골드회원</td>
										</c:if>
										<c:if test="${vo.memberGrade=='MEMBER'}">
											<td>일반회원</td>
										</c:if>
										<c:if test="${vo.memberGrade=='BLACKLIST'}">
											<td>불량회원</td>
										</c:if>
										<td>${vo.memberHp }</td>
										<c:if test="${vo.memberGender=='M'}">
											<td>남</td>
										</c:if>
										<c:if test="${vo.memberGender=='F'}">
											<td>여</td>
										</c:if>
										<td>음</td>
										<td>나이</td>
									</tr>
								</c:if>						
								</c:if>
								<c:set var="i" value="${i+1}"/> 
							</c:forEach>
						</c:if>
						<tr class="check">
							<th colspan="9">
								<!-- <input class="align_left" type="button" id="btEvent" value="블랙리스트관리"> -->
								<button class="align_left" type="button" id="btEventd" name="memberGrade" value="BLACKLIST" onclick="btEventd">블랙리스트관리</button>
								<button class="align_left" id="btDel">삭제</button>
								<button class="align_right"><a href="<c:url value='/admin/member/downloadExcel.do'/>">엑셀 다운로드</a></button>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="divRight">
				선택한 회원을
				<select name="eventSel" id="eventSel">
					<option value=""></option>
					<option value="MEMBER">일반회원</option>
					<option value="MEMBER_VIP">골드회원</option>
					<option value="BLACKLIST">불량회원</option>
				</select>
				으로
				<input type="button" id="btGrade" value="등급변경">
				합니다.
			</div>
		</form>
	</div>	
</body>
</html>