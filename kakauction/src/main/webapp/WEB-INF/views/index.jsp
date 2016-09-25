<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="design/inc/top.jsp"%>
<script type="text/javascript">
$(function() {
      var icon = $('#iconone img');
      icon.hover(function() {
         icon.attr("src", icon.attr("src").replace(".png","Big.png"))
      }, function() {
         icon.attr("src", icon.attr("src").replace("Big.png",".png"))
      });
});
$(function() {
   var icon = $('#icontwo img');
   icon.hover(function() {
      icon.attr("src", icon.attr("src").replace(".png","Big.png"))
   }, function() {
      icon.attr("src", icon.attr("src").replace("Big.png",".png"))
   });
});
$(function() {
   var icon = $('#iconthree img');
   icon.hover(function() {
      icon.attr("src", icon.attr("src").replace(".png","Big.png"))
   }, function() {
      icon.attr("src", icon.attr("src").replace("Big.png",".png"))
   });
});
$(function() {
   var icon = $('#iconfour img');
   icon.hover(function() {
      icon.attr("src", icon.attr("src").replace(".png","Big.png"))
   }, function() {
      icon.attr("src", icon.attr("src").replace("Big.png",".png"))
   });
});
$(function() {
   var icon = $('#iconfive img');
   icon.hover(function() {
      icon.attr("src", icon.attr("src").replace(".png","Big.png"))
   }, function() {
      icon.attr("src", icon.attr("src").replace("Big.png",".png"))
   });
   
   $("#showBigMap").hover(function(){
      $(this).css("cursor","pointer");
   },function(){
      $(this).css("cursor","");
   });
   
   $("#showBigMap").click(function(){
      window.open("/kaka/map/defaultMap.do",
            "defaultMap",
      "width=820px,height=420,left=200,top=100,resizable=no,location=yes");
   });
});
</script>
<style type="text/css">
   img{
      vertical-align: middle;
   }
</style>
   <div id="mainicondiv">
      <ul>
         <li id="iconone">
            <a href="<c:url value='/car/register.do'/>">
            <img src="<c:url value='/img/enterCar.png'/>">
            </a>
         </li>
         <li id="icontwo">
            <a href="<c:url value='/auction/list.do'/>">
            <img src="<c:url value='/img/buyNow.png'/>">
            </a>
         </li>
         <li id="iconthree">
            <a href="<c:url value='/auction/todayList.do'/>">
            <img src="<c:url value='/img/todayAuction.png'/>">
            </a>
         </li>
         <li id="iconfour">
            <a href="<c:url value='/freeboard/list.do'/>">
            <img src="<c:url value='/img/freeboard.png'/>">
            </a>
         </li>
         <li id="iconfive">
            <a href="<c:url value='/notice/list.do'/>">
            <img src="<c:url value='/img/notice.png'/>">
            </a>
         </li>
      </ul>
   </div>
      <img src="<c:url value='/img/hot_icon.png'/>" id="hot_icon">
      <div id="realtime">
         <div id="realtimehead">
            <p id="text">◈ 현재 경매 현황</p>
            <p id="more">
               <a href="<c:url value='/auction/list.do'/>">MORE▶</a>
            </p>
         </div>
         <table id="realtimetable" style="border-collapse: collapse">
            <tr id="align_center">
               <th colspan="3"><%@ include file="design/main/today.jsp" %> 경매 현황</th>
            </tr>
            <tr id="align_center">
               <td>전체</td>
               <td>${map["TOTAL"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>경차</td>
               <td>${map["VERYSMALL"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>소형</td>
               <td>${map["SMALL"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>중형</td>
               <td>${map["HEAVY"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>준중</td>
               <td>${map["COMPACT"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>대형</td>
               <td>${map["FULLHEAVY"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>SUV</td>
               <td>${map["SUV"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>승합</td>
               <td>${map["VAN"] }</td>
               <td></td>
            </tr>
            <tr id="align_center">
               <td>기타</td>
               <td>${map["TOTAL"]-map["VERYSMALL"]-map["SMALL"]-map["HEAVY"]-map["COMPACT"]-map["FULLHEAVY"]-map["SUV"]-map["VAN"] }</td>
               <td></td>
            </tr>
         </table>
         <c:forEach var="bs" items="${bestalist}">
            <div class="realtimeslide">
               <div class="realtimeslide_hot">
                  <a href="<c:url value='/auction/updateCount.do?auctionNo=${bs.auctionNo}'/>">
                        <div class="mySlides fade">
                           <img src="${pageContext.request.contextPath }/picture_upload/${bs.picture1}" style="width: 220px; height: 217px">
                        </div>
                        <div class="mySlides fade">
                           <img src="${pageContext.request.contextPath }/picture_upload/${bs.picture2}" style="width: 220px; height: 217px">
                        </div>
                        <div class="mySlides fade">
                           <img src="${pageContext.request.contextPath }//picture_upload/${bs.picture3}" style="width: 220px; height: 217px">
                        </div>
                  </a>
               </div>
            </div>
         </c:forEach>
      </div>
      <div id="mainwrap">
         <div id="quickservice">
            <div id="quickservicehead">
               <p id="text">◎회사 위치</p>
            </div>
            <div>
               <p><img alt="오시는 길" src="${pageContext.request.contextPath }/img/company.png" style="width: 350px"></p>
               <p><a id="showBigMap"><img alt="지도 크게보기" src="${pageContext.request.contextPath }/img/showBigMap.png" style="width: 180px"></a></p>
            </div>
         </div>
         <div id="notice">
            <div id="noticehead">
               <p id="text">◎ 공지사항</p>
               <p id="more">
                  <a href="<c:url value='/notice/list.do'/>">MORE▶</a>
               </p>
            </div>
            <div>
               <c:import url="/notice/main_notice_list.do"></c:import>
            </div>
         </div>
         <div id="schedule">
            <div id="schedulehead">
               <p id="text">◎ 일정안내</p>
               <p id="more">
                  <a href="<c:url value='/auction/front_schedule_list.do'/>">MORE▶</a>
               </p>
            </div>
            <div>
               <c:import url="/auction/main_schedule_list.do"></c:import>
            </div>
         </div>
      </div>
   </div>
<script>
   var slideIndex = 0;
   showSlides();

   function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
       if(slides.length==9){
         for (i = 0; i < (slides.length/3); i++) {
            slides[i].style.display = "none";
            slides[i+3].style.display = "none";
            slides[i+6].style.display = "none";
         }
         slides[slideIndex].style.display = "block";
         slides[slideIndex +3].style.display = "block";
         slides[slideIndex +6].style.display = "block";
         slideIndex++;
         if (slideIndex == slides.length/3) {
            slideIndex = 0;
         }
         setTimeout(showSlides, 1000);
		}else if(slides.length==6){
        for (i = 0; i < (slides.length/2); i++) {
            slides[i].style.display = "none";
            slides[i+2].style.display = "none";
         }
         slides[slideIndex].style.display = "block";
         slides[slideIndex +2].style.display = "block";
         slideIndex++;
         if (slideIndex == slides.length/2) {
            slideIndex = 0;
         }
         setTimeout(showSlides, 1000);
       }else if(slides.length==3){
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
         }
         slides[slideIndex].style.display = "block";
         slideIndex++;
         if (slideIndex == slides.length) {
            slideIndex = 0;
         }
         setTimeout(showSlides, 1000);
       }
   }
</script>
<%@ include file="design/inc/bottom.jsp"%>