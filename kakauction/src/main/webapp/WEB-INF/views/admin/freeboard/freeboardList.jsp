<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr").hover(function(){
				$(this).css("background","skyblue")
					.css("cursor","pointer");
			}, function(){
				$(this).css("background","");
			});
		
		$("#countPerPage").change(function(){
			$("#selectedCountPerPage").val($("#countPerPage").val());
			$("#currentPage").val(1);
			$("#frmPage").submit();
		});
		
		$("input[name=chkAll]").click(function(){
			$("tbody input[type=checkbox]").prop("checked", this.checked);
		});
		
		$(".btDel").click(function(){
			var count = $("input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("삭제하려는 글를 먼저 체크하세요");
				return false;
			}
			
			frmList.action = "<c:url value='/admin/freeboard/freeboardDeleteMuti.do'/>";
			frmList.submit();
		});
	});

	function pageProc(curPage){ 
		document.frmPage.currentPage.value=curPage;
		document.frmPage.selectedCountPerPage.value=${selectedCountPerPage };
		document.frmPage.submit();
	}

</script>
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }	
</style>
	
<!-- http://localhost:9090/mymvc/reBoard
/list.do?currentPage=5&searchCondition=content&searchKeyword=%ED%95%98 -->
<form name="frmPage" id="frmPage" method="post" action="<c:url value='/admin/freeboard/freeboardList.do'/>">
	<input type="hidden" id = "currentPage" name="currentPage" value="${searchVo.currentPage }">
	<input type="hidden" name="searchCondition" value="${param.searchCondition }">
	<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">	
	<input type="hidden" id="selectedCountPerPage" name="selectedCountPerPage">
</form>

<h2>자유게시판</h2>
<div class="divList">
<c:if test="${!empty param.searchKeyword }">
	<!-- 검색의 경우 -->
	<p>검색어 : ${param.searchKeyword }, 
		${pagingInfo.totalRecord }건 검색되었습니다.</p>
</c:if>
<c:if test="${empty searchVO.searchKeyword }">
	<!-- 전체 조회의 경우 -->
	<p>전체 조회 결과 
		- ${pagingInfo.totalRecord }건 조회되었습니다</p>
</c:if>
<select name="countPerPage" id="countPerPage" style="width:100px; font-size: 1.1em;" title="페이지당 갯수">
	<option value="20"
		<c:if test="${selectedCountPerPage=='20' }">
			selected
		</c:if>>20개씩 보기</option>
	<option value="30"
		<c:if test="${selectedCountPerPage=='30' }">
			selected
		</c:if>>30개씩 보기</option>
	<option value="50"
		<c:if test="${selectedCountPerPage=='50' }">
			selected
		</c:if>>50개씩 보기</option>
	<option value="100"
		<c:if test="${selectedCountPerPage=='100' }">
			selected
		</c:if>>100개씩 보기</option>
