<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>

<script type="text/javascript">
	$(document).ready(function(){
		$("input[name=chkAll]").click(function(){
			$("tbody input[type=checkbox]").prop("checked", this.checked);
		});
		
		//등급변경
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
		
		//엑셀 다운로드
		$("#download").click(function(){
			
			frmList.action="<c:url value='/admin/member/memberGrade.do'/>";
			frmList.submit();
		});
		
		//불량회원관리
		$(".btBlack").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			if (count==0) {
				alert("불량회원등급으로 설정하려는 회원을 선택하세요");
				return false;
			}
			document.frmList.action="<c:url value='/admin/member/memberBlack.do'/>";
			document.frmList.submit();
		});
		
		//회원 삭제
		$(".btDel").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("삭제하려는 아이디를 먼저 체크하세요");
				return false;
			}
			
			frmList.action = "<c:url value='/admin/member/memberDelete.do'/>";
			frmList.submit();
		});
	});
	
	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
</script>
<style type="text/css">
	.btdel {
		float:right;
	}
	.btBlack{
		float:right;
		margin-right: 20px;
	}
	.excel{
		float: left;
	}
	.memTable{
		margin-top: 10px;
	}
	.memberSearch{
		margin-bottom: 20px;
		margin-top: 20px;
	}
	.memberSearch th{
		background: #ebebeb;
		height: 30px;
		border: 1px solid silver;
	}
	.memberSearch td{
		height:30px;
		padding-left: 18px;
		padding-right: 5px;
		border: 1px solid silver;
	}
	.memberSearch td select{
		font-size: 1.2em;
		width: 150px;
	}
	#memberSearchKeyword{
		width: 200px;
	}
	.memberList{
		border: none;
		width: 1000px;
	}
	.memberList th{
		height: 30px;
	}
	.memberList td{
		border-bottom: 1px solid silver;
		border-top: 1px solid silver;
		text-align: center;
	}
	.memberList_btn{
		border-bottom: 1px solid silver;
		padding-bottom: 10px;
	}
	.memberList_btn1{
		border-top: 1px solid silver;
		padding-top: 10px;
	}
	.chkAll{
		border-bottom: 1px solid silver;
	}
	.chk_index{
		border-bottom: 1px solid silver;
	}
	.listTitle th{
		background: #ebebeb;
	}
	.changeGrade{
		width: 1000px;
		margin-top: 10px;
	}
	.changeGrade th{
		border-bottom: 1px solid silver;
		border-top: 1px solid silver;
		border-right: 1px solid silver;
		height: 35px;
		background: #ebebeb;
	}
	.changeGrade td{
		border-bottom: 1px solid silver;
		border-top: 1px solid silver;
		padding-left: 20px;
	}
	.changeGrade td select{
		font-size: 1.2em;
		width: 100px;
	}
	
