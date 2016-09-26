<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		$("input[name=chkAll]").click(function(){
			$("input[type=checkbox]").prop("checked", this.checked);
		});
		
		$(".divList .box2 tbody tr").hover(function(){
				$(this).css("background","skyblue")
					.css("cursor","pointer");
			}, function(){
				$(this).css("background","");
			});
		
 		$(".accordion").click(function() {
			$( this ).toggleClass( "active" );
			$( this ).next().toggleClass( "show" );
		});
		
		$(".fixedOpen").click(function() {
			$(this).css("display", "none");
		});
		$(".closebtn").click(function() {
			$(".fixedOpen").fadeIn(900);
			/* $(".fixedOpen").css("display","block"); */
		});
		
		$(".listSearch").click(function(){
			$("#openNav").val(1);
			document.desearchfrm.submit();
		});
		
		$(":radio").click(function(){
			 $("#openNav").val(1);
			 document.desearchfrm.submit();
		});
		 
		$("#btSearch").click(function(){
			document.desearchfrm.submit();
		});
		
		if($("#openNav").val()==1){
			$(".fixedOpen").css("display","none");
			openNav();
			$( ".accordion" ).toggleClass( "active" );
			$(".mySidenav").css("display","block");
			$( ".accordion" ).next().toggleClass( "show" );
			$(".show").css("display","block");
		}
		
		$("#alreadyFinished").click(function(){
			alert("이미 종료된 경매입니다.");
		});
	});

	
	function openNav() {
		document.getElementById("mySidenav").style.width = "36%";
		document.getElementById("slideWrap").style.marginLeft = "320px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("slideWrap").style.marginLeft = "0";
	}
	
	$( document ).ready( function() {
		  var Offset = $( '.offset' ).offset();
		  $( window ).scroll( function() {
		    if ( $( document ).scrollTop() > Offset.top ) {
		      $( '.sidenav' ).addClass( 'searchFixed' );
		    }
		    else {
		      $( '.sidenav' ).removeClass( 'searchFixed' );
		    }
		});
	});
	
	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}

</script>

