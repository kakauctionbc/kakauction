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
	});
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
						<col style="width: 3%;" />
						<col style="width: 10%;" />
						<col style="width: 10%;" />
						<col style="width: 10%;" />
						<col style="width: 20%;" />
						<col style="width: 5%;" />
						<col style="width: 5%;" />
						<col style="width: 5%;" />
						<col style="width: *" />
					</colgroup>
					<thead>
						<tr class="check">
							<th colspan="9">
								<input class="align_left" type="button" id="btEvent" value="블랙리스트관리">
								<button class="align_left">삭제</button>
								<button class="align_right"><a href="<c:url value='/excel/downloadExcel.do'/>">엑셀 다운로드</a></button>
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
							<th>관련내역보기</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty memberList}">
							<td class="align_center" colspan="9">등록된 회원이 없습니다.</td>
						</c:if>
						<c:if test="${!empty memberList}">
							<c:set var="i" value="0"/>
							<c:forEach var="vo" items="${memberList}">
								<c:if test="${vo.memberGrade=='MEMBER_VIP' || vo.memberGrade=='MEMBER' }">
									<tr class="align_center">
										<th><input type="checkbox" value="${vo.memberId }" id="chk_${i}"></th>
										<td>${vo.memberName }</td>
										<td><a href="<c:url value='/admin/member/memberById.do?memberId=${vo.memberId}'/>">${vo.memberId }</a></td>
										<c:if test="${vo.memberGrade=='MEMBER_VIP'}">
											<td>VIP</td>
										</c:if>
										<c:if test="${vo.memberGrade=='MEMBER'}">
											<td>일반회원</td>
										</c:if>
										<c:if test="${vo.memberGrade=='BLACK'}">
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
										<td><button value="경매"><a href="#">경매</a></button>
											<button value="공매"><a href="#">공매</a></button>
											<button value="적립금"><a href="#">적립금</a></button></td>
									</tr>						
								</c:if>
							</c:forEach>
						</c:if>
						<tr class="check">
							<th colspan="9">
								<input class="align_left" type="button" id="btEvent" value="블랙리스트관리">
								<button class="align_left">삭제</button>
								<button class="align_right"><a href="<c:url value='/excel/downloadExcel.do'/>">엑셀 다운로드</a></button>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>	
</body>
</html>