<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		$("#delete").click(function(){
			if(!confirm("글을 삭제하시겠습니까?\n(제목 : ${noticeVo.noticeTitle})")){
				return false;
			}
		});
		
		$(".divList .box2 tbody tr")
			.hover(function(){
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
		
		$("#thisBoard").click(function(){
			alert("현재글 입니다");
		});
	});
	

	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.selectedCountPerPage.value=${selectedCountPerPage };
		document.frmPage.submit();
	}
</script>
<style type="text/css">
a{
	text-decoration: none;
	color:black;
}
a:hover{
	text-decoration: blink;
	color: #fae100;
}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>자유게시판>글 상세보기
			</p>
		</div>
<title>공지사항 상세보기</title>
	<c:if test="${noticeVo.nextNoticeNo!='0' }"> 
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.nextNoticeNo}'/>">다음글</a>
	</c:if>
	<c:if test="${noticeVo.prevNoticeNo!='0' }">
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.prevNoticeNo}'/>">이전글</a>
	</c:if>
	<div class="writeForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> 
			<span>${noticeVo.noticeTitle}</span>
		</div>
		<div>
			<span class="sp1">작성자</span>
			<span>관리자</span>
		</div>
		<div>
			<span class="sp1">등록일</span> 
			<span><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${noticeVo.noticeRegdate}"/></span>
		</div>
		<div>
			<span class="sp1">조회수</span> 
			<span>${noticeVo.noticeReadCount}</span>
		</div>
		<div>
			<span class="sp1">첨부파일</span> 
			<span>
			<a href	="<c:url value='/notice/download.do?noticeNo=${noticeVo.noticeNo}&noticeFilename=${noticeVo.noticeFilename}'/>">
				${fileInfo }
			</a>
			</span>
			<span style="color:blue">${downInfo }</span>
		</div>		
		<div class="lastDiv">			
			<p class="content">${noticeVo.noticeContent}</p>
		</div>
		<div class="center">
			<c:if test="${sessionScope.memberGrade=='ADMIN' }">
				<a href
				="<c:url value='/notice/edit.do?noticeNo=${noticeVo.noticeNo}'/>">
				수정</a> |
	        	<a id="delete" href	="<c:url value='/notice/delete.do?noticeNo=${noticeVo.noticeNo}&noticeGroupno=${noticeVo.noticeGroupno }&noticeFilename=${noticeVo.noticeFilename}'/>">
				삭제</a> |
			</c:if>
        	<a href="<c:url value='/notice/list.do'/>">목록</a>			
		</div>
	<%-- </div>
		<jsp:include page="/notireply/comment.do?noticeNo=${param.noticeNo }"></jsp:include>
	</div> --%>
		<c:if test="${noticeVo.nextNoticeNo!='0' }"> 
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.nextNoticeNo}'/>">다음글</a> |
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.nextNoticeNo}'/>">${noticeVo.nextNoticeTitle }</a>
	</c:if>
	<br>
	<c:if test="${noticeVo.prevNoticeNo!='0' }">
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.prevNoticeNo}'/>">이전글</a> | 
		<a href="<c:url value='/notice/updateCount.do?noticeNo=${noticeVo.prevNoticeNo}'/>">${noticeVo.prevNoticeTitle }</a>
	</c:if>
</div>

<div id="wrap">
	<div>
		<!-- http://localhost:9090/mymvc/reBoard
		/list.do?currentPage=5&searchCondition=content&searchKeyword=%ED%95%98 -->
		<form name="frmPage" id="frmPage" method="post" action="<c:url value='/notice/list.do'/>">
			<input type="hidden" id="currentPage" name="currentPage">
			<input type="hidden" name="searchCondition" value="${param.searchCondition }">
			<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">
			<input type="hidden" id="selectedCountPerPage" name="selectedCountPerPage">
		</form>
		<hr>
		<div class="divList">
		<select name="countPerPage" id="countPerPage" style="width:100px; font-size: 1.1em; margin-top: 10px;" title="페이지당 갯수">
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
		
		<table class="box2"
			 	summary="공지사항에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
			<caption>공지사항</caption>
			<colgroup>
				<col style="width:10%;" />
				<col style="width:50%;" />
				<col style="width:15%;" />
				<col style="width:15%;" />
				<col style="width:10%;" />		
			</colgroup>
			<thead>
			  <tr>
			    <th scope="col">번호</th>
			    <th scope="col">제목</th>
			    <th scope="col">작성자</th>
			    <th scope="col">작성일</th>
			    <th scope="col">조회수</th>
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
						<td>${vo.noticeNo}</td>
						<td style="text-align: left;">
							<!-- 삭제된 원본글일경우 제목 감추기 -->
							<c:if test="${vo.noticeDelflag=='Y' }">
								삭제된 글입니다.
							</c:if>
							<c:if test="${vo.noticeDelflag!='Y' }">
								<!-- 답변의 경우 화살표 이미지 보여주기 -->
								<c:if test="${vo.noticeStep>0 }">
									<c:forEach var="i" begin="1" end="${vo.noticeStep*2 }">
										&nbsp;
									</c:forEach>
									<img alt="화살표 이미지" src="<c:url value="/image/re.gif"/>">
								</c:if>
								<c:if test="${!empty vo.noticeFilename }">
									<img src='<c:url value="/image/file.gif"/>'>
								</c:if>
								<a style="font-weight: bold; font-size: 1.3em;"
									<c:if test="${noticeVo.noticeNo==vo.noticeNo }">
										id="thisBoard"
									</c:if>
									<c:if test="${noticeVo.noticeNo!=vo.noticeNo }">
										href="<c:url value='/notice/updateCount.do?noticeNo=${vo.noticeNo}'/>"
									</c:if>
									>
									<!-- 제목이 긴 경우 일부만 보여주기 -->
									<c:if test="${fn:length(vo.noticeTitle)>30}">
										${fn:substring(vo.noticeTitle, 0,30)}...
									</c:if>
									<c:if test="${fn:length(vo.noticeTitle)<=30}">
										${vo.noticeTitle}
									</c:if>
								</a>
								<!-- 24시간 이내의 글인 경우 new 이미지 보여주기 -->
								<c:if test="${vo.newImgTerm<24}">
									<img src="<c:url value='/image/new.gif'/>" alt="new이미지">
								</c:if>
							</c:if>
						</td>
						<td>관리자</td>
						<td><fmt:formatDate value="${vo.noticeRegdate}"
							pattern="yyyy-MM-dd"/>
						</td>
						<td>${vo.noticeReadCount}</td>
					</tr>				
				</c:forEach>
				<!--반복처리 끝  -->
			</c:if>
			</tbody>
		</table>	   
		</div>
		
		<div class="pagediv">
			<ul class="page">
				<!-- 이전 블럭으로 이동 -->
				<li class="firstPage"><c:if test="${pagingInfo.firstPage>1 }">
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
		<div class="divSearch">
		   	<form name="frmSearch" method="post" 
		   	action="<c:url value='/notice/list.do' />" >
		        <select name="searchCondition">
		            <option value="notice_title"
		           	   <c:if test="${param.searchCondition=='notice_title'}">
		            		selected
		               </c:if>
		            >제목</option>
		            <option value="notice_content" 
		            	<c:if test="${param.searchCondition=='notice_content'}">
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
		<c:if test="${sessionScope.memberGrade=='ADMIN' }">
			<div class="write_Btn">
			    <a href="<c:url value='../admin/notice/write.do'/>" >
				<img src='<c:url value="/img/write_icon.png"/>'></a>
			</div>
		</c:if>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>