<style type="text/css">
.specialList{
	width: 100%;
	height: 100px;
	margin-top: 20px;
}
.specialList ul li{
	float: left;
	margin-left: 10px;
}
.specialList ul li a{
	text-decoration: none;
}
.first{
	margin-left: 10px;
}
.imgbox img{
	width: 180px;
}
.txt{
	text-decoration: none;
}
.box2 tbody tr td a:hover{
	text-decoration: underline;
	color: blue;
}
.box2 tbody tr td{
	font-size: 0.8em;
}
</style>
 		<!--상세검색 -->
		<%@ include file="../detailSearch/detailSearch.jsp" %>
		<!--상세검색 -->
		<span onclick="openNav()" class="fixedOpen"><img src="<c:url value='/img/sangsae.png'/>"></span>
		<div id="slideWrap">
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<div class="offset"></div>
			<p>
					<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>경매리스트
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/auctionList_logo.png"
				alt="경매리스트로고">
		</div>
		
		<div class="specialList">
			<ul>
			<c:forEach var="bs" items="${bestalist}">
				<li class="first">
					<a href="<c:url value='/auction/updateCount.do?auctionNo=${bs.auctionNo}'/>">
						<div class="imgbox">
							<img height="100px;" width="150px;" src="${pageContext.request.contextPath }/picture_upload/${bs.picture1}"
									alt="자동차사진" />
						</div><span class="txt">${bs.carModel}</span></a>
				</li>
			</c:forEach>
			</ul>
		</div>
		<br><br><hr>
		<form name="frmPage" method="post" action="<c:url value='/auction/list.do'/>">
			<input type="hidden" name="currentPage"> 
			<input type="hidden" name="searchCondition" value="${param.searchCondition }"> 
			<input type="hidden" name="searchKeyword" value="${searchVO.searchKeyword }">
			<input type="hidden" name="carGas" value="${param.carGas }">
			<input type="hidden" name="carSize" value="${param.carSize }">
			<input type="hidden" name="auctionFirstprice" value="${param.auctionFirstprice }">
			<input type="hidden" name="auctionFirstprice2" value="${param.auctionFirstprice2 }">
		</form>

		<div class="divList">
			<c:if test="${!empty param.searchKeyword }">
				<p>검색어 : ${param.searchKeyword }, ${pagingInfo.totalRecord }건
					검색되었습니다.</p>
			</c:if>
			<c:if test="${empty searchVO.searchKeyword }">
				<p>전체 조회 결과 - ${pagingInfo.totalRecord }건 조회되었습니다</p>
			</c:if>
			<table class="box2"
				summary="자료실에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
				<caption>자료실</caption>
				<colgroup>
					<col style="width: 4%;" />
					<col style="width: 14%;" />
					<col style="width: 19%;" />
					<col style="width: 8%;" />
					<col style="width: 7%;" />
					<col style="width: 7%;" />
					<col style="width: 6%;" />
					<col style="width: 9%;" />
					<col style="width: 9%;" />
					<col style="width: 5%;" />
				</colgroup>
				<thead>
					<tr class="listTitle">
						<th colspan="10">
							<div class="carListDiv">
								<ul>
									<form action="<c:url value='/auction/list.do'/>" method="post" name="listSearch">
										<li><a style="cursor: pointer;" class="on" onclick="">
											<input type="checkbox" name="chkAll" id="chkAll">전체</a></li>
										<c:forEach var="cslist" items="${carsizeList}" varStatus="vs">
											<li style="font-size: 0.7em; width: 47px;text-align: center;">
											<input type="checkbox" class="listSearch" name="carSizes" value="${cslist.carSize}"
											<c:forEach var="carSizes1" items="${searchVo.carSizes }">
												<c:if test="${carSizes1==cslist.carSize }"> checked </c:if>
											</c:forEach> style="display: none;">
											<input type="hidden" value="carSizes${vs.index }">
											<label for="carSizes${vs.index}"
											<c:forEach var="carSizes1" items="${searchVo.carSizes }">
												<c:if test="${carSizes1==cslist.carSize }"> style="font-size: 1.2em;color:pink" </c:if>
											</c:forEach>>
											${cslist.carSize}
											</label></li>
										</c:forEach>
										<li style="float: right; border-right:none;">조회수</li>
									</form>
								</ul>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty alist}">
						<tr>
							<td colspan="10" class="align_center">해당 데이터가 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${!empty alist}">
						<!--게시판 내용 반복문 시작  -->
						<c:forEach var="vo" items="${alist }">
							<tr style="text-align: center">
								<c:if test="${vo.auctionState=='END'}">
									<td colspan="9" style="height: 50px;font-weight: bold;font-size: 1.2em"><a href="#" id="alreadyFinished" style="color: gray;">이미 종료된 경매 입니다</a></td>
								</c:if>
								<c:if test="${vo.auctionState!='END'}">
								<td class="listCheckbox">
									<input type="checkbox" id="checklist_1497871" value="1497871" /></td>
								<td class="listImg">
									<img alt="사진" height="100px;" width="150px;" src="<c:url value='/picture_upload/${vo.picture1}'/>"></td>
								<td class="listName" style="text-align: left;">
									<a class="auctionTitle${countTd }" href="<c:url value='/auction/updateCount.do?auctionNo=${vo.auctionNo}'/>">
											${vo.carModel}<br>
									</a>
									</td>
								<td>${vo.carBirth}</td>
								<td>${vo.carDist}km</td>
								<td>${vo.carFailSell}</td>
								<td>${vo.auctionState}</td>
								<td>${vo.auctionRegdate}</td>
								<td>${vo.auctionFinish }</td>
								</c:if>
								<td class="readCount">${vo.auctionReadCount }</td>
							</tr>
						</c:forEach>
						<!--반복처리 끝  -->
					</c:if>
				</tbody>
			</table>
		</div>
		<div class="gototop">
			<a href="#" onclick="">맨위로&#9652;</a>
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
	</div>
</div>
</div>
<%@ include file="../design/inc/bottom.jsp"%>