</style>
</head>
<body>
	<form name="frmPage" method="post" action="<c:url value='/admin/member/memberSearchList.do'/>">
		<input type="hidden" name="currentPage">
		<input type="hidden" name="searchCondition" value="${param.searchCondition }">
		<input type="hidden" name="searchKeyword" value="${param.searchKeyword }">	
		<input type="hidden" name="memberGrade" value="${param.memberGrade }">
		<input type="hidden" name="memberGender" value="${param.memberGender }">
	</form>

	<div id="wrap">
		<div id="wrapdiv">
			<div id="wraptop">
				<p>
					<a href="${pageContext.request.contextPath }/admin/index.do">HOME</a>>회원관리>회원조회관리
				</p>
			</div>
			<div id="pagelogo">
				<img src="${pageContext.request.contextPath }/img/memberAdminister_logo.png" alt="회원가입로고">
			</div>
			<div class="divSearch">
			   	<form name="frmSearch" method="post" action="<c:url value='/admin/member/memberSearchList.do' />" >
			       <table class="memberSearch">
			       		<colgroup>
			       			<col style="width: 20%;"/>
			       			<col style="width: 45%;"/>
			       			<col style="width: 15%;"/>
			       			<col style="width: 50%;"/>
			       		</colgroup>
						<tr>
							<th>개인정보</th>
							<td colspan="3">
								<select name="searchCondition" class="searchCondition">
									<option value="">-- 선택 --</option>
									<option value="member_name"
										<c:if test="${param.searchCondition=='member_name'}">
						            		selected
						              	</c:if>
									>이름</option>
									<option value="member_id"
										<c:if test="${param.searchCondition=='member_id'}">
						            		selected
						              	</c:if>
									>아이디</option>
									<option value="member_hp"
										<c:if test="${param.searchCondition=='member_hp'}">
						            		selected
						              	</c:if>
									>휴대폰번호</option>
									<option value="member_email"
										<c:if test="${param.searchCondition=='member_email'}">
						            		selected
						              	 </c:if>
									>이메일</option>
								</select>
								<input type="text" id="memberSearchKeyword" name="searchKeyword" 
									title="검색어 입력" value="${param.searchKeyword}">
							</td>
						</tr>
						<tr>
							<th>회원등급</th>
							<td>
								<select name=memberGrade>
									<option value="">-- 선택 --</option>
									<option value="MEMBER"
										<c:if test="${param.memberGrade=='MEMBER'}">
						            		selected
						              	</c:if>
									>일반회원</option>
									<option value="MEMBER_VIP"
										<c:if test="${param.memberGrade=='MEMBER_VIP'}">
						            		selected
						              	</c:if>
									>골드회원</option>
									<option value="MEMBER_VVIP"
										<c:if test="${param.memberGrade=='MEMBER_VVIP'}">
						            		selected
						              	</c:if>
									>특별관리회원</option>
									<option value="BLACKLIST"
										<c:if test="${param.memberGrade=='BLACKLIST'}">
						            		selected
						              	</c:if>
									>불량회원</option>
									<option value="STOP"
										<c:if test="${param.memberGrade=='STOP'}">
						            		selected
						              	</c:if>
									>활동정지회원</option>
									<option value="WARNING"
										<c:if test="${param.memberGrade=='WARNING'}">
						            		selected
						              	</c:if>
									>경고회원</option>
								</select>
							</td>
							<th>성별</th>
							<td>
								<input type="radio" name="memberGender" id="memberGenderA" value="" checked="checked">
								<label for="memberGenderA">전체</label> 
								<input type="radio" name="memberGender" id="memberGenderM" value="M"
									<c:if test="${param.memberGender=='M'}">
						            		checked
						             </c:if>
								>
								<label for="memberGenderM">남자</label> 
								<input type="radio" name="memberGender" id="memberGenderF" value="F"
									<c:if test="${param.memberGender=='F'}">
						            		checked
						             </c:if>
								>
								<label for="memberGenderF">여자</label>
							</td>
						</tr>
					</table>
					<input type="submit" value="검색">
					<input type="reset" value="취소">
				</form>
			</div>
			<form name="frmList" method="post" action="<c:url value='/admin/member/memberSearchList.do' />" >
			<div class="memTable">
				<p style="font-size: 1.3em; font-weight: bold;">- 회원 목록<p><br>
				<c:if test="${!empty param.searchKeyword }">
				<!-- 검색의 경우 -->
				<p>검색어 : ${pagingInfo.totalRecord }, 
					${searchsearch}건 검색되었습니다.</p><br>
			</c:if>
			<c:if test="${empty searchVO.searchKeyword }">
				<!-- 전체 조회의 경우 -->
				<p>전체 조회 결과 
					- ${pagingInfo.totalRecord }건 조회되었습니다</p><br>
			</c:if>
				<table
					summary="회원에 관한 표로써, 아이디, 등급, 가입일, 주소지, 등에 대한 정보를 제공합니다." class="memberList">
					<colgroup>
						<col style="width: 7%;" />
						<col style="width: 15%;" />
						<col style="width: 15%;" />
						<col style="width: 16%;" />
						<col style="width: 25%;" />
						<col style="width: 7%;" />
						<col style="width: 7%;" />
						<col style="width: *%;" />
					</colgroup>
					<thead>
						<tr class="check">
							<th colspan="9" class="memberList_btn">
								<!-- <input class="align_left" type="button" id="btEvent" value="블랙리스트관리"> -->
								<button class="btDel">삭제</button>
								<button type="button" class="btBlack" value="BLACKLIST">불량회원관리</button>
								<button class="excel"><a href="<c:url value='/admin/member/downloadExcel.do'/>">엑셀 다운로드</a></button>
							</th>
						</tr>
						<tr class="listTitle">
							<th class="chkAll"><input type="checkbox" name="chkAll" id="chkAll"></th>
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
						<c:if test="${empty memList}">
							<td class="align_center" colspan="9">등록된 회원이 없습니다.</td>
						</c:if>
						<c:if test="${!empty memList}">
							<c:set var="i" value="0"/>
							<c:forEach var="vo" items="${memList}" varStatus="status">
										<tr class="align_center">
											<th class="chk_index">
												<input type="checkbox" name="memberItems[${i}].memberId" value="${vo.memberId}" id="chk_${i}">
											</th>
											<td>${vo.memberName }</td>
											<td>
												<input type="hidden" name="memberId${status.index}" class="voValue" value="${vo.memberId }">
												<a href="#" onclick="window.open('<c:url value="/admin/member/memberById.do?memberId=${vo.memberId}"/>','member','width=700,height=600,left=10,top=50,resizable=yes,location=yes')" >${vo.memberId}</a>
												<%-- <a href="#" onclick="return btMember(memberId${status.index})" >${vo.memberId}</a> --%>
												<%-- <a href="<c:url value='/admin/member/memberById?memberId=${vo.memberId }'/>">${vo.memberId }</a> --%>
											</td>
											<c:if test="${vo.memberGrade=='MEMBER_VIP'}">
												<td>골드회원</td>
											</c:if>
											<c:if test="${vo.memberGrade=='MEMBER_VVIP'}">
												<td>특별관리회원</td>
											</c:if>
											<c:if test="${vo.memberGrade=='MEMBER'}">
												<td>일반회원</td>
											</c:if>
											<c:if test="${vo.memberGrade=='STOP'}">
												<td>활동정지회원</td>
											</c:if>
					 						<c:if test="${vo.memberGrade=='BLACKLIST'}">
												<td>불량회원</td>
											</c:if>
											<c:if test="${vo.memberGrade=='WARNING'}">
												<td>경고회원</td>
											</c:if>
											<td>${vo.memberHp }</td>
											<c:if test="${vo.memberGender=='M'}">
												<td>남</td>
											</c:if>
											<c:if test="${vo.memberGender=='F'}">
												<td>여</td>
											</c:if>
											<td>
												<c:set var="string1" value="${vo.memberJumin }" />
												<c:set var="string2" value="${fn:substring(string1,0,2) }"/>
												<c:set var="string3" value="${fn:substring(string1,7,8) }"/>
												<c:if test="${string3=='1'||string3=='2' }">
													<c:set var="age" value="19${string2 }"/>
													<c:set var="date" value="2016"/>
													${date-age+1}
												</c:if>
												<c:if test="${string3=='3'||string3=='4' }">
													<c:set var="age" value="20${string2 }"/>
													<c:set var="date" value="2016"/>
													${date-age+1}
												</c:if>
											</td>
											<td>
												<c:set var="string1" value="${vo.memberAddr }"/>
												<c:set var="string2" value="${fn:split(string1, ' ')}" />
												${string2[0]}
											</td>
										</tr>
								<c:set var="i" value="${i+1}"/> 
							</c:forEach>
						</c:if>
						<tr class="check">
							<th colspan="9" class="memberList_btn1">
								<!-- <input class="align_left" type="button" id="btEvent" value="블랙리스트관리"> -->
								<button class="btDel">삭제</button>
								<button type="button" class="btBlack" value="BLACKLIST">불량회원관리</button>
								<button class="excel"><a href="<c:url value='/admin/member/downloadExcel.do'/>">엑셀 다운로드</a></button>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 페이징 처리하기~ -->
			<div class="pagediv">
				<ul class="page">
					<!-- 이전 블럭으로 이동 -->
					<li class="firstPage" style="margin-left: 450px;"><c:if test="${pagingInfo.firstPage>1 }">
						<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">&laquo;</a>
					</c:if></li>
					<!-- 페이지 번호 추가 -->
					<!-- [1][2][3][4][5][6][7][8][9][10] -->
					<li><c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<span> ${i }</span>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
							<a href="#" onclick="pageProc(${i})"> ${i}</a>
						</c:if>
					</c:forEach></li>
					<!--  페이지 번호 끝 -->
		
					<!-- 다음 블럭으로 이동 -->
					<li><c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<a href="#" onclick="pageProc(${pagingInfo.lastPage+1})">&raquo;</a>
					</c:if></li>
				</ul>
			</div>

			
			<h2>※ 등급변경</h2>
			<table class="changeGrade">
				<tr>
					<th>회원등급 변경</th>
					<td>
						선택한 회원을
						<select name="eventSel" id="eventSel">
							<option value="MEMBER">일반회원</option>
							<option value="MEMBER_VIP">골드회원</option>
							<option value="MEMBER_VVIP">특별관리회원</option>
							<option value="STOP">활동정지회원</option>
							<option value="BLACKLIST">불량회원</option>
							<option value="WARNING">경고회원</option>
						</select>
						으로
						<input type="button" id="btGrade" value="등급변경">
						합니다.
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>	
<%@ include file="../../design/inc/adminBottom.jsp"%>