</select>
<div class="memList">
	<form name="frmList" method="post" action="<c:url value='/admin/member/memberList.do'/>">
		<div style="margin-left: 930px;"><button class="btDel">삭제</button></div>

		<table class="box2" summary="자유게시판에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
			<caption>자유게시판</caption>
			<colgroup>
				<col style="width:5%;" />
				<col style="width:5%;" />
				<col style="width:40%;" />
				<col style="width:15%;" />
				<col style="width:15%;" />
				<col style="width:10%;" />		
				<col style="width:10%;" />		
			</colgroup>
			<thead>
			  <tr>
			  	<th><input type="checkbox" name="chkAll" id="chkAll"></th>
			    <th scope="col">번호</th>
			    <th scope="col">제목</th>
			    <th scope="col">작성자</th>
			    <th scope="col">작성일</th>
			    <th scope="col">조회수</th>
			    <th scope="col">신고수</th>
			  </tr>
			</thead> 
			<tbody>  
			<c:if test="${empty alist}">
				<tr>
					<td colspan="5" class="align_center">
					해당 데이터가 없습니다
					</td>
				</tr>
			</c:if>
			<c:if test="${!empty alist}">
				<!--게시판 내용 반복문 시작  -->
				<c:forEach var="vo" items="${alist }">
					<tr style="text-align: center">
						<td><input type="checkbox" name="freeboardItems[${i}].freeboardNo" value="${vo.freeboardNo}" id="chk_${i}"></td>
						<td>${vo.freeboardNo}</td>
						<td style="text-align: left;">
							<!-- 삭제된 원본글일경우 제목 감추기 -->
							<c:if test="${vo.freeboardDelflag=='Y' }">
								<a href="<c:url value='/admin/freeboard/updateCount.do?freeboardNo=${vo.freeboardNo}'/>" style="color: gray;">
									<!-- 제목이 긴 경우 일부만 보여주기 -->
									<c:if test="${fn:length(vo.freeboardTitle)>30}">
										${fn:substring(vo.freeboardTitle, 0,30)}...
									</c:if>
									<c:if test="${fn:length(vo.freeboardTitle)<=30}">
										${vo.freeboardTitle}
									</c:if>
								</a>
							</c:if>
							<c:if test="${vo.freeboardDelflag!='Y' }">
								<!-- 답변의 경우 화살표 이미지 보여주기 -->
								<c:if test="${vo.freeboardStep>0 }">
									<c:forEach var="i" begin="1" end="${vo.freeboardStep*2 }">
										&nbsp;
									</c:forEach>
									<img alt="화살표 이미지" src="<c:url value="/image/re.gif"/>">
								</c:if>
								<c:if test="${!empty vo.freeboardFilename }">
									<img src='<c:url value="/image/file.gif"/>'>
								</c:if>
								<a href="<c:url value='/admin/freeboard/updateCount.do?freeboardNo=${vo.freeboardNo}'/>">
									<!-- 제목이 긴 경우 일부만 보여주기 -->
									<c:if test="${fn:length(vo.freeboardTitle)>30}">
										${fn:substring(vo.freeboardTitle, 0,30)}...
									</c:if>
									<c:if test="${fn:length(vo.freeboardTitle)<=30}">
										${vo.freeboardTitle}
									</c:if>
								</a>
								<!-- 24시간 이내의 글인 경우 new 이미지 보여주기 -->
								<c:if test="${vo.newImgTerm<24}">
									<img src="<c:url value='/image/new.gif'/>" alt="new이미지">
								</c:if>
							</c:if>
						</td>
						<td>${vo.memberId}</td>
						<td><fmt:formatDate value="${vo.freeboardRegdate}"
							pattern="yyyy-MM-dd"/>
						</td>
						<td>${vo.freeboardReadCount}</td>
						<td>${vo.freeboardreportCount}</td>
					</tr>				
				</c:forEach>
				<!--반복처리 끝  -->
			</c:if>
			</tbody>
		</table>
		<div style="margin-left: 930px;"><button class="btDel">삭제</button></div>
	</form>
</div>	   
</div>
<div class="divPage">
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">	
		<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/image/first.JPG'/>" 
					alt="이전블럭으로">
		</a>	
	</c:if>
	
	<!-- 페이지 번호 추가 -->						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage }" 
		end="${pagingInfo.lastPage }">	 
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight: bold">
				${i }</span>
		</c:if>		
		<c:if test="${i!=pagingInfo.currentPage }">
				<a href="#" onclick="pageProc(${i})">
				[${i}]</a>
		</c:if>
	</c:forEach>
	<!--  페이지 번호 끝 -->
	
	<!-- 다음 블럭으로 이동 -->
	<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
		<a href="#" 
		onclick="pageProc(${pagingInfo.lastPage+1})">
			<img src="<c:url value='/image/last.JPG'/>"
					alt="다음블럭으로">
		</a>
	</c:if>
</div>
<div class="divSearch">
   	<form name="frmSearch" method="post" 
   	action="<c:url value='/freeboard/list.do' />" >
        <select name="searchCondition">
            <option value="freeboard_title"
           	   <c:if test="${param.searchCondition=='freeboard_title'}">
            		selected
               </c:if>
            >제목</option>
            <option value="freeboard_content" 
            	<c:if test="${param.searchCondition=='freeboard_content'}">
            		selected
               </c:if>
            >내용</option>
            <option value="member_id" 
           		<c:if test="${param.searchCondition=='member_id'}">
            		selected
               </c:if>
            >작성자</option>
        </select>   
        <input type="text" name="searchKeyword" 
        	title="검색어 입력" value="${param.searchKeyword}" >   
		<input type="submit" value="검색">
    </form>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>