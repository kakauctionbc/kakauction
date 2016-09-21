<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr")
			.hover(function(){
				$(this).css("background","skyblue")
					.css("cursor","pointer");
			}, function(){
				$(this).css("background","");
			});

		$(document).ready(function(){
		    $(".flip").click(function(){
		    	var index = $(this).children().val();
		    	alert($(this).children().val());
		    	alert("#panel_"+index);
		    	$("#panel_"+index).slideToggle();
		    });
		});
	});

	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
</script>
<style type="text/css">
	table{
		margin: 0 auto;
		padding: 0;
	}
	th, td{
		border: 1px solid silver;
	}
	.qnaList{
		margin: 0 auto;
	}
	.divPage, .divSearch{
		margin: 0 auto;
	}
	h2{
		font-size: 25px;
		font-weight: bold;
	}
	.flip{
		background-color: #e5eecc;
	}
	.hideT{
		padding: 5px;
		text-align: center;
		border: solid 1px #c3c3c3;
	}
	.hideT{
		display: none;
	}
	 
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>Q&A
			</p>
		</div>
		<div id="pagelogo">
			<img
				src="${pageContext.request.contextPath }/img/QNA_logo.png"
				alt="회원가입로고">
		</div>
		<!-- http://localhost:9090/mymvc/reBoard
		/list.do?currentPage=5&searchCondition=content&searchKeyword=%ED%95%98 -->
		<form name="frmPage" method="post" action="<c:url value='/qna/list.do'/>">
			<input type="hidden" name="currentPage">
			<input type="hidden" name="searchCondition" value="${param.searchCondition }">
			<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">	
		</form>
		
		<div class="qnaList">
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

			<table class="box2" summary="QnA에 관한 표로써, 번호, 제목, 작성자, 작성일, 답변여부에 대한 정보를 제공합니다.">
				<caption>QnA</caption>
					<colgroup>
						<col style="width: 10%;" />
						<col style="width: 10%;" />
						<col style="width: 50%;" />
						<col style="width: 20%;" />
						<col style="width: 10%;" />
					</colgroup>
				<thead>
				  <tr>
				    <th scope="col">번호</th>
				    <th scope="col">작성자</th>
				    <th scope="col">제목</th>
				    <th scope="col">작성일</th>
				    <th scope="col">답변여부</th>
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
				<tr>
					<!--게시판 내용 반복문 시작  -->
				<input type="hidden" class="on_off" value="off">
				<c:forEach var="vo" items="${alist}" varStatus="vs">
						<table>
							<tr>
								<td>${vo.questionNo}</td>
								<td>${vo.memberId}</td>
								<td style="text-align: left;">
									<div class="flip">
										${vo.questionTitle}<input type="hidden" class="flip" value="${vs.index}" >
									</div>
								</td>
								<td>
									<p><fmt:formatDate value="${vo.questionRegdate}" pattern="yyyy-MM-dd"/></p>
								</td>
								<td>
									<c:if test="${vo.questionReturn=='N'}">
										<td>X</td>
									</c:if>
									<c:if test="${vo.questionReturn=='Y'}">
										<td>O</td>
									</c:if>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									<div id="panel_${vs.index}" class="hideT">${vo.questionContent}</div>
									<div class="flip">답변보기</div>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									<div id="panel_${vs.index}" class="hideT">${vo.ansContent}</div>
									<div>답변 시간 : ${vo.ansTime}</div>
								</td>
							</tr>
						</table>
					</tr>
						
<%-- 								<c:if test="${vo.questionReturn=='Y'}">

								</c:if>
 --%>					
				</c:forEach>
				<!--반복처리 끝  -->
			</c:if>
			</tbody>
			</table>
			</div>
				<a href="<c:url value='/qna/write.do'/>">QNA글쓰기</a> 
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
		   	action="<c:url value='/qna/list.do' />" >
		        <select name="searchCondition">
		            <option value="question_title"
		           	   <c:if test="${param.searchCondition=='question_title'}">
		            		selected
		               </c:if>
		            >제목</option>
		            <option value="question_content" 
		            	<c:if test="${param.searchCondition=='question_content'}">
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
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>


