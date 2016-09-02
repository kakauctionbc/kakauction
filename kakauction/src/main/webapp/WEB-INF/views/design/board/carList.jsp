


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>중고차, 중고자동차, 중고차시세 ㅣ 보배드림 국산차</title>	
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="ALL">
<meta name="robots" content="index,follow">
<!--link rel="stylesheet" type="text/css" href="http://image.bobaedream.co.kr/css/default.css" /  -->

<link rel="stylesheet" type="text/css" href="http://image.bobaedream.co.kr/renew/css/common_0227.css" />
<link rel="stylesheet" type="text/css" href="http://image.bobaedream.co.kr/css/default_0227.css" />
<link rel="stylesheet" type="text/css" href="http://image.bobaedream.co.kr/renew/css/common.css" />

<link rel="SHORTCUT ICON" HREF="http://image.bobaedream.co.kr/bobae.ico">
<style>
	.back_c{display:block;color:#343434;margin-top:15px;margin-bottom:9px;padding-top:5px;padding-bottom:5px; color:#ffffff; background-color:#2b86df}
	.cont_column02 .column_l{margin-top: 10px;}
</style>
<script type="text/javascript" src="http://image.bobaedream.co.kr/renew/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://image.bobaedream.co.kr/renew/js/mycar_common.js"></script>
<!-- script type="text/javascript" src="http://image.bobaedream.co.kr/mycar/common/js/mycar_list_search.js"></script -->
<script type="text/javascript" src="/mycar/common/js/mycar_list_search_new.js?ver=2"></script>
<script language="javascript">  

// 테마
var search_cat       = "";
var search_cat_gubun = "";



//탭메뉴
$(document).ready(function() {
	
			



					if($('#addr_1').val() != '')		
					zipcode_new($('#addr_1').val(), 2, 7);
			

		// 최근검색 카운트
		getCselCnt();
});
	
	
window.onload = function() {
	search_disable('false');
	
		

	
}	
	
</script>
<script language="javascript">
  //레이어 
function layer_view(id_name) {
	if (document.getElementById(id_name).style.display == "") {
		document.getElementById(id_name).style.display = "block";
	} else {
		document.getElementById(id_name).style.display = "";
	}
}

</script>





<script type="text/javascript">
	$(function(){
		$(".mycarlist > tbody > tr").hover(function() {
			$(this).css({"background":"#efefef"});
		},
			function() {
				$(this).css({"background":"#ffffff"});
			});
	});
</script>
</head>

<body>
<div class="wrap">

<LINK REL="SHORTCUT ICON" HREF="http://image.bobaedream.co.kr/bobae.ico" />


    <!--<style type="text/css">
    
      .png24 {tmp:expression(setPng24(this));}
      .png241 {tmp:expression(setPng24(this));}
    
    </style>-->
<link rel="stylesheet" type="text/css" href="/css/common_ffcr.css" />


<script language="javascript">

$(document).ready(function() {	
var subMenus8 = $('#subMenu8 > li');
var subMenus9 = $('#subMenu9 > li');
subMenus9.eq(6).addClass('last');
subMenus9.eq(13).addClass('last');
})	




function itemView_top(t, type) {
	var item = $("."+t+" > div");

	var selectCnt = "";
	var x = 0;
	item.each(function(index, value){
		if($(this).css('display') != 'none'){
			selectCnt = x;
		}
		x++;
		$(this).hide();
	});

	switch (type)
	{
		case "+":	selectIndex = (selectCnt+1)>=x ?0:selectCnt+1;	break;
		case "-":	selectIndex = (selectCnt-1)< 0 ?x-1:selectCnt-1;	break;
	}

	$(".bnnr2 > div").eq(selectIndex).show();
}

// bookmark
function addFavorite(url,title) { 
   // Internet Explorer
   url = "http://www.bobaedream.co.kr/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20";
   if(document.all)
   {
       window.external.AddFavorite(url, title); 
   }
   // Google Chrome
   else if(window.chrome){
      alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
   }
   // Firefox
   else if (window.sidebar) // firefox 
   {
       window.sidebar.addPanel(title, url, ""); 
   }
   // Opera
   else if(window.opera && window.print)
   { // opera 
      var elem = document.createElement('a'); 
      elem.setAttribute('href',url); 
      elem.setAttribute('title',title); 
      elem.setAttribute('rel','sidebar'); 
      elem.click(); 
   }
} 




 

function layer_view(id_name) {
	if (document.getElementById(id_name).style.display == "") {
		document.getElementById(id_name).style.display = "block";
		document.getElementById('allview_img').className = "on";
	} else {
		document.getElementById(id_name).style.display = "";
		document.getElementById('allview_img').className = "";
	}
}

function setPng24(obj) {
	var request_os = window.navigator.userAgent;
	var os_array = request_os.split(";");

	if(os_array[1] != " MSIE 7.0") {
		obj.width=obj.height=1;
		obj.className=obj.className.replace(/png24/i,'');
		obj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');";
		obj.src='';
	}
	return "";
}

function go_mainpop() {
	window.open ('/recruit_2007/recruit2010.html', 'top_view' , 'status=no,toolbar=no,resizable=yes,scrollbars=yes,menubar=no,width=576,height=600');
}

function subMenuOver(obj) {
  
  for(i=1;i<=9;i++) {
    if (i == obj) {
      $("#subMenu" + i).show();
      $("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_on.jpg");
    } else {
      $("#subMenu" + i).hide();
      $("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_off.jpg");
    }
  }
	
}

function subMenuOut() {
  var menu_id = "3";

	switch(menu_id) {
		case "2":
			menu_id = "1";
			break;
		case "3":
			menu_id = "2";
			break;
		case "4":
			menu_id = "3";
			break;
		case "10":
			menu_id = "4";
			break;
		case "5":
			menu_id = "4"; //"5";
			break;
		case "8":
			menu_id = "6";
			break;
		case "9":
			menu_id = "7";
			break;
		case "11":
			menu_id = "8";
			break;
		case "12":
			menu_id = "9";
			break;
		default:
			menu_id = "";
			break;
	}


  for(i=1;i<=9;i++) {
     
	if (i == menu_id) {		
		  $("#subMenu" + i).hide();
  		$("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_on.jpg");	
	}else{
		  $("#subMenu" + i).hide();
  		$("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_off.jpg");							
	}
		
  }  
}


function subMenuOver2(obj) {
	var menu_id   = "3";
  
  for(i=1;i<=9;i++) {
  
  		$("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_off.jpg");
    
    	if (i == obj) {
        
        $("#subMenu" + i).show();
        $("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_on.jpg");

    	} else {
    		 $("#subMenu" + i).hide();
    	}
  }
}

function subMenuOut2(obj) {
  var menu_id = "3";
	
	switch(menu_id) {
		case "2":
			menu_id = "1";
			break;
		case "3":
			menu_id = "2";
			break;
		case "4":
			menu_id = "3";
			break;
		case "5":
			menu_id = "4";
			break;
		case "11":
			menu_id = "6";
			break;
		case "12":
			menu_id = "6";
			break;
		default:
			menu_id = "";
			break;
	}

  for(i=1;i<=9;i++) {

   	 if (i == menu_id) {
   	   	$("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_on.jpg");
       	$("#subMenu" + i).hide();
   	 } else {
   	 	
      $("#subMenu" + i).hide();
      $("#imgMenu" + i).attr("src", "http://image.bobaedream.co.kr/renew/images/common/navi0" + i + "_off.jpg");
		 }
  }
  	$("#subMenu" + menu_id).show();
  
}

var onCategory = "";

$(document).ready(function() {
		
		$(".subMenu > li > a > img").each(function() {
			if( $(this).attr('src').match("on.png")) {
				onCategory = $(this).attr('src');
			}
		});
		
		$('.subMenu > li > a > img').mouseover(function() {
			var of = $(this).attr('src');
			//$code
				$(this).attr('src',of.replace('off.png','on.png'));
		});
	
		$('.subMenu > li > a > img').mouseout(function() {
			var of = $(this).attr('src');
			if(of != onCategory)
				$(this).attr('src',of.replace('on.png','off.png'));
		});
});



		
</script>



<script type="text/javascript">
//  <![CDATA[
 
 

  var bannerNum = 0;
  function itemView_top(direction) {
    if(direction == "-") {
      if(bannerNum == 0) {
        bannerNum = 5;
      } else if(bannerNum > 0) {
        bannerNum--;
      }
    } else if (direction == "+") {
      if(bannerNum == 5) {
        bannerNum=0;
      } else if(bannerNum < 5) {
        bannerNum++
      }
    };

    for(i=0;i<6;i++){
      if(bannerNum==i) $("#top_r_"+i).show();
      else $("#top_r_"+i).hide();
    }
  }

$(function(){
	$(".allview").click(function () {
		$(".globalallview").toggleClass("globalallview_click");
		$(".top_navi").toggleClass("zindex"); 
	});
	$(".allview .close").click(function () {
		$(".globalallview").toggleClass("globalallview_click");
		$(".top_navi").toggleClass("zindex"); 
	});
	
	get_top_cnt(); //쪽지,찜차량개수
	
	$("#l_mapmenu").focusout(function(){
		$(".globalallview").toggleClass("globalallview_click");
		$(".top_navi").toggleClass("zindex");
	});
	$("#liMenu1").focusin(function(){
		subMenuOver('1');
	});
	$("#liMenu2").focusin(function(){
		subMenuOver('2');
	});
	$("#liMenu3").focusin(function(){
		subMenuOver('3');
	});
	$("#liMenu4").focusin(function(){
		subMenuOver('4');
	});
	$("#liMenu5").focusin(function(){
		subMenuOver('5');
	});
	$("#liMenu6").focusin(function(){
		subMenuOver('6');
	});
	$("#liMenu7").focusin(function(){
		subMenuOver('7');
	});
	$("#liMenu8").focusin(function(){
		subMenuOver('8');
	});
	$("#liMenu9").focusin(function(){
		subMenuOver('9');
	});
	$("#l_subMenu9").focusout(function(){
		subMenuOut();
	});
});







//쪽지send
function sendmemoOpen() {
  var screenWidth  = screen.availWidth;
  var screenHeight = screen.availHeight;

  var intLeft = (screenWidth - 626) / 2;
  var intTop  = (screenHeight - 670) / 2

  window.open('http://www.bobaedream.co.kr/board/note/receive_list.php', 'receive_list', 'scrollbars=no,resizable=no,top='+intTop+',left='+intLeft+',width=615,height=400');
}

// 쪽지, 찜
function get_top_cnt() {
  var dummy     = new Date().getTime();

  // , data: "dummy=" + dummy + "&no=" + no + "&dep=" + dep

  $.ajax({
    type: 'get'
    , async: true
    , url: '/script/note_get_cnt.php'
    , data: "dummy="     + dummy
    , dataType: 'json'
    , beforeSend: function() {
      //$('#ajax_load_indicator').show().fadeIn('fast');
    }
    , success: function(data) {
      var response = data;

      $("#note").html(response['note']);
      $("#zzim").html(response['zzim']);
			// view 우측
      if(typeof response['zzim'] !== 'undefined') 
      	$("#zzim2").html("(" + response['zzim'] + ")");
      
    }
    , error: function(data, status, err) {
      //alert('서버와의 통신이 실패했습니다.' + err);
    }
    , complete: function() {
      //$('#ajax_load_indicator').fadeOut();
    }
  });
}
  

	ctmp = document.cookie.split(";");
	
// ]]>
</script>

<script type='text/javascript'>
var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];
$(function() {
var gads = document.createElement('script');
gads.async = true;
gads.type = 'text/javascript';
var useSSL = 'https:' == document.location.protocol;
gads.src = (useSSL ? 'https:' : 'http:') +
'//www.googletagservices.com/tag/js/gpt.js';
var node = document.getElementsByTagName('script')[0];
node.parentNode.insertBefore(gads, node);
});
</script>


<div id="u_skip">
	<a href="#Content"><span>본문 바로가기</span></a>
	<a href="#LNB"><span>주 메뉴 바로가기</span></a>
</div>
	<div class="global">
		<div class="cont C1015">
			<div class="left"><a href="javascript:addFavorite(this, '국내 1위 자동차 쇼핑몰 - 보배드림');" title="즐겨찾기추가">즐겨찾기추가</a></div>
			<div class="right">
				<ul>
					<li class="allview"><a href="javascript:"><span class="allviewtext">전체메뉴</span> </a>
						<div class="globalallview G1015">
							<h2>전체메뉴<span>원하시는 페이지로 빠르게 이동하실 수 있습니다.</span><a href="javascript:" class="allview close"><img src="http://image.bobaedream.co.kr/renew/images/common/popup_close.gif" alt="닫기"></a></h2>
							<ul class="mainMenu">
								<li class="first">사이버매장
									<ul class="subMenu">
									<li><a href="/cyber/CyberCar.php?gubun=K">국산차매장</a></li>
									<li><a href="/cyber/CyberCar.php?gubun=I">수입차매장</a></li>
									<li><a href="/cyber/CyberCar.php?cat=1">승용차매장</a></li>
									<li><a href="/cyber/CyberCar.php?cat=2">스포츠카매장</a></li>
									<li><a href="/cyber/CyberCar.php?cat=4">RV/SUV매장</a></li>
									<li><a href="/cyber/CyberCar.php?cat=3">밴/승합차매장</a></li>
									<li><a href="/cyber/CyberCar.php?features=auto">오토갤러리매장</a></li>
									</ul>
								</li>
								<li>국산차
									<ul class="subMenu">
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=ALL">전체매물</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K">국산차</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I">수입차</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=ALL&amp;chk_point%5B%5D=10">튜닝카</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=C">사이버매장</a></li>
										<li><a href="http://www.bobaedream.co.kr/auction/auction_list.php">경매차량</a></li>
										<li><a href="http://www.bobaedream.co.kr/auction/public_list.php">공매차량</a></li>
									</ul>
								</li>
								<li>수입차
									<ul class="subMenu">
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=ALL">전체매물</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K">국산차</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I">수입차</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=ALL&amp;chk_point%5B%5D=10">튜닝카</a></li>
										<li><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=C">사이버매장</a></li>
										<li><a href="http://www.bobaedream.co.kr/auction/auction_list.php">경매차량</a></li>
										<li><a href="http://www.bobaedream.co.kr/auction/public_list.php">공매차량</a></li>
									</ul>
								</li>
								<li>오토바이
									<ul class="subMenu">
									<li><a href="http://bike.bobaedream.co.kr/">오토바이홈</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike2/bike_list.php?ifnew=Y">신차매장</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike2/bike_list.php?ifnew=N">중고차매장</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike_good/bike_good_list.php">용품장터</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike2/board/bike_community_main.php">커뮤니티</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike2/bike_apply.php">매물등록하기</a></li>
									<li><a href="http://bike.bobaedream.co.kr/bike2/mycar_list_main.php">나의매물관리</a></li>
									</ul>
								</li>
								<li>내차팔기
									<ul class="subMenu">
									<li><a href="/mycar/mycar.php">매물등록하기</a></li>
									<li><a href="/mycar/manage/mycar_manage_main.php?gubun=A&amp;tab=1">매물관리하기</a></li>
									<li><a href="/mycar/mycar.php">매물등록권구입</a></li>
									<li><a href="/mycar/mycar_photo_request.php?mType=C">사이버매장 등록</a></li>
									</ul>
								</li>
								<li>협력업체
									<ul class="subMenu">
										<li><a href="/partner/partner_main.php">협력업체홈</a></li>
										<li><a href="/partner/partner_search.php">협력업체찾기</a></li>
										<li><a href="/partner/partner_photo.php">업체작업사진</a></li>
										<li><a href="/partner/partner_movie.php">업체작업영상</a></li>
										<li><a href="/partner/partner_visit.php">방문후기</a></li>
										<li><a href="/partner/partner_event.php">이벤트소식</a></li>
										<li><a href="/partner/partner_qna.php">질문과답변</a></li>
										<li><a href="/partner/partner_request.php">협력업체문의</a></li>
									</ul>
								</li>
							</ul>
							<ul class="mainMenu">
								<li>중고장터
									<ul class="subMenu">
									<li><a href="http://good.bobaedream.co.kr/good/list_sale.php">전체보기</a></li>
									<li><a href="http://good.bobaedream.co.kr/good/list_sale.php?d1=&amp;d2=&amp;d3=&amp;keyfield=&amp;keyword=&amp;sc=&amp;tg=&amp;order=&amp;pagescale=&amp;area=&amp;price1=&amp;price2=&amp;userid=&amp;on=old">중고용품 검색</a></li>
									<li><a href="http://good.bobaedream.co.kr/good/list_sale.php?d1=&amp;d2=&amp;d3=&amp;keyfield=&amp;keyword=&amp;sc=&amp;tg=&amp;order=&amp;pagescale=&amp;area=&amp;price1=&amp;price2=&amp;userid=&amp;on=new">새제품 검색</a></li>
									<li><a href="http://good.bobaedream.co.kr/good/list_sale.php?viewMode=&amp;d1=150">수입차용품 검색</a></li>
									<li><a href="http://good.bobaedream.co.kr/good/home.php">용품등록하기</a></li>
									<li><a href="http://good.bobaedream.co.kr/good/list_mygood.php">나의 용품관리</a></li>
									</ul>
								</li>
								<li>게시판
									<ul class="subMenu">
									<li><a href="/list?code=best">베스트글</a></li>
									<li><a href="/list?code=freeb">자유게시판</a></li>
									<li><a href="/list?code=battle">시승기/배틀/목격담</a></li>
									<li><a href="/list?code=famous">유명인의 차</a></li>
									<li><a href="/list?code=politic">시사이슈</a></li>
									<li><a href="/list?code=nnews">자동차뉴스</a></li>
									<li><a href="/list?code=bbstory">보배드림 이야기</a></li>
									<li><a href="/list?code=ad">성인게시판</a></li>
									<li><a href="/event/event_list.php?event_gubun=1">이벤트</a></li>
									</ul>
								</li>
								<li>자료실
									<ul class="subMenu">
									<li><a href="/list?code=strange">유머게시판</a></li>
									<li><a href="/list?code=accident">교통사고/사건/블박</a></li>
									<li><a href="/list?code=national">국산차게시판</a></li>
									<li><a href="/list?code=import">수입차게시판</a></li>
									<li><a href="/list?code=hotcar">내차사진</a></li>
									<li><a href="/list?code=dica">직찍/특종발견</a></li>
									<li><a href="/list?code=special">자동차사진/동영상</a></li>
									<li><a href="/list?code=wheel">장착시공사진</a></li>
									<li><a href="/list?code=music">자유사진/동영상</a></li>
									<li><a href="/list?code=girl">레이싱모델</a></li>
									<li><a href="/list?code=army">군사/무기</a></li>
									<li><a href="/list?code=truck">트럭/버스/중기</a></li>
									<li><a href="/list?code=skybr">항공/해운/철도</a></li>
									<li><a href="/list?code=vi">올드카/추억거리</a></li>
									<li><a href="/list?code=bike">오토바이/자전거</a></li>
									</ul>
								</li>
								<li>테마별
									<ul class="subMenu">
									<li><a href="http://www.bobaedream.co.kr/auction/auction_list.php">경매차량</a></li>
									<li><a href="http://www.bobaedream.co.kr/auction/public_list.php">공매차량</a></li>
									<li id="l_mapmenu"><a href="/event/event_list?event_gubun=1">보배드림 이벤트</a></li>
									</ul>
								</li>
							</ul>
							<dl>
								<dt>대표전화</dt><dd>02-784-2329</dd>
								<dt>대표팩스</dt><dd>02-6499-2329</dd>
								<dt>이메일</dt><dd>bobaedream@bobaedream.co.kr</dd>
							</dl>
						</div>
					</li>
					
				<!-- 로그인후 -->
                 
				<!-- 로그인전 -->
				
					<li><a href="http://www.bobaedream.co.kr/center/center.htm">고객센터</a></li>
					<li><a href="http://www.bobaedream.co.kr/mycar/manage/mycar_manage_main.php">차량관리</a></li>
					<li><a href="http://www.bobaedream.co.kr/mycar/mycar.php">차량등록</a></li>
					<li><a href="https://security.bobaedream.co.kr/member/join/sfindID_new.php">ID/비번찾기</a></li>
					<li><a href="https://security.bobaedream.co.kr/member/join/register_choice_renew.php">회원가입</a></li>
					<li class="last"><a href="https://security.bobaedream.co.kr/member/slogin.php"><img src="http://image.bobaedream.co.kr/renew/images/bike/img_login.gif" alt="로그인" class="btn_login"></a></li>
				</ul>
                				
			</div>
		</div>
	</div>
	
	<div class="header H1015"     >
		<div class="car_top_header">			
			<div class="logobox">
				<a href="http://www.bobaedream.co.kr">
					<img src="http://image.bobaedream.co.kr/renew/images/bike/car_logo.gif" alt="보배드림 국내1위 자동차쇼핑몰">
				</a>
			</div>
			<div class="centerbox mainBanner" id='div-gpt-ad-1397695063170-0'>
								<a href="http://direct.samsungfire.com/CR_MyAnycarWeb/overture_index.jsp?OTK=A0910OB0065" target="_blank"><img src="http://image.bobaedream.co.kr/ad/ss_bobadrea_arrow.jpg" alt="배너1" /></a>
				
			</div>
			<span class="search_layer">
				<form name="search_form" method="post" action="http://www.bobaedream.co.kr/search" onsubmit="javascript:	if(!document.search_form.keyword.value) { alert('검색어를 입력해 주세요.'); return false; } else { document.search_form.submit(); }">
				<input type="text" class="keyword" name="keyword"  title="검색어 입력">
				<input type="image" src="http://image.bobaedream.co.kr/image/search/search_btn2.gif" alt="검색">
				</form>
			</span>				
		
		</div>
		<div class="top_navi">
		    <ul class="top_Width">
			<li id="liMenu1" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('1');"><a href="http://www.bobaedream.co.kr/cyber/cyber.php"  id="LNB"><img src="http://image.bobaedream.co.kr/renew/images/common/navi01_off.jpg" alt="사이버매장" id="imgMenu1" ></a>
			  <ul class="subMenu w1003" id="subMenu1" >
			    <li><a class="m01s01 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?gubun=K"                     ><img src="http://image.bobaedream.co.kr/board/icon/1depth1_off.png" alt=" 국산차매장"></a></li>
			    <li><a class="m01s02  " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?gubun=I"                     ><img src="http://image.bobaedream.co.kr/board/icon/1depth2_off.png" alt=" 수입차매장"></a></li>
			    <li><a class="m01s03  " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?cat=1"                       ><img src="http://image.bobaedream.co.kr/board/icon/1depth3_off.png" alt=" 승용차매장"></a></li>
			    <li><a class="m01s04  " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?cat=2"                       ><img src="http://image.bobaedream.co.kr/board/icon/1depth4_off.png" alt=" 스포츠카매장"></a></li>
			    <li><a class="m01s05  " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?cat=4"                       ><img src="http://image.bobaedream.co.kr/board/icon/1depth5_off.png" alt=" RV/SUV매장"></a></li>
			    <li><a class="m01s06  " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?cat=3"                       ><img src="http://image.bobaedream.co.kr/board/icon/1depth6_off.png" alt=" 밴/승합차매장"></a></li>
			    
					<li><a class="m01s08 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?features=camp"               ><img src="http://image.bobaedream.co.kr/board/icon/1depth8_off.png" alt=" 캠핑카매장"></a></li>			    
					<li><a class="m01s09 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?features=tuning"             ><img src="http://image.bobaedream.co.kr/board/icon/1depth9_off.png" alt=" 튜닝카매장"></a></li>			    
					<li><a class="m01s10 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?features=old"                ><img src="http://image.bobaedream.co.kr/board/icon/1depth10_off.png" alt=" 올드카매장"></a></li>			    
					<li><a class="m01s11 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?features=rare"   ><img src="http://image.bobaedream.co.kr/board/icon/1depth11_off.png" alt=" 희귀차매장"></a></li>			    					
			    
			    <li class="last"><a class="m01s07 " href="http://www.bobaedream.co.kr/cyber/CyberCar.php?features=auto" style="width:68px"  ><img src="http://image.bobaedream.co.kr/board/icon/1depth7_off.png" alt=" 오토갤러리매장"></a></li>
			  </ul>
			</li>

			<li id="liMenu2" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('2');"><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K"><img src="http://image.bobaedream.co.kr/renew/images/common/navi02_on.jpg" alt="국산차" id="imgMenu2"></a>
			  <ul class="subMenu w1003" id="subMenu2" style="display:block">
			    <li><a class="m02s01 on " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=ALL"          ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth1_off.png" alt=" 전체매물"></a></li>
			    <li><a class="m02s02" href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K"                         22 ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth2_on.png" alt=" 국산차"></a></li>
			    <li><a class="m02s03 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I"                         ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth3_off.png" alt=" 수입차"></a></li>
			    <li><a class="m02s04 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=ALL&amp;chk_point%5B%5D=10"  ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth4_off.png" alt=" 튜닝카"></a></li>
			    <li><a class="m02s05 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K&amp;sel_m_gubun=C"            ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth5_off.png" alt=" 사이버매장"></a></li>
			    <li><a class="m02s06 " href="http://www.bobaedream.co.kr/auction/auction_list.php"             ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth6_off.png" alt=" 경매차량"></a></li>
			    <li class="last"><a class="m02s07 " href="http://www.bobaedream.co.kr/auction/public_list.php" ><img src="http://image.bobaedream.co.kr/board/images/icon/2depth7_off.png" alt=" 공매차량"></a></li>
			  </ul>
			</li>
			<li id="liMenu3" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('3');"><a href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I"><img src="http://image.bobaedream.co.kr/renew/images/common/navi03_off.jpg" alt="수입차" id="imgMenu3"></a>
			  <ul class="subMenu w1003" id="subMenu3" >
			    <li><a class="m03s01 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=ALL"          ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth1_off.png" alt=" 전체매물"></a></li>
			    <li><a class="m03s02 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=K"                         ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth2_off.png" alt=" 국산차"></a></li>
			    <li><a class="m03s03 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I"                          ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth3_off.png" alt=" 수입차"></a></li>
			    <li><a class="m03s04 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=ALL&amp;chk_point%5B%5D=10"  ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth4_off.png" alt=" 튜닝카"></a></li>			    
			    <li><a class="m03s05 " href="http://www.bobaedream.co.kr/mycar/mycar_list.php?gubun=I&amp;sel_m_gubun=C"            ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth5_off.png" alt=" 사이버매장"></a></li>
			    <li><a class="m03s06 " href="http://www.bobaedream.co.kr/auction/auction_list.php"              ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth6_off.png" alt=" 경매차량"></a></li>
			    <li class="last"><a class="m03s07 " href="http://www.bobaedream.co.kr/auction/public_list.php"  ><img src="http://image.bobaedream.co.kr/board/images/icon/3depth7_off.png" alt=" 공매차량"></a></li>
			  </ul>
			</li>

			<li id="liMenu4" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('4');"><a href="http://www.bobaedream.co.kr/mycar/mycar.php"><img src="http://image.bobaedream.co.kr/renew/images/common/navi04_off.jpg" alt="차량등록" id="imgMenu4"></a>
			  <ul class="subMenu w1003" id="subMenu4">
			    <li><a class="m04s01" href="http://www.bobaedream.co.kr/mycar/mycar.php"  >내차팔기홈</a></li>
			    <li><a class="m04s02" href="http://www.bobaedream.co.kr/mycar/mycar_self_step1.php?gubun=K"  >국산차셀프등록</a></li>
			    <li><a class="m04s03" href="http://www.bobaedream.co.kr/mycar/mycar_self_step1.php?gubun=I"  >수입차셀프등록</a></li>
			    <li><a class="m04s04" href="http://www.bobaedream.co.kr/mycar/mycar_photo_request.php?mType=C"  >사이버매장등록</a></li>
			    <li><a class="m04s05" href="http://www.bobaedream.co.kr/mycar/ticket_k.php"   >국산차매물등록권</a></li>
			    <li><a class="m04s06" href="http://www.bobaedream.co.kr/mycar/ticket.php?gubun=I"  >수입차매물등록권</a></li>
			    <li class="last"><a class="m04s07" href="http://www.bobaedream.co.kr/mycar/mycar_photo_request.php?mType=D"  >촬영대행서비스</a></li>
			  </ul>
			</li>

			<li id="liMenu5" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('5');"><a href="http://bike.bobaedream.co.kr/" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common/navi05_off.jpg" alt="오토바이" id="imgMenu5"></a>
			  <ul class="subMenu w1003" id="subMenu5">
			    <li><a class="m05s01" href="http://bike.bobaedream.co.kr/"   target="_blank">바이크홈</a></li>
			    <li><a class="m05s02" href="http://bike.bobaedream.co.kr/bike2/bike_list.php?ifnew=Y"  target="_blank">신차매장</a></li>
			    <li><a class="m05s03" href="http://bike.bobaedream.co.kr/bike2/bike_list.php?ifnew=N"   target="_blank">중고차매장</a></li>
			    <li><a class="m05s04" href="http://bike.bobaedream.co.kr/bike_good/bike_good_list.php"   target="_blank">용품장터</a></li>
			    <li><a class="m05s05" href="http://bike.bobaedream.co.kr/bike2/board/bike_community_main.php"    target="_blank">커뮤니티</a></li>
			    <li><a class="m05s06" href="http://bike.bobaedream.co.kr/bike2/bike_apply.php"   target="_blank">매물등록</a></li>
			    <li class="last"><a class="m05s07" href="http://bike.bobaedream.co.kr/bike2/mycar_list_main.php"  target="_blank">매물관리</a></li>
			  </ul>
			</li>

			<li id="liMenu6" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('6');"><a href="http://good.bobaedream.co.kr/good/list_sale.php"><img src="http://image.bobaedream.co.kr/renew/images/common/navi06_off.jpg" alt="중고장터" id="imgMenu6"></a>
			  <ul class="subMenu w1003" id="subMenu6">
			    <li><a class="m06s01" href="http://good.bobaedream.co.kr/good/list_sale.php"   target="_blank">전체보기</a></li>
			    <li><a class="m06s02" href="http://good.bobaedream.co.kr/good/list_sale.php?d1=&amp;d2=&amp;d3=&amp;keyfield=&amp;keyword=&amp;sc=&amp;tg=&amp;order=&amp;pagescale=&amp;area=&amp;price1=&amp;price2=&amp;userid=&amp;on=old" target="_blank"    >중고용품 검색</a></li>
			    <li><a class="m06s03" href="http://good.bobaedream.co.kr/good/list_sale.php?d1=&amp;d2=&amp;d3=&amp;keyfield=&amp;keyword=&amp;sc=&amp;tg=&amp;order=&amp;pagescale=&amp;area=&amp;price1=&amp;price2=&amp;userid=&amp;on=new" target="_blank"   >새제품 검색</a></li>
			    <li><a class="m06s04" href="http://good.bobaedream.co.kr/good/list_sale.php?viewMode=&amp;d1=150" target="_blank"    >수입차용품 검색</a></li>
			    <li><a class="m06s05" href="http://good.bobaedream.co.kr/good/home.php" target="_blank"   >용품등록하기</a></li>
			    <li class="last"><a class="m06s06" href="http://good.bobaedream.co.kr/good/list_mygood.php" target="_blank"   >나의 용품관리</a></li>
			  </ul>
			</li>

			<li id="liMenu7" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('7');"><a href="http://www.bobaedream.co.kr/partner/partner_main.php"><img src="http://image.bobaedream.co.kr/renew/images/common/navi07_off.jpg" alt="협력업체" id="imgMenu7"></a>
			  <ul class="subMenu w1003" id="subMenu7">
			    <li><a class="m07s01" href="http://www.bobaedream.co.kr/partner/partner_main.php"   >협력업체홈</a></li>
			    <li><a class="m07s02" href="http://www.bobaedream.co.kr/partner/partner_search.php"  >협력업체찾기</a></li>
			    <li><a class="m07s03" href="http://www.bobaedream.co.kr/partner/partner_photo.php"  >업체작업사진</a></li>
			    <li><a class="m07s04" href="http://www.bobaedream.co.kr/partner/partner_movie.php"  >업체작업영상</a></li>
			    <li><a class="m07s05" href="http://www.bobaedream.co.kr/partner/partner_visit.php"  >방문후기</a></li>
			    <li><a class="m07s06" href="http://www.bobaedream.co.kr/partner/partner_event.php"  >이벤트소식</a></li>
			    <li><a class="m07s07" href="http://www.bobaedream.co.kr/partner/partner_qna.php"   >질문과답변</a></li>
			    <li class="last"><a class="m07s08" href="http://www.bobaedream.co.kr/partner/partner_request.php"   >협력업체문의</a></li>
			  </ul>
			</li> 

			<li id="liMenu8" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('8');"><a href="http://www.bobaedream.co.kr/board/bbs.php"><img src="http://image.bobaedream.co.kr/renew/images/common/navi08_off.jpg" alt="게시판" id="imgMenu8"></a>
			    <ul  class="subMenu w1003" id="subMenu8">
				<li><a class="m08s01" href="http://www.bobaedream.co.kr/list?code=best"  >베스트글</a></li>
				<li><a class="m08s02" href="http://www.bobaedream.co.kr/list?code=freeb"  >자유게시판</a></li>
				<li><a class="m08s03" href="http://www.bobaedream.co.kr/list?code=battle"  >시승기/배틀/목격담</a></li>
				<li><a class="m08s04" href="http://www.bobaedream.co.kr/list?code=famous"  >유명인의 차</a></li>
				<li><a class="m08s05" href="http://www.bobaedream.co.kr/list?code=politic"  >시사이슈</a></li>
				<li><a class="m08s06" href="http://www.bobaedream.co.kr/list?code=nnews"  >자동차뉴스</a></li>
				<li><a class="m08s07" href="http://www.bobaedream.co.kr/list?code=bbstory"  >보배드림 이야기</a></li>
				<li><a class="m08s01" href="http://www.bobaedream.co.kr/list?code=ad"  >성인게시판</a></li>
				<li class="last"><a class="m08s02" href="http://www.bobaedream.co.kr/event/event_list.php?event_gubun=1"  >이벤트</a></li>
			    </ul>
			</li>

			<li id="liMenu9" onmouseout="subMenuOut2();" onmouseover="subMenuOver2('9');" class="last"><a href="http://www.bobaedream.co.kr/board/data.php"><img src="http://image.bobaedream.co.kr/renew/images/common/navi09_off.jpg" alt="자료실" id="imgMenu9"></a>
			  <ul class="subMenu w1003" id="subMenu9">
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=strange"  >유머게시판</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=accident" >교통사고/사건/블박</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=national" >국산차게시판</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=import" >수입차게시판</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=hotcar"  >내차사진</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=dica" >직찍/특종발견</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=special" >자동차사진/동영상</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=wheel" >장착시공사진</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=music" >자유사진/동영상</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=girl"  >레이싱모델</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=army" >군사/무기</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=truck"  >트럭/버스/중기</a></li>
				<li><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=skybr"  >항공/해운/철도</a></li>
				<li class="last" id="l_subMenu9"><a class="m09s01" href="http://www.bobaedream.co.kr/list?code=vi"  >올드카/추억거리</a></li>
			  </ul>
			</li>
		    </ul>
	</div>
</div>




	

<script type='text/javascript'>
googletag.cmd.push(function() {
googletag.defineSlot('/77987245/중고차우측수직형', [120, 225], 'div-gpt-ad-1398066581850-0').addService(googletag.pubads());

googletag.enableServices();
});
</script>

	<!--contents-->
	<div class="Used_car_section renew">
		<div class="Used_car_left">
			<div class="nav">
				<ul class="list">
					<li class="tit"><img src="http://image.bobaedream.co.kr/image/usedcar/used_t5.png" alt="중고차검색" /></li>
					<li ><a href="/mycar/mycar_list.php?gubun=K&sel_m_gubun=ALL">전체매물</a></li>
					<li class='on'><a href="/mycar/mycar_list.php?gubun=K">국산차</a></li>
					<li ><a href="/mycar/mycar_list.php?gubun=I">수입차</a></li>
					<li ><a href="/mycar/mycar_list.php?gubun=K&sel_m_gubun=ALL&chk_point%5B%5D=10">튜닝카</a></li>
					<!-- li><a href="#">화물/특장차</a></li -->
					<li ><a href="/mycar/mycar_list.php?gubun=K&sel_m_gubun=C">사이버매장</a></li>
					<li><a href="/auction/auction_list.php">경매차량</a></li>
					<li><a href="/auction/public_list.php">공매차량</a></li>
				</ul>
				<ul class="list bottom">
					<li class="tit"><img src="http://image.bobaedream.co.kr/image/usedcar/used_t6.png" alt="중고차검색" /></li>
					<li><a href="/mycar/mycar.php">차량등록</a></li>
					<li><a href="/manage/mycar_manage_main.php">등록차량관리</a></li>
					<li><a href="/mycar/mycar_photo_request.php?mType=D">사이버매장등록</a></li>
					<li><a href="/dealguide/guide.php">매매가이드</a></li>
				</ul>
			</div>
		</div>
		<div class="Used_car_right"> 
			<div class="Sale_by_guide USEDcar">
				<div class="car usedcar">
					<ul class="tabmenu">
						<li class="w1"><a href="/mycar/mycar_list.php?gubun=K"           class="on">제조사별</a></li>
						<li class="w2"><a href="/mycar/mycar_list.php?gubun=K&ot=second" class="">차종별</a></li>
						<li class="w3"><a href="/mycar/mycar_list.php?gubun=K&dt=true&detail_search=1"   class="" >상세검색</a></li>
					</ul>					
					<!-- tab1 제조사별 탭 -->				
					<div class="tab_con" style="display:">

					<form id="frm_search" name="frm_search" method="get" style="margin:0; padding:0;" onsubmit="search_disable()">
						<input type="hidden" name="ot"              id="ot"            		value="">
						<input type="hidden" name="refer_page"      id="refer_page"    		value="/mycar/mycar_list.php">
						<input type="hidden" name="gubun"           id="gubun"         		value="K">
						<input type="hidden" name="tab"             id="tab"           		value="1">
						<input type="hidden" name="zone"            id="zone"          		value="">
						<input type="hidden" name="order"           id="order"         		value="S11">
						<input type="hidden" name="view_size"       id="view_size"     		value="20">
						<input type="hidden" name="view_day"        id="view_day"      		value="">
						<input type="hidden" name="carriage"        id="carriage"      		value="">
						<input type="hidden" name="maker_no"        id="maker_no"      		value="">
						<input type="hidden" name="sold"            id="sold"          		value="">
						<input type="hidden" name="bst"             id="bst"           		value="">
						<input type="hidden" name="dt"              id="dt" 		          value="">						
						<input type="hidden" name="detail_search"   id="detail_search" 		value="">
						<input type="hidden" name="search_field2"   id="search_field2" 		value="">		    
						<input type="hidden" name="search_str2"     id="search_str2"   		value="">		    
						<input type="hidden" name="chk_cnt"         id="chk_cnt">		   		 
						<input type="hidden" name="search_car"      id="search_car"    		value="M1_s1">		    
						<input type="hidden" name="sel_m_gubun" 		id="sel_m_gubun"      value="">		    
						<input type="hidden" name="option_list" 		id="option_list"      value="">		    
						<input type="hidden" name="zzimStat" 		    id="zzimStat"         value="">	
						
						<input type="hidden" name="search_cat"        id="search_cat"       value="">
						<input type="hidden" name="search_cat_gubun"  id="search_cat_gubun" value="">

						<input type="hidden" name="addr_t"  id="addr_t" value="">
						<input type="hidden" name="fuel_t"  id="fuel_t" value="">

						
    				

<style>
	.option_li {
		background-image:url('http://image.bobaedream.co.kr/renew/images/common/loading_s.gif');  
		background-repeat:no-repeat;
		background-position:center center;
	}
</style>

<!-- script type="text/javascript" src="http://image.bobaedream.co.kr/mycar/common/js/mycar_list_search.js"></script -->
<script>

var depth       = "";
var tab         = "1";

var gubun       = "K";
var ori_gubun   = "K"; // 제조사 전체/국산/수입 을 변경 후 제조사를 선택하지 않을 경우를 대비해서 설정
var ot          = "";
var mk_div      = "make_div";
var mk_sort_div = "make_sort_div";
var mk_no       = "0";
var mk_title    = "제조사";

var json_model2 = new Object();
json_model2 = null;	

</script>

		<dl class="car tab1">
			<dt>차량정보</dt>
			<dd class="step1">
				<dl class="sub">
					<dt class="t">
						<dl>
							<dt><a href="#" class="more">제조사<span class="ico_arr"></span></a></dt>
							<dd></dd>
						</dl>
					</dt>
					<dd class="d">
						
							<div  id="layer_maker_A" class="pop" style="display:none;">
									<ul>
									<li><a href="javascript:maker_layer_click('49', 1, 1, 'K')">현대</a></li>
<li><a href="javascript:maker_layer_click('1010', 1, 2, 'K')">제네시스</a></li>
<li><a href="javascript:maker_layer_click('3', 1, 3, 'K')">기아</a></li>
<li><a href="javascript:maker_layer_click('8', 1, 4, 'K')">쉐보레/대우</a></li>
<li><a href="javascript:maker_layer_click('26', 1, 5, 'K')">르노삼성</a></li>
<li><a href="javascript:maker_layer_click('31', 1, 6, 'K')">쌍용</a></li>
<li><a href="javascript:maker_layer_click('1000', 1, 7, 'K')">어울림모터스</a></li>
<li><a href="javascript:maker_layer_click('85', 1, 8, 'K')">기타 국산차</a></li>
						
									</ul>
							</div>
						
						
						
						
							<ul id="maker_ul" class="list">

  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_1"  href="javascript:$('#gubun').val('K');car_depth('49', 1, 1);" >현대</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_2"  href="javascript:$('#gubun').val('K');car_depth('1010', 1, 2);" >제네시스</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_3"  href="javascript:$('#gubun').val('K');car_depth('3', 1, 3);" >기아</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_4"  href="javascript:$('#gubun').val('K');car_depth('8', 1, 4);" >쉐보레/대우</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_5"  href="javascript:$('#gubun').val('K');car_depth('26', 1, 5);" >르노삼성</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_6"  href="javascript:$('#gubun').val('K');car_depth('31', 1, 6);" >쌍용</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_7"  href="javascript:$('#gubun').val('K');car_depth('1000', 1, 7);" >어울림모터스</a>
  											</li>

  										
  											<li class="gubun_1" style="">
  												<a class="" id="car_kind_8"  href="javascript:$('#gubun').val('K');car_depth('85', 1, 8);" >기타 국산차</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_9"  href="javascript:$('#gubun').val('I');car_depth('1', 1, 9);" >BMW</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_10"  href="javascript:$('#gubun').val('I');car_depth('21', 1, 10);" >벤츠</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_11"  href="javascript:$('#gubun').val('I');car_depth('32', 1, 11);" >아우디</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_12"  href="javascript:$('#gubun').val('I');car_depth('44', 1, 12);" >폭스바겐</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_13"  href="javascript:$('#gubun').val('I');car_depth('13', 1, 13);" >렉서스</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_14"  href="javascript:$('#gubun').val('I');car_depth('97', 1, 14);" >미니</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_15"  href="javascript:$('#gubun').val('I');car_depth('2', 1, 15);" >GM</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_16"  href="javascript:$('#gubun').val('I');car_depth('77', 1, 16);" >GMC</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_17"  href="javascript:$('#gubun').val('I');car_depth('5', 1, 17);" >닛산</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_18"  href="javascript:$('#gubun').val('I');car_depth('6', 1, 18);" >다이하쓰</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_19"  href="javascript:$('#gubun').val('I');car_depth('7', 1, 19);" >닷지</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_20"  href="javascript:$('#gubun').val('I');car_depth('9', 1, 20);" >도요타</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_21"  href="javascript:$('#gubun').val('I');car_depth('10', 1, 21);" >란치아</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_22"  href="javascript:$('#gubun').val('I');car_depth('11', 1, 22);" >람보르기니</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_23"  href="javascript:$('#gubun').val('I');car_depth('12', 1, 23);" >랜드로버</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_24"  href="javascript:$('#gubun').val('I');car_depth('14', 1, 24);" >로버</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_25"  href="javascript:$('#gubun').val('I');car_depth('15', 1, 25);" >로터스</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_26"  href="javascript:$('#gubun').val('I');car_depth('16', 1, 26);" >롤스로이스</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_27"  href="javascript:$('#gubun').val('I');car_depth('61', 1, 27);" >르노</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_28"  href="javascript:$('#gubun').val('I');car_depth('17', 1, 28);" >링컨</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_29"  href="javascript:$('#gubun').val('I');car_depth('18', 1, 29);" >마세라티</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_30"  href="javascript:$('#gubun').val('I');car_depth('19', 1, 30);" >마쯔다</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_31"  href="javascript:$('#gubun').val('I');car_depth('1003', 1, 31);" >맥라렌</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_32"  href="javascript:$('#gubun').val('I');car_depth('60', 1, 32);" >머큐리</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_33"  href="javascript:$('#gubun').val('I');car_depth('20', 1, 33);" >미쓰비시</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_34"  href="javascript:$('#gubun').val('I');car_depth('82', 1, 34);" >미쯔오카</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_35"  href="javascript:$('#gubun').val('I');car_depth('22', 1, 35);" >벤틀리</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_36"  href="javascript:$('#gubun').val('I');car_depth('23', 1, 36);" >볼보</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_37"  href="javascript:$('#gubun').val('I');car_depth('1009', 1, 37);" >북기은상</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_38"  href="javascript:$('#gubun').val('I');car_depth('88', 1, 38);" >부가티</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_39"  href="javascript:$('#gubun').val('I');car_depth('24', 1, 39);" >뷰익</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_40"  href="javascript:$('#gubun').val('I');car_depth('99', 1, 40);" >비이스만</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_41"  href="javascript:$('#gubun').val('I');car_depth('25', 1, 41);" >사브</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_42"  href="javascript:$('#gubun').val('I');car_depth('94', 1, 42);" >새턴</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_43"  href="javascript:$('#gubun').val('I');car_depth('29', 1, 43);" >쉐보레</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_44"  href="javascript:$('#gubun').val('I');car_depth('27', 1, 44);" >스바루</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_45"  href="javascript:$('#gubun').val('I');car_depth('28', 1, 45);" >스즈키</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_46"  href="javascript:$('#gubun').val('I');car_depth('103', 1, 46);" >스카니아</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_47"  href="javascript:$('#gubun').val('I');car_depth('93', 1, 47);" >스파이커</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_48"  href="javascript:$('#gubun').val('I');car_depth('30', 1, 48);" >시트로엥</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_49"  href="javascript:$('#gubun').val('I');car_depth('33', 1, 49);" >알파로메오</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_50"  href="javascript:$('#gubun').val('I');car_depth('62', 1, 50);" >애스턴마틴</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_51"  href="javascript:$('#gubun').val('I');car_depth('95', 1, 51);" >어큐라</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_52"  href="javascript:$('#gubun').val('I');car_depth('34', 1, 52);" >오펠</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_53"  href="javascript:$('#gubun').val('I');car_depth('1011', 1, 53);" >오스틴</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_54"  href="javascript:$('#gubun').val('I');car_depth('35', 1, 54);" >올즈모빌</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_55"  href="javascript:$('#gubun').val('I');car_depth('83', 1, 55);" >웨스트필드</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_56"  href="javascript:$('#gubun').val('I');car_depth('36', 1, 56);" >이스즈</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_57"  href="javascript:$('#gubun').val('I');car_depth('81', 1, 57);" >인피니티</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_58"  href="javascript:$('#gubun').val('I');car_depth('37', 1, 58);" >재규어</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_59"  href="javascript:$('#gubun').val('I');car_depth('96', 1, 59);" >지프</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_60"  href="javascript:$('#gubun').val('I');car_depth('1006', 1, 60);" >테슬라</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_61"  href="javascript:$('#gubun').val('I');car_depth('38', 1, 61);" >캐딜락</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_62"  href="javascript:$('#gubun').val('I');car_depth('89', 1, 62);" >코닉세크</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_63"  href="javascript:$('#gubun').val('I');car_depth('39', 1, 63);" >크라이슬러</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_64"  href="javascript:$('#gubun').val('I');car_depth('84', 1, 64);" >파가니</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_65"  href="javascript:$('#gubun').val('I');car_depth('41', 1, 65);" >페라리</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_66"  href="javascript:$('#gubun').val('I');car_depth('42', 1, 66);" >포드</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_67"  href="javascript:$('#gubun').val('I');car_depth('43', 1, 67);" >포르쉐</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_68"  href="javascript:$('#gubun').val('I');car_depth('1008', 1, 68);" >포톤</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_69"  href="javascript:$('#gubun').val('I');car_depth('45', 1, 69);" >폰티악</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_70"  href="javascript:$('#gubun').val('I');car_depth('46', 1, 70);" >푸조</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_71"  href="javascript:$('#gubun').val('I');car_depth('91', 1, 71);" >피스커</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_72"  href="javascript:$('#gubun').val('I');car_depth('47', 1, 72);" >피아트</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_73"  href="javascript:$('#gubun').val('I');car_depth('48', 1, 73);" >허머</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_74"  href="javascript:$('#gubun').val('I');car_depth('50', 1, 74);" >혼다</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_75"  href="javascript:$('#gubun').val('I');car_depth('76', 1, 75);" >홀덴</a>
  											</li>

  										
  											<li class="gubun_0" style="display:none">
  												<a class="" id="car_kind_76"  href="javascript:$('#gubun').val('I');car_depth('4', 1, 76);" >기타 수입차</a>
  											</li>

  										</ul>
					</dd>
				</dl>
			</dd>
																							
			<dd class="step2">
				<dl class="sub" id="model_dl_1" style="display:none;">
					<dt class="t">
						<dl id="carriage_sort_div">
							<dt>차종</dt>
						</dl>
					</dt>
					<dd class="d">
						<ul id="carriage_div" class="list">
							<li><a href="javascript:car_depth_carriage('1','');" >차종 전체</a></li>
<li><a href="javascript:car_depth_carriage('2','경차');" >경차</a></li>
<li><a href="javascript:car_depth_carriage('3','소형차');" >소형차</a></li>
<li><a href="javascript:car_depth_carriage('4','준중형차');" >준중형차</a></li>
<li><a href="javascript:car_depth_carriage('5','중형차');" >중형차</a></li>
<li><a href="javascript:car_depth_carriage('6','대형차');" >대형차</a></li>
<li><a href="javascript:car_depth_carriage('7','리무진');" >리무진</a></li>
<li><a href="javascript:car_depth_carriage('8','웨건/해치백');" >웨건/해치백</a></li>
<li><a href="javascript:car_depth_carriage('9','스포츠카');" >스포츠카</a></li>
<li><a href="javascript:car_depth_carriage('10','쿠페');" >쿠페</a></li>
<li><a href="javascript:car_depth_carriage('11','오픈카');" >오픈카</a></li>
<li><a href="javascript:car_depth_carriage('12','SUV');" >SUV</a></li>
<li><a href="javascript:car_depth_carriage('13','RV');" >RV</a></li>
<li><a href="javascript:car_depth_carriage('14','승합차');" >승합차</a></li>
<li><a href="javascript:car_depth_carriage('15','밴');" >밴</a></li>
<li><a href="javascript:car_depth_carriage('16','픽업');" >픽업</a></li>
<li><a href="javascript:car_depth_carriage('17','트럭/화물차');" >트럭/화물차</a></li>
<li><a href="javascript:car_depth_carriage('18','버스');" >버스</a></li>
<li><a href="javascript:car_depth_carriage('19','캠핑카');" >캠핑카</a></li>
						</ul>
					</dd>
				</dl>
								
				
				<dl class="sub" id="model_dl_0" style="">
					<dt class="t">
						<dl id="model_sort_div">
							<dt>모델</dt>
							<dd class="first"><a href="javascript:" class="choice">이름순</a></dd>	
												<dd class="last"><a href="javascript:">인기순</a></dd>
						</dl>
					</dt>
					<dd class="d">
						<ul id="model_div" class="list">
							<li class="txt">제조사를<br>선택하세요.</li>
						</ul>
					</dd>
				</dl>				
			</dd>
						<dd class="step3">
				<dl class="sub">
					<dt class="t">
						<dl id="carriage2_sort_div" style="display:none;">
							<dt>세부모델</dt>
							<dd class="first"><a href="javascript:car_depth($('#maker_no').val(), '12', '1', '3');">출시순</a></dd>
									 			<dd class="last"><a href="javascript:car_depth($('#maker_no').val(), '12', '1', '2');">인기순</a></dd>
						</dl>
						
						<dl id="model2_sort_div" style="">
							<dt>세부모델</dt>
							<dd class="first"><a href="javascript:car_depth_model2('3');"  id="model2Sel3">출시순</a></dd>
												<dd class="last"><a href="javascript:car_depth_model2('2');" id="model2Sel2">인기순</a></dd>
						</dl>
					</dt>
					<dd class="d">
						<ul id="carriage2_div" class="list" style="display:none;">
							<li class="txt">제조사, 모델을<br>선택하세요.</li>
						</ul>
						<ul id="model2_div" class="list" style="">
							<li class="txt">모델을<br>선택하세요.</li>
						</ul>
					</dd>
				</dl>
			</dd>
				
			
			<dd class="step4">
				<dl class="sub">
					<dt class="t">
						<dl id="level_sort_div">
							<dt>등급</dt>
							<dd class="first"><a href="javascript:">출시순</a></dd>
													<dd class="last"><a href="javascript:">인기순</a></dd>
 										
						</dl>
					</dt>
					<dd class="d">
			 		<!--앞단계선택전-->
						<ul id="level_div" class="list">
							<li class="txt">세부모델을<br>선택하세요.</li>
						</ul>						
					</dd>
				</dl>
			</dd>
												
			<dd class="step5">
				<dl class="sub">
					<dt class="t">
						<dl id="level2_sort_div">
							<dt>세부등급</dt>
								<dd class="first"><a href="javascript:">출시순</a></dd>
														<dd class="last"><a href="javascript:">인기순</a></dd>
							
						</dl>
					</dt>
					<dd class="d">
						<ul id="level2_div" class="list">
							<li class="txt">등급을<br>선택하세요.</li>
					
						</ul>						
					</dd>
				</dl>
			</dd>
		</dl>


						
						

<!-- 검색영역 -->
												<div class="srch" style="height:58px;">
							<div class="inner">
								<div class="sec1">
									<span class="tit">연식</span>
									<div class="con">
										<select name="buy_year1_1" id="buy_year1_1" class="" style="width:54px;" onchange="select_remove_year('buy_year1_1', this.value, 'Y')">
<option  value="">선택</option>
<option value="2017"  >2017</option>
<option value="2016"  >2016</option>
<option value="2015"  >2015</option>
<option value="2014"  >2014</option>
<option value="2013"  >2013</option>
<option value="2012"  >2012</option>
<option value="2011"  >2011</option>
<option value="2010"  >2010</option>
<option value="2009"  >2009</option>
<option value="2008"  >2008</option>
<option value="2007"  >2007</option>
<option value="2006"  >2006</option>
<option value="2005"  >2005</option>
<option value="2004"  >2004</option>
<option value="2003"  >2003</option>
<option value="2002"  >2002</option>
<option value="2001"  >2001</option>
<option value="2000"  >2000</option>
<option value="1999"  >1999</option>
<option value="1998"  >1998</option>
<option value="1997"  >1997</option>
<option value="1996"  >1996</option>
<option value="1995"  >1995</option>
<option value="1994"  >1994</option>
<option value="1993"  >1993</option>
<option value="1992"  >1992</option>
<option value="1991"  >1991</option>
<option value="1990"  >1990</option>
<option value="1989"  >1989</option>
<option value="1988"  >1988</option>
<option value="1987"  >1987</option>
<option value="1986"  >1986</option>
<option value="1985"  >1985</option>
<option value="1984"  >1984</option>
<option value="1983"  >1983</option>
<option value="1982"  >1982</option>
<option value="1981"  >1981</option>
<option value="1980"  >1980</option>
<option value="1979"  >1979</option>
<option value="1978"  >1978</option>
<option value="1977"  >1977</option>
<option value="1976"  >1976</option>
<option value="1975"  >1975</option>
<option value="1974"  >1974</option>
<option value="1973"  >1973</option>
<option value="1972"  >1972</option>
<option value="1971"  >1971</option>
<option value="1970"  >1970</option>
<option value="1969"  >1969</option>
<option value="1968"  >1968</option>
<option value="1967"  >1967</option>
<option value="1966"  >1966</option>
<option value="1965"  >1965</option>
<option value="1964"  >1964</option>
<option value="1963"  >1963</option>
<option value="1962"  >1962</option>
<option value="1961"  >1961</option>
<option value="1960"  >1960</option>
<option value="1959"  >1959</option>
<option value="1958"  >1958</option>
<option value="1957"  >1957</option>
<option value="1956"  >1956</option>
<option value="1955"  >1955</option>
<option value="1954"  >1954</option>
<option value="1953"  >1953</option>
<option value="1952"  >1952</option>
<option value="1951"  >1951</option>
<option value="1950"  >1950</option>
</select>
<select name="buy_year1_2" id="buy_year1_2" class="" style="width:49px;" onchange="select_remove_year('buy_year1_2', this.value, 'Y')">
<option  value="">선택</option>
<option value="00"  >0</option>
<option value="1"  >1</option>
<option value="2"  >2</option>
<option value="3"  >3</option>
<option value="4"  >4</option>
<option value="5"  >5</option>
<option value="6"  >6</option>
<option value="7"  >7</option>
<option value="8"  >8</option>
<option value="9"  >9</option>
<option value="10"  >10</option>
<option value="11"  >11</option>
<option value="12"  >12</option>
</select>
<span>~</span>
<select name="buy_year2_1" id="buy_year2_1" class="" style="width:54px;" onchange="select_remove_year('buy_year2_1', this.value, 'Y')">
<option  value="">선택</option>
<option value="2017"  >2017</option>
<option value="2016"  >2016</option>
<option value="2015"  >2015</option>
<option value="2014"  >2014</option>
<option value="2013"  >2013</option>
<option value="2012"  >2012</option>
<option value="2011"  >2011</option>
<option value="2010"  >2010</option>
<option value="2009"  >2009</option>
<option value="2008"  >2008</option>
<option value="2007"  >2007</option>
<option value="2006"  >2006</option>
<option value="2005"  >2005</option>
<option value="2004"  >2004</option>
<option value="2003"  >2003</option>
<option value="2002"  >2002</option>
<option value="2001"  >2001</option>
<option value="2000"  >2000</option>
<option value="1999"  >1999</option>
<option value="1998"  >1998</option>
<option value="1997"  >1997</option>
<option value="1996"  >1996</option>
<option value="1995"  >1995</option>
<option value="1994"  >1994</option>
<option value="1993"  >1993</option>
<option value="1992"  >1992</option>
<option value="1991"  >1991</option>
<option value="1990"  >1990</option>
<option value="1989"  >1989</option>
<option value="1988"  >1988</option>
<option value="1987"  >1987</option>
<option value="1986"  >1986</option>
<option value="1985"  >1985</option>
<option value="1984"  >1984</option>
<option value="1983"  >1983</option>
<option value="1982"  >1982</option>
<option value="1981"  >1981</option>
<option value="1980"  >1980</option>
<option value="1979"  >1979</option>
<option value="1978"  >1978</option>
<option value="1977"  >1977</option>
<option value="1976"  >1976</option>
<option value="1975"  >1975</option>
<option value="1974"  >1974</option>
<option value="1973"  >1973</option>
<option value="1972"  >1972</option>
<option value="1971"  >1971</option>
<option value="1970"  >1970</option>
<option value="1969"  >1969</option>
<option value="1968"  >1968</option>
<option value="1967"  >1967</option>
<option value="1966"  >1966</option>
<option value="1965"  >1965</option>
<option value="1964"  >1964</option>
<option value="1963"  >1963</option>
<option value="1962"  >1962</option>
<option value="1961"  >1961</option>
<option value="1960"  >1960</option>
<option value="1959"  >1959</option>
<option value="1958"  >1958</option>
<option value="1957"  >1957</option>
<option value="1956"  >1956</option>
<option value="1955"  >1955</option>
<option value="1954"  >1954</option>
<option value="1953"  >1953</option>
<option value="1952"  >1952</option>
<option value="1951"  >1951</option>
<option value="1950"  >1950</option>
</select>
<select name="buy_year2_2" id="buy_year2_2" class="" style="width:49px;" >
<option  value="">선택</option>
<option value="00"  >0</option>
<option value="1"  >1</option>
<option value="2"  >2</option>
<option value="3"  >3</option>
<option value="4"  >4</option>
<option value="5"  >5</option>
<option value="6"  >6</option>
<option value="7"  >7</option>
<option value="8"  >8</option>
<option value="9"  >9</option>
<option value="10"  >10</option>
<option value="11"  >11</option>
<option value="12"  >12</option>
</select>
										
									</div>
									<span class="tit">가격</span>
									<div class="con">
									<span id="price_sel_span" style="display:;">
<select name="price_1_s" id="price_1_s" style="width:107px;" onchange="select_remove('price', this.value)">
<option  value="">선택</option>
<option  value="inputTxt">직접입력</option>
<option value="P0"  >0원</option>
<option value="200"  >200만원</option>
<option value="300"  >300만원</option>
<option value="400"  >400만원</option>
<option value="500"  >500만원</option>
<option value="600"  >600만원</option>
<option value="700"  >700만원</option>
<option value="800"  >800만원</option>
<option value="900"  >900만원</option>
<option value="1000"  >1000만원</option>
<option value="1500"  >1500만원</option>
<option value="2000"  >2000만원</option>
<option value="2500"  >2500만원</option>
<option value="3000"  >3000만원</option>
<option value="3500"  >3500만원</option>
<option value="4000"  >4000만원</option>
<option value="4500"  >4500만원</option>
<option value="5000"  >5000만원</option>
<option value="5500"  >5500만원</option>
<option value="6000"  >6000만원</option>
<option value="6500"  >6500만원</option>
<option value="7000"  >7000만원</option>
<option value="7500"  >7500만원</option>
<option value="8000"  >8000만원</option>
<option value="8500"  >8500만원</option>
<option value="9000"  >9000만원</option>
<option value="9500"  >9500만원</option>
<option value="10000"  >1억원</option>
</select>
						<span>~</span>
<select name="price_2_s" id="price_2_s" style="width:107px;"  >
<option  value="">선택</option>
<option value="P0"  >0원</option>
<option value="200"  >200만원</option>
<option value="300"  >300만원</option>
<option value="400"  >400만원</option>
<option value="500"  >500만원</option>
<option value="600"  >600만원</option>
<option value="700"  >700만원</option>
<option value="800"  >800만원</option>
<option value="900"  >900만원</option>
<option value="1000"  >1000만원</option>
<option value="1500"  >1500만원</option>
<option value="2000"  >2000만원</option>
<option value="2500"  >2500만원</option>
<option value="3000"  >3000만원</option>
<option value="3500"  >3500만원</option>
<option value="4000"  >4000만원</option>
<option value="4500"  >4500만원</option>
<option value="5000"  >5000만원</option>
<option value="5500"  >5500만원</option>
<option value="6000"  >6000만원</option>
<option value="6500"  >6500만원</option>
<option value="7000"  >7000만원</option>
<option value="7500"  >7500만원</option>
<option value="8000"  >8000만원</option>
<option value="8500"  >8500만원</option>
<option value="9000"  >9000만원</option>
<option value="9500"  >9500만원</option>
<option value="10000"  >1억원</option>
</select>
						</span>
<span id="price_txt_span" style="display:none">
						 <input id="price_1_txt" name="price_1_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
			  		<span>~</span>
		 				 <input id="price_2_txt" name="price_2_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
		 				</span>
									</div>
									
									<span class="tit">주행</span>
									<div class="con">
									<span id="d_km_sel_span" style="display:;">
<select name="d_km_1_s" id="d_km_1_s" style="width:107px;" onchange="select_remove('d_km', this.value)">
<option  value="">선택</option>
<option  value="inputTxt">직접입력</option>
<option value="P0"  >0km</option>
<option value="10000"  >만km</option>
<option value="20000"  >2만km</option>
<option value="30000"  >3만km</option>
<option value="40000"  >4만km</option>
<option value="50000"  >5만km</option>
<option value="60000"  >6만km</option>
<option value="70000"  >7만km</option>
<option value="80000"  >8만km</option>
<option value="90000"  >9만km</option>
<option value="100000"  >10만km</option>
<option value="110000"  >11만km</option>
<option value="120000"  >12만km</option>
<option value="130000"  >13만km</option>
<option value="140000"  >14만km</option>
<option value="150000"  >15만km</option>
<option value="160000"  >16만km</option>
<option value="170000"  >17만km</option>
<option value="180000"  >18만km</option>
<option value="190000"  >19만km</option>
<option value="200000"  >20만km~</option>
</select>
						<span>~</span>
<select name="d_km_2_s" id="d_km_2_s" style="width:107px;"  >
<option  value="">선택</option>
<option value="P0"  >0km</option>
<option value="10000"  >만km</option>
<option value="20000"  >2만km</option>
<option value="30000"  >3만km</option>
<option value="40000"  >4만km</option>
<option value="50000"  >5만km</option>
<option value="60000"  >6만km</option>
<option value="70000"  >7만km</option>
<option value="80000"  >8만km</option>
<option value="90000"  >9만km</option>
<option value="100000"  >10만km</option>
<option value="110000"  >11만km</option>
<option value="120000"  >12만km</option>
<option value="130000"  >13만km</option>
<option value="140000"  >14만km</option>
<option value="150000"  >15만km</option>
<option value="160000"  >16만km</option>
<option value="170000"  >17만km</option>
<option value="180000"  >18만km</option>
<option value="190000"  >19만km</option>
<option value="200000"  >20만km~</option>
</select>
						</span>
<span id="d_km_txt_span" style="display:none">
						 <input id="d_km_1_txt" name="d_km_1_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
			  		<span>~</span>
		 				 <input id="d_km_2_txt" name="d_km_2_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
		 				</span>
										
									</div>
									<span class="tit last">연비</span>
									<div class="con">
									<span id="fuel_ave_sel_span" style="display:;">
<select name="fuel_ave_1_s" id="fuel_ave_1_s" style="width:107px;" onchange="select_remove('fuel_ave', this.value)">
<option  value="">선택</option>
<option  value="inputTxt">직접입력</option>
<option value="P0"  >0km/ℓ</option>
<option value="4"  >4km/ℓ</option>
<option value="6"  >6km/ℓ</option>
<option value="8"  >8km/ℓ</option>
<option value="10"  >10km/ℓ</option>
<option value="12"  >12km/ℓ</option>
<option value="14"  >14km/ℓ</option>
<option value="16"  >16km/ℓ</option>
<option value="18"  >18km/ℓ</option>
<option value="20"  >20km/ℓ</option>
<option value="22"  >22km/ℓ</option>
</select>
						<span>~</span>
<select name="fuel_ave_2_s" id="fuel_ave_2_s" style="width:107px;"  >
<option  value="">선택</option>
<option value="P0"  >0km/ℓ</option>
<option value="4"  >4km/ℓ</option>
<option value="6"  >6km/ℓ</option>
<option value="8"  >8km/ℓ</option>
<option value="10"  >10km/ℓ</option>
<option value="12"  >12km/ℓ</option>
<option value="14"  >14km/ℓ</option>
<option value="16"  >16km/ℓ</option>
<option value="18"  >18km/ℓ</option>
<option value="20"  >20km/ℓ</option>
<option value="22"  >22km/ℓ</option>
</select>
						</span>
<span id="fuel_ave_txt_span" style="display:none">
						 <input id="fuel_ave_1_txt" name="fuel_ave_1_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
			  		<span>~</span>
		 				 <input id="fuel_ave_2_txt" name="fuel_ave_2_txt" type="text" onkeydown="onlyNumberInput2(event);" title="직접입력" value="">
		 				</span>
													
									</div>
								</div>
								<div class="sec2">
									<span class="tit">지역</span>
									<div class="con">

										<select name="addr_1" id="addr_1" class="" style="width:89px;" onchange="zipcode_new(this.value, 2, 13);" onclick="selmulti('addr', this.value);">
<option  value="">시/도</option>
<option value="다중선택"  >다중선택</option>
<option value="서울"  >서울</option>
<option value="경기"  >경기</option>
<option value="인천"  >인천</option>
<option value="대전"  >대전</option>
<option value="대구"  >대구</option>
<option value="울산"  >울산</option>
<option value="부산"  >부산</option>
<option value="광주"  >광주</option>
<option value="강원"  >강원</option>
<option value="충북"  >충북</option>
<option value="충남"  >충남</option>
<option value="경북"  >경북</option>
<option value="경남"  >경남</option>
<option value="전북"  >전북</option>
<option value="전남"  >전남</option>
<option value="제주"  >제주</option>
<option value="세종"  >세종</option>
</select>
<select name="addr_2" id="addr_2" class="" style="width:79px;" >
<option  value="">구/군</option>
</select>


									</div>
									<span class="tit">연료/변속</span>	
									<div class="con">
										<select name="fuel" id="fuel" class="" style="width:89px;" onchange="selmulti('fuel', this.value);" onclick="selmulti('fuel', this.value);">
<option  value="">연료</option>
<option value="다중선택"  >다중선택</option>
<option value="가솔린"  >가솔린</option>
<option value="디젤"  >디젤</option>
<option value="LPG"  >LPG</option>
<option value="LPG 일반인구입"  >LPG 일반인구입</option>
<option value="가솔린/LPG겸용"  >가솔린/LPG겸용</option>
<option value="가솔린 하이브리드"  >가솔린 하이브리드</option>
<option value="LPG 하이브리드"  >LPG 하이브리드</option>
<option value="디젤 하이브리드"  >디젤 하이브리드</option>
<option value="CNG"  >CNG</option>
<option value="전기"  >전기</option>
<option value="기타"  >기타</option>
</select>
<select name="method" id="method" class="" style="width:79px;" >
<option  value="">변속</option>
<option value="자동"  >자동</option>
<option value="수동"  >수동</option>
<option value="CVT"  >CVT</option>
<option value="듀얼클러치"  >듀얼클러치</option>
</select>
									</div>
									<span class="tit">색상/배기량</span>	
									<div class="con">
										<select name="car_color" id="car_color" class="" style="width:89px;" >
<option  value="">색상</option>
<option value="검정색"  >검정색</option>
<option value="검정투톤"  >검정투톤</option>
<option value="은색"  >은색</option>
<option value="은색투톤"  >은색투톤</option>
<option value="흰색"  >흰색</option>
<option value="흰색투톤"  >흰색투톤</option>
<option value="진주색"  >진주색</option>
<option value="진주투톤"  >진주투톤</option>
<option value="갈색"  >갈색</option>
<option value="금색"  >금색</option>
<option value="남색"  >남색</option>
<option value="노란색"  >노란색</option>
<option value="녹색"  >녹색</option>
<option value="베이지색"  >베이지색</option>
<option value="보라색"  >보라색</option>
<option value="분홍색"  >분홍색</option>
<option value="빨간색"  >빨간색</option>
<option value="연금색"  >연금색</option>
<option value="연두색"  >연두색</option>
<option value="은하늘색"  >은하늘색</option>
<option value="자주색"  >자주색</option>
<option value="주황색"  >주황색</option>
<option value="청색"  >청색</option>
<option value="진청색"  >진청색</option>
<option value="청옥색"  >청옥색</option>
<option value="파란색"  >파란색</option>
<option value="하늘색"  >하늘색</option>
<option value="회색"  >회색</option>
<option value="진회색"  >진회색</option>
<option value="기타색상"  >기타색상</option>
</select>
<select name="fromCC" id="fromCC" class="" style="width:79px;" >
<option  value="">배기량</option>
<option value="1000"  >0 ~ 천cc</option>
<option value="2000"  >천 ~ 2천cc</option>
<option value="3000"  >2천 ~ 3천cc</option>
<option value="4000"  >3천 ~ 4천cc</option>
<option value="5000"  >4천 ~ 5천cc</option>
<option value="6000"  >5천 ~ 6천cc</option>
<option value="7000"  >6천 ~ 7천cc</option>
</select>
									</div>
									<span class="tit last">정원/구동방식</span>	
									<div class="con">
										<select name="riding" id="riding" class="" style="width:89px;" >
<option  value="">정원</option>
<option value="3"  >3인승 이하</option>
<option value="4"  >4인승</option>
<option value="5"  >5인승</option>
<option value="6"  >6인승</option>
<option value="7"  >7인승</option>
<option value="8"  >8인승</option>
<option value="9"  >9인승</option>
<option value="10"  >10인승 이상</option>
</select>
<select name="d_NcarDrive" id="d_NcarDrive" class="" style="width:79px;" >
<option  value="">구동방식</option>
<option value="FF"  >전륜 FF</option>
<option value="FR"  >후륜 FR</option>
<option value="4WD"  >4WD</option>
<option value="RR"  >후륜 RR</option>
<option value="MR"  >후륜 MR</option>
</select>
									</div>
								</div>
								<div class="sec3">
									<span class="tit">구분</span>
									<div class="con">
										<div class="box">
											<input type="checkbox" id="a1" name="chk_point[]" value="4" /><label for="a1">개인</label>
											<input type="checkbox" id="a2" name="sil_chk"     value="1" /><label for="a2">실매물</label>
											<input type="checkbox" id="a3" name="acc_chk"     value="1" /><label for="a3">사고이력</label>
										</div>
										<div class="box">
											<input type="checkbox" id="a4" name="chk_point[]" value="11" /><label for="a4">동영상</label>
											<input type="checkbox" id="a5" name="chk_point[]" value="10" /><label for="a5">튜닝카</label>
											<input type="checkbox" id="a6" name="sell_way[]"  value="7,8,10,2,4" /><label for="a6">리스/할부</label>
										</div>
										<div class="box">
											<input type="checkbox" id="a7" name="chk_point[]" value="6" /><label for="a7">사진</label>
											<input type="checkbox" id="a8" name="chk_point[]" value="8" /><label for="a8">사이버매장</label>
										</div>
									</div>
								</div>
							</div>
							<div class="inner">
								<div class="sec4">
									<span class="tit">옵션</span>
									<div class="con">
										<button type="button" class="btn_opt">선택</button> 10가지 옵션 선택 가능
									</div>
									
									
									<div class="con opts" style="display:none">				
									<ul>
<li>내/외장옵션</li>
<li><input type="checkbox" id="option_list_95" title="파워윈도우" value="95" onclick="option_click(this.id)"  /><label for="option_list_95" title="파워윈도우">파워윈도우</label></li>
<li><input type="checkbox" id="option_list_96" title="에어컨" value="96" onclick="option_click(this.id)"  /><label for="option_list_96" title="에어컨">에어컨</label></li>
<li><input type="checkbox" id="option_list_97" title="풀오토에어컨" value="97" onclick="option_click(this.id)"  /><label for="option_list_97" title="풀오토에어컨">풀오토에어컨</label></li>
<li><input type="checkbox" id="option_list_98" title="좌/우독립에어컨" value="98" onclick="option_click(this.id)"  /><label for="option_list_98" title="좌/우독립에어컨">좌/우독립에어컨</label></li>
<li><input type="checkbox" id="option_list_99" title="가죽시트" value="99" onclick="option_click(this.id)"  /><label for="option_list_99" title="가죽시트">가죽시트</label></li>
<li><input type="checkbox" id="option_list_100" title="열선시트" value="100" onclick="option_click(this.id)"  /><label for="option_list_100" title="열선시트">열선시트</label></li>
<li><input type="checkbox" id="option_list_101" title="통풍시트" value="101" onclick="option_click(this.id)"  /><label for="option_list_101" title="통풍시트">통풍시트</label></li>
<li><input type="checkbox" id="option_list_102" title="마사지시트" value="102" onclick="option_click(this.id)"  /><label for="option_list_102" title="마사지시트">마사지시트</label></li>
<li><input type="checkbox" id="option_list_103" title="버켓시트" value="103" onclick="option_click(this.id)"  /><label for="option_list_103" title="버켓시트">버켓시트</label></li>
<li><input type="checkbox" id="option_list_104" title="메모리시트" value="104" onclick="option_click(this.id)"  /><label for="option_list_104" title="메모리시트">메모리시트</label></li>
<li><input type="checkbox" id="option_list_105" title="분할폴딩시트" value="105" onclick="option_click(this.id)"  /><label for="option_list_105" title="분할폴딩시트">분할폴딩시트</label></li>
<li><input type="checkbox" id="option_list_106" title="운전석전동시트" value="106" onclick="option_click(this.id)"  /><label for="option_list_106" title="운전석전동시트">운전석전동시트</label></li>
<li><input type="checkbox" id="option_list_107" title="동승석전동시트" value="107" onclick="option_click(this.id)"  /><label for="option_list_107" title="동승석전동시트">동승석전동시트</label></li>
<li><input type="checkbox" id="option_list_108" title="뒷좌석전동시트" value="108" onclick="option_click(this.id)"  /><label for="option_list_108" title="뒷좌석전동시트">뒷좌석전동시트</label></li>
<li><input type="checkbox" id="option_list_109" title="알루미늄휠" value="109" onclick="option_click(this.id)"  /><label for="option_list_109" title="알루미늄휠">알루미늄휠</label></li>
<li><input type="checkbox" id="option_list_110" title="크롬휠" value="110" onclick="option_click(this.id)"  /><label for="option_list_110" title="크롬휠">크롬휠</label></li>
<li><input type="checkbox" id="option_list_111" title="광폭타이어" value="111" onclick="option_click(this.id)"  /><label for="option_list_111" title="광폭타이어">광폭타이어</label></li>
<li><input type="checkbox" id="option_list_112" title="샤크안테나" value="112" onclick="option_click(this.id)"  /><label for="option_list_112" title="샤크안테나">샤크안테나</label></li>
<li><input type="checkbox" id="option_list_113" title="데이라이트" value="113" onclick="option_click(this.id)"  /><label for="option_list_113" title="데이라이트">데이라이트</label></li>
</ul>
<ul>
<li>편의장치1</li>
<li><input type="checkbox" id="option_list_38" title="썬루프" value="38" onclick="option_click(this.id)"  /><label for="option_list_38" title="썬루프">썬루프</label></li>
<li><input type="checkbox" id="option_list_39" title="파노라마썬루프" value="39" onclick="option_click(this.id)"  /><label for="option_list_39" title="파노라마썬루프">파노라마썬루프</label></li>
<li><input type="checkbox" id="option_list_40" title="HID/제논램프" value="40" onclick="option_click(this.id)"  /><label for="option_list_40" title="HID/제논램프">HID/제논램프</label></li>
<li><input type="checkbox" id="option_list_41" title="오토라이트" value="41" onclick="option_click(this.id)"  /><label for="option_list_41" title="오토라이트">오토라이트</label></li>
<li><input type="checkbox" id="option_list_42" title="스마트키" value="42" onclick="option_click(this.id)"  /><label for="option_list_42" title="스마트키">스마트키</label></li>
<li><input type="checkbox" id="option_list_43" title="엔진스타트버튼" value="43" onclick="option_click(this.id)"  /><label for="option_list_43" title="엔진스타트버튼">엔진스타트버튼</label></li>
<li><input type="checkbox" id="option_list_44" title="라이트세척장치" value="44" onclick="option_click(this.id)"  /><label for="option_list_44" title="라이트세척장치">라이트세척장치</label></li>
<li><input type="checkbox" id="option_list_45" title="주차조향보조시스템" value="45" onclick="option_click(this.id)"  /><label for="option_list_45" title="주차조향보조시스템">주차조향보조시스템</label></li>
<li><input type="checkbox" id="option_list_46" title="전자주차브레이크" value="46" onclick="option_click(this.id)"  /><label for="option_list_46" title="전자주차브레이크">전자주차브레이크</label></li>
<li><input type="checkbox" id="option_list_47" title="이모빌라이져" value="47" onclick="option_click(this.id)"  /><label for="option_list_47" title="이모빌라이져">이모빌라이져</label></li>
<li><input type="checkbox" id="option_list_48" title="트립컴퓨터" value="48" onclick="option_click(this.id)"  /><label for="option_list_48" title="트립컴퓨터">트립컴퓨터</label></li>
<li><input type="checkbox" id="option_list_49" title="슈퍼비전계기판" value="49" onclick="option_click(this.id)"  /><label for="option_list_49" title="슈퍼비전계기판">슈퍼비전계기판</label></li>
<li><input type="checkbox" id="option_list_50" title="HUD" value="50" onclick="option_click(this.id)"  /><label for="option_list_50" title="HUD">HUD</label></li>
<li><input type="checkbox" id="option_list_51" title="나이트비전" value="51" onclick="option_click(this.id)"  /><label for="option_list_51" title="나이트비전">나이트비전</label></li>
<li><input type="checkbox" id="option_list_52" title="ECM룸미러" value="52" onclick="option_click(this.id)"  /><label for="option_list_52" title="ECM룸미러">ECM룸미러</label></li>
<li><input type="checkbox" id="option_list_53" title="크루즈컨트롤" value="53" onclick="option_click(this.id)"  /><label for="option_list_53" title="크루즈컨트롤">크루즈컨트롤</label></li>
<li><input type="checkbox" id="option_list_54" title="에어서스펜션" value="54" onclick="option_click(this.id)"  /><label for="option_list_54" title="에어서스펜션">에어서스펜션</label></li>
<li><input type="checkbox" id="option_list_55" title="전동트렁크" value="55" onclick="option_click(this.id)"  /><label for="option_list_55" title="전동트렁크">전동트렁크</label></li>
<li><input type="checkbox" id="option_list_56" title="타이어공기압경보" value="56" onclick="option_click(this.id)"  /><label for="option_list_56" title="타이어공기압경보">타이어공기압경보</label></li>
</ul>
<ul>
<li>편의장치2</li>
<li><input type="checkbox" id="option_list_57" title="파워핸들" value="57" onclick="option_click(this.id)"  /><label for="option_list_57" title="파워핸들">파워핸들</label></li>
<li><input type="checkbox" id="option_list_58" title="히팅핸들" value="58" onclick="option_click(this.id)"  /><label for="option_list_58" title="히팅핸들">히팅핸들</label></li>
<li><input type="checkbox" id="option_list_59" title="리모컨핸들" value="59" onclick="option_click(this.id)"  /><label for="option_list_59" title="리모컨핸들">리모컨핸들</label></li>
<li><input type="checkbox" id="option_list_60" title="가죽/우드핸들" value="60" onclick="option_click(this.id)"  /><label for="option_list_60" title="가죽/우드핸들">가죽/우드핸들</label></li>
<li><input type="checkbox" id="option_list_61" title="속도감응식핸들" value="61" onclick="option_click(this.id)"  /><label for="option_list_61" title="속도감응식핸들">속도감응식핸들</label></li>
<li><input type="checkbox" id="option_list_62" title="원격시동장치" value="62" onclick="option_click(this.id)"  /><label for="option_list_62" title="원격시동장치">원격시동장치</label></li>
<li><input type="checkbox" id="option_list_63" title="무선도어리모컨" value="63" onclick="option_click(this.id)"  /><label for="option_list_63" title="무선도어리모컨">무선도어리모컨</label></li>
<li><input type="checkbox" id="option_list_64" title="유아시트고정장치" value="64" onclick="option_click(this.id)"  /><label for="option_list_64" title="유아시트고정장치">유아시트고정장치</label></li>
<li><input type="checkbox" id="option_list_65" title="패들쉬프트" value="65" onclick="option_click(this.id)"  /><label for="option_list_65" title="패들쉬프트">패들쉬프트</label></li>
<li><input type="checkbox" id="option_list_66" title="압축도어" value="66" onclick="option_click(this.id)"  /><label for="option_list_66" title="압축도어">압축도어</label></li>
<li><input type="checkbox" id="option_list_67" title="자동도어잠금" value="67" onclick="option_click(this.id)"  /><label for="option_list_67" title="자동도어잠금">자동도어잠금</label></li>
<li><input type="checkbox" id="option_list_68" title="자동슬라이딩도어" value="68" onclick="option_click(this.id)"  /><label for="option_list_68" title="자동슬라이딩도어">자동슬라이딩도어</label></li>
<li><input type="checkbox" id="option_list_69" title="전동접이식미러" value="69" onclick="option_click(this.id)"  /><label for="option_list_69" title="전동접이식미러">전동접이식미러</label></li>
<li><input type="checkbox" id="option_list_70" title="냉장고" value="70" onclick="option_click(this.id)"  /><label for="option_list_70" title="냉장고">냉장고</label></li>
<li><input type="checkbox" id="option_list_71" title="루프캐리어" value="71" onclick="option_click(this.id)"  /><label for="option_list_71" title="루프캐리어">루프캐리어</label></li>
<li><input type="checkbox" id="option_list_72" title="에어스카프" value="72" onclick="option_click(this.id)"  /><label for="option_list_72" title="에어스카프">에어스카프</label></li>
<li><input type="checkbox" id="option_list_73" title="공기청정기" value="73" onclick="option_click(this.id)"  /><label for="option_list_73" title="공기청정기">공기청정기</label></li>
<li><input type="checkbox" id="option_list_74" title="전동햇빛가리개" value="74" onclick="option_click(this.id)"  /><label for="option_list_74" title="전동햇빛가리개">전동햇빛가리개</label></li>
<li><input type="checkbox" id="option_list_75" title="레인센서와이퍼" value="75" onclick="option_click(this.id)"  /><label for="option_list_75" title="레인센서와이퍼">레인센서와이퍼</label></li>
</ul>
<ul>
<li>안전장치</li>
<li><input type="checkbox" id="option_list_76" title="운전석에어백" value="76" onclick="option_click(this.id)"  /><label for="option_list_76" title="운전석에어백">운전석에어백</label></li>
<li><input type="checkbox" id="option_list_77" title="동승석에어백" value="77" onclick="option_click(this.id)"  /><label for="option_list_77" title="동승석에어백">동승석에어백</label></li>
<li><input type="checkbox" id="option_list_78" title="측면에어백" value="78" onclick="option_click(this.id)"  /><label for="option_list_78" title="측면에어백">측면에어백</label></li>
<li><input type="checkbox" id="option_list_79" title="커튼에어백" value="79" onclick="option_click(this.id)"  /><label for="option_list_79" title="커튼에어백">커튼에어백</label></li>
<li><input type="checkbox" id="option_list_80" title="승객감지에어백" value="80" onclick="option_click(this.id)"  /><label for="option_list_80" title="승객감지에어백">승객감지에어백</label></li>
<li><input type="checkbox" id="option_list_81" title="무릎보호에어백" value="81" onclick="option_click(this.id)"  /><label for="option_list_81" title="무릎보호에어백">무릎보호에어백</label></li>
<li><input type="checkbox" id="option_list_82" title="액티브헤드레스트" value="82" onclick="option_click(this.id)"  /><label for="option_list_82" title="액티브헤드레스트">액티브헤드레스트</label></li>
<li><input type="checkbox" id="option_list_83" title="ABS" value="83" onclick="option_click(this.id)"  /><label for="option_list_83" title="ABS">ABS</label></li>
<li><input type="checkbox" id="option_list_84" title="BAS" value="84" onclick="option_click(this.id)"  /><label for="option_list_84" title="BAS">BAS</label></li>
<li><input type="checkbox" id="option_list_85" title="EBD" value="85" onclick="option_click(this.id)"  /><label for="option_list_85" title="EBD">EBD</label></li>
<li><input type="checkbox" id="option_list_86" title="ECS" value="86" onclick="option_click(this.id)"  /><label for="option_list_86" title="ECS">ECS</label></li>
<li><input type="checkbox" id="option_list_87" title="LSD" value="87" onclick="option_click(this.id)"  /><label for="option_list_87" title="LSD">LSD</label></li>
<li><input type="checkbox" id="option_list_88" title="TCS" value="88" onclick="option_click(this.id)"  /><label for="option_list_88" title="TCS">TCS</label></li>
<li><input type="checkbox" id="option_list_89" title="VDC/ESP" value="89" onclick="option_click(this.id)"  /><label for="option_list_89" title="VDC/ESP">VDC/ESP</label></li>
<li><input type="checkbox" id="option_list_90" title="전,측면감지센서" value="90" onclick="option_click(this.id)"  /><label for="option_list_90" title="전,측면감지센서">전,측면감지센서</label></li>
<li><input type="checkbox" id="option_list_91" title="후방감지센서" value="91" onclick="option_click(this.id)"  /><label for="option_list_91" title="후방감지센서">후방감지센서</label></li>
<li><input type="checkbox" id="option_list_92" title="전방카메라" value="92" onclick="option_click(this.id)"  /><label for="option_list_92" title="전방카메라">전방카메라</label></li>
<li><input type="checkbox" id="option_list_93" title="후방카메라" value="93" onclick="option_click(this.id)"  /><label for="option_list_93" title="후방카메라">후방카메라</label></li>
<li><input type="checkbox" id="option_list_94" title="차선이탈경보장치" value="94" onclick="option_click(this.id)"  /><label for="option_list_94" title="차선이탈경보장치">차선이탈경보장치</label></li>
</ul>
<ul>
<li>AV/오디오/항법</li>
<li><input type="checkbox" id="option_list_114" title="내비게이션" value="114" onclick="option_click(this.id)"  /><label for="option_list_114" title="내비게이션">내비게이션</label></li>
<li><input type="checkbox" id="option_list_115" title="하이패스" value="115" onclick="option_click(this.id)"  /><label for="option_list_115" title="하이패스">하이패스</label></li>
<li><input type="checkbox" id="option_list_116" title="블랙박스" value="116" onclick="option_click(this.id)"  /><label for="option_list_116" title="블랙박스">블랙박스</label></li>
<li><input type="checkbox" id="option_list_117" title="핸즈프리" value="117" onclick="option_click(this.id)"  /><label for="option_list_117" title="핸즈프리">핸즈프리</label></li>
<li><input type="checkbox" id="option_list_118" title="블루투스" value="118" onclick="option_click(this.id)"  /><label for="option_list_118" title="블루투스">블루투스</label></li>
<li><input type="checkbox" id="option_list_119" title="CD플레이어" value="119" onclick="option_click(this.id)"  /><label for="option_list_119" title="CD플레이어">CD플레이어</label></li>
<li><input type="checkbox" id="option_list_120" title="CD체인저" value="120" onclick="option_click(this.id)"  /><label for="option_list_120" title="CD체인저">CD체인저</label></li>
<li><input type="checkbox" id="option_list_121" title="DVD플레이어" value="121" onclick="option_click(this.id)"  /><label for="option_list_121" title="DVD플레이어">DVD플레이어</label></li>
<li><input type="checkbox" id="option_list_122" title="DMB" value="122" onclick="option_click(this.id)"  /><label for="option_list_122" title="DMB">DMB</label></li>
<li><input type="checkbox" id="option_list_123" title="DivX" value="123" onclick="option_click(this.id)"  /><label for="option_list_123" title="DivX">DivX</label></li>
<li><input type="checkbox" id="option_list_124" title="MP3" value="124" onclick="option_click(this.id)"  /><label for="option_list_124" title="MP3">MP3</label></li>
<li><input type="checkbox" id="option_list_125" title="AUX" value="125" onclick="option_click(this.id)"  /><label for="option_list_125" title="AUX">AUX</label></li>
<li><input type="checkbox" id="option_list_126" title="USB" value="126" onclick="option_click(this.id)"  /><label for="option_list_126" title="USB">USB</label></li>
<li><input type="checkbox" id="option_list_127" title="아이팟단자" value="127" onclick="option_click(this.id)"  /><label for="option_list_127" title="아이팟단자">아이팟단자</label></li>
<li><input type="checkbox" id="option_list_128" title="앞좌석TV" value="128" onclick="option_click(this.id)"  /><label for="option_list_128" title="앞좌석TV">앞좌석TV</label></li>
<li><input type="checkbox" id="option_list_129" title="뒷좌석TV" value="129" onclick="option_click(this.id)"  /><label for="option_list_129" title="뒷좌석TV">뒷좌석TV</label></li>
<li><input type="checkbox" id="option_list_130" title="엠프" value="130" onclick="option_click(this.id)"  /><label for="option_list_130" title="엠프">엠프</label></li>
<li><input type="checkbox" id="option_list_131" title="우퍼" value="131" onclick="option_click(this.id)"  /><label for="option_list_131" title="우퍼">우퍼</label></li>
<li><input type="checkbox" id="option_list_132" title="모젠시스템" value="132" onclick="option_click(this.id)"  /><label for="option_list_132" title="모젠시스템">모젠시스템</label></li>
</ul>
<ul>
<li>튜닝</li>
<li><input type="checkbox" id="option_list_133" title="흡기" value="133" onclick="option_click(this.id)"  /><label for="option_list_133" title="흡기">흡기</label></li>
<li><input type="checkbox" id="option_list_134" title="배기" value="134" onclick="option_click(this.id)"  /><label for="option_list_134" title="배기">배기</label></li>
<li><input type="checkbox" id="option_list_135" title="미션" value="135" onclick="option_click(this.id)"  /><label for="option_list_135" title="미션">미션</label></li>
<li><input type="checkbox" id="option_list_136" title="핸들" value="136" onclick="option_click(this.id)"  /><label for="option_list_136" title="핸들">핸들</label></li>
<li><input type="checkbox" id="option_list_137" title="계기판" value="137" onclick="option_click(this.id)"  /><label for="option_list_137" title="계기판">계기판</label></li>
<li><input type="checkbox" id="option_list_138" title="ECU맵핑" value="138" onclick="option_click(this.id)"  /><label for="option_list_138" title="ECU맵핑">ECU맵핑</label></li>
<li><input type="checkbox" id="option_list_139" title="터보차저" value="139" onclick="option_click(this.id)"  /><label for="option_list_139" title="터보차저">터보차저</label></li>
<li><input type="checkbox" id="option_list_140" title="슈퍼차저" value="140" onclick="option_click(this.id)"  /><label for="option_list_140" title="슈퍼차저">슈퍼차저</label></li>
<li><input type="checkbox" id="option_list_141" title="다운스프링" value="141" onclick="option_click(this.id)"  /><label for="option_list_141" title="다운스프링">다운스프링</label></li>
<li><input type="checkbox" id="option_list_142" title="일체형쇼바" value="142" onclick="option_click(this.id)"  /><label for="option_list_142" title="일체형쇼바">일체형쇼바</label></li>
<li><input type="checkbox" id="option_list_143" title="NA튜닝" value="143" onclick="option_click(this.id)"  /><label for="option_list_143" title="NA튜닝">NA튜닝</label></li>
<li><input type="checkbox" id="option_list_144" title="오디오" value="144" onclick="option_click(this.id)"  /><label for="option_list_144" title="오디오">오디오</label></li>
<li><input type="checkbox" id="option_list_145" title="스트럿바" value="145" onclick="option_click(this.id)"  /><label for="option_list_145" title="스트럿바">스트럿바</label></li>
<li><input type="checkbox" id="option_list_146" title="스테빌라이저" value="146" onclick="option_click(this.id)"  /><label for="option_list_146" title="스테빌라이저">스테빌라이저</label></li>
<li><input type="checkbox" id="option_list_147" title="엔진스왑" value="147" onclick="option_click(this.id)"  /><label for="option_list_147" title="엔진스왑">엔진스왑</label></li>
<li><input type="checkbox" id="option_list_148" title="브레이크" value="148" onclick="option_click(this.id)"  /><label for="option_list_148" title="브레이크">브레이크</label></li>
<li><input type="checkbox" id="option_list_149" title="스포일러" value="149" onclick="option_click(this.id)"  /><label for="option_list_149" title="스포일러">스포일러</label></li>
<li><input type="checkbox" id="option_list_150" title="휠/타이어" value="150" onclick="option_click(this.id)"  /><label for="option_list_150" title="휠/타이어">휠/타이어</label></li>
<li><input type="checkbox" id="option_list_151" title="에어로파츠" value="151" onclick="option_click(this.id)"  /><label for="option_list_151" title="에어로파츠">에어로파츠</label></li>
</ul>
					
									</div>
								</div>
							</div>	
						</div>
						<!-- //검색영역  -->
						
						<!-- 검색직접 -->
						<div class="srch_btm">
							<div class="inner">
								<div class="secL">
									<input type="radio" id="sch_field1" name="search_field" value="car_name"    checked /><label for="sch_field1">차량명</label>
									<input type="radio" id="sch_field2" name="search_field" value="seller_name"  /><label for="sch_field2">판매자</label>
									<input type="radio" id="sch_field3" name="search_field" value="cell"         /><label for="sch_field3">휴대폰</label>
									<input type="radio" id="sch_field4" name="search_field" value="car_number"   /><label for="sch_field4">차량번호</label>
									<input onkeydown="textbox_enter('1')" type="text" name="search_str" id="s_str" value="" title="검색정보 삽입"/>
								</div>
								<div class="secR">
									<span><strong>430</strong>대</span>
									<img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_search_08.gif" alt="검색" style="cursor:pointer;" onclick="field_search('1')" />
									<img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_search02_save.gif" alt="검색조건 저장" style="cursor:pointer;" onclick="search_save();" />
									<img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_search01.gif" alt="상세검색" class="more_view" style="" />
								</div>
							</div>
						</div>
						<!-- //검색직접 -->
						
						<!-- 검색닫기 -->
												<div class="srch_close" style="display:none;">							
							<button type="button">상세검색 닫기</button>
						</div>
												<!-- //검색닫기 -->
										<!-- //tab1 제조사별 탭 -->


					
					</div>					


<!-- 지역선택팝업 -->
					<div class="search_pop local" taindex="1">
						<div class="tit_area">
							<span class="tt">지역 선택</span>
							<span class="close"><a href="#" title="제조사 선택 팝업 닫기" onclick="$('.search_pop').hide();return false;"><img src="http://image.bobaedream.co.kr/image/cyber/btn_close.png" alt="닫기"></a></span>
						</div>
						<ul class="list_pop">
						<li><input type="checkbox" id="addrMulti_1" value="서울" onclick="selmultiChk('addr')"  /><label for="addrMulti_1">서울</label></li>
<li><input type="checkbox" id="addrMulti_2" value="경기" onclick="selmultiChk('addr')"  /><label for="addrMulti_2">경기</label></li>
<li><input type="checkbox" id="addrMulti_3" value="인천" onclick="selmultiChk('addr')"  /><label for="addrMulti_3">인천</label></li>
<li><input type="checkbox" id="addrMulti_4" value="대전" onclick="selmultiChk('addr')"  /><label for="addrMulti_4">대전</label></li>
<li><input type="checkbox" id="addrMulti_5" value="대구" onclick="selmultiChk('addr')"  /><label for="addrMulti_5">대구</label></li>
<li><input type="checkbox" id="addrMulti_6" value="울산" onclick="selmultiChk('addr')"  /><label for="addrMulti_6">울산</label></li>
<li><input type="checkbox" id="addrMulti_7" value="부산" onclick="selmultiChk('addr')"  /><label for="addrMulti_7">부산</label></li>
<li><input type="checkbox" id="addrMulti_8" value="광주" onclick="selmultiChk('addr')"  /><label for="addrMulti_8">광주</label></li>
<li><input type="checkbox" id="addrMulti_9" value="강원" onclick="selmultiChk('addr')"  /><label for="addrMulti_9">강원</label></li>
<li><input type="checkbox" id="addrMulti_10" value="충북" onclick="selmultiChk('addr')"  /><label for="addrMulti_10">충북</label></li>
<li><input type="checkbox" id="addrMulti_11" value="충남" onclick="selmultiChk('addr')"  /><label for="addrMulti_11">충남</label></li>
<li><input type="checkbox" id="addrMulti_12" value="경북" onclick="selmultiChk('addr')"  /><label for="addrMulti_12">경북</label></li>
<li><input type="checkbox" id="addrMulti_13" value="경남" onclick="selmultiChk('addr')"  /><label for="addrMulti_13">경남</label></li>
<li><input type="checkbox" id="addrMulti_14" value="전북" onclick="selmultiChk('addr')"  /><label for="addrMulti_14">전북</label></li>
<li><input type="checkbox" id="addrMulti_15" value="전남" onclick="selmultiChk('addr')"  /><label for="addrMulti_15">전남</label></li>
<li><input type="checkbox" id="addrMulti_16" value="제주" onclick="selmultiChk('addr')"  /><label for="addrMulti_16">제주</label></li>
<li><input type="checkbox" id="addrMulti_17" value="세종" onclick="selmultiChk('addr')"  /><label for="addrMulti_17">세종</label></li>
	
						</ul>
						<div class="btn_area">
							<button type="button" onclick="$('.search_pop').hide();">확인</button>
						</div>								
					</div>
					<div class="search_pop fuel" taindex="1">
						<div class="tit_area">
							<span class="tt">연료/변속 선택</span>
							<span class="close"><a href="#" title="제조사 선택 팝업 닫기" onclick="$('.search_pop').hide();return false;"><img src="http://image.bobaedream.co.kr/image/cyber/btn_close.png" alt="닫기"></a></span>
						</div>
						<ul class="list_pop">						
						<li><input type="checkbox" id="fuelMulti_1" value="가솔린" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_1">가솔린</label></li>
<li><input type="checkbox" id="fuelMulti_2" value="디젤" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_2">디젤</label></li>
<li><input type="checkbox" id="fuelMulti_3" value="LPG" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_3">LPG</label></li>
<li><input type="checkbox" id="fuelMulti_4" value="LPG 일반인구입" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_4">LPG 일반인구입</label></li>
<li><input type="checkbox" id="fuelMulti_5" value="가솔린/LPG겸용" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_5">가솔린/LPG겸용</label></li>
<li><input type="checkbox" id="fuelMulti_6" value="가솔린 하이브리드" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_6">가솔린 하이브리드</label></li>
<li><input type="checkbox" id="fuelMulti_7" value="LPG 하이브리드" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_7">LPG 하이브리드</label></li>
<li><input type="checkbox" id="fuelMulti_8" value="디젤 하이브리드" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_8">디젤 하이브리드</label></li>
<li><input type="checkbox" id="fuelMulti_9" value="CNG" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_9">CNG</label></li>
<li><input type="checkbox" id="fuelMulti_10" value="전기" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_10">전기</label></li>
<li><input type="checkbox" id="fuelMulti_11" value="기타" onclick="selmultiChk('fuel')"  /><label for="fuelMulti_11">기타</label></li>
	
						</ul>
						<div class="btn_area">
							<button type="button" onclick="$('.search_pop').hide();">확인</button>
						</div>								
					</div>



			

					<div class="clear"></div>
				</div>
			</div>
			<div class="search_condition">
				<ul>
					<li><a href="javascript:search_view_open('1');" class="down">최근검색 열기 <em id="cselCnt">0</em></a></li>
					<li><a href="javascript:search_view_open('2');" class="down">검색조건 열기 <em></em></a></li>
				</ul>
				<div class="Pop_layer" id="search_view1" style="display:none;">
					<div class="Pop-up">
						<h1>24시간 이내 검색한 조건을 5개까지 보여드립니다.</h1>
						<a href="javascript:search_view_close('1');" class="close">닫기</a>
						<ul></ul>
					</div>
			</div>

			<div class="Pop_layer" id="search_view2" style="display:none;">
					<div class="Pop-up">
						<h1>검색조건저장은 5개까지 가능합니다.</h1>
						<a href="javascript:search_view_close('2');" class="close">닫기</a>
						<ul>
						</ul>
					</div>
			</div>


			</div>
			<!--사이버매장특종차량-->
			<div class="Usedcar middlearea"> 
				<!--타이틀부분-->
				<div class="minishoptitle">
					<h1> <img src="http://image.bobaedream.co.kr/image/usedcar/btn_cyberspecial.gif" alt="사이버매장 특종차량" class="fl" /> </h1>
				</div>
				<!--//타이틀부분-->
				<ul class="cyberspecial">
					<li class="first" ><a href="http://www.bobaedream.co.kr/cyber/CyberCar.php?refer_page=%2Fcyber%2FCyberCar.php&gubun=K&order=S11&view_size=50&detail_search=1&maker_no=3&group_no=4&model_no=1160&level_no=10&level2_no=46&search_field=car_name&maker_no_detail=3&model_no_detail=1160&level_no_detail=10&level2_no_detail=46&view_stat="> <div class="imgbox" ><img src="http://file4.bobaedream.co.kr/direct/special/2016/09/01/1472719304_c.jpg" alt="자동차사진" /></div><span class="txt">기아 K7 <br>2010년식</span></a></li>
<li class="" ><a href="http://www.bobaedream.co.kr/cyber/CyberCar.php?refer_page=%2Fcyber%2FCyberCar.php&gubun=K&order=S11&view_size=50&maker_no=3&group_no=1&model_no=1235&level_no=9625&level2_no=20877&search_field=car_name&maker_no_detail=3&model_no_detail=1235&view_stat="> <div class="imgbox" ><img src="http://file4.bobaedream.co.kr/direct/special/2016/09/01/1472719333_c.jpg" alt="자동차사진" /></div><span class="txt">기아 스포티지R<br>2012년형</span></a></li>
<li class="" ><a href="http://www.bobaedream.co.kr/cyber/CyberCar.php?refer_page=%2Fcyber%2FCyberCar.php&gubun=K&order=S11&view_size=50&maker_no=49&group_no=1&model_no=740&level_no=5206&level2_no=8130&buy_year1_1_s=2007&search_field=car_name&maker_no_detail=49&model_no_detail=740&level_no_detail=5206&level2_no_detail=8130&buy_year1_1=2007&view_stat="> <div class="imgbox" ><img src="http://file4.bobaedream.co.kr/direct/special/2016/09/02/1472773894_c.jpg" alt="자동차사진" /></div><span class="txt">현대 그랜져TG <br>2007년형</span></a></li>
<li class="" ><a href="http://www.bobaedream.co.kr/cyber/CyberCar.php?refer_page=%2Fcyber%2FCyberCar.php&gubun=K&order=S11&view_size=50&maker_no=3&group_no=9&model_no=1467&level_no=10938&level2_no=23383&search_field=car_name&maker_no_detail=3&model_no_detail=1467&level_no_detail=10938&view_stat="> <div class="imgbox" ><img src="http://file4.bobaedream.co.kr/direct/special/2016/09/02/1472773845_c.jpg" alt="자동차사진" /></div><span class="txt">기아 레이 <br>2012년식</span></a></li>
<li class="last" ><a href="http://www.bobaedream.co.kr/cyber/CyberCar.php?refer_page=%2Fcyber%2FCyberCar.php&gubun=K&order=S11&view_size=50&maker_no=49&group_no=10&model_no=1153&level_no=9023&level2_no=20093&search_field=car_name&maker_no_detail=49&model_no_detail=1153&view_stat="> <div class="imgbox" ><img src="http://file4.bobaedream.co.kr/direct/special/2016/09/02/1472773806_c.jpg" alt="자동차사진" /></div><span class="txt">현대 투싼ix <br>2012년형</span></a></li>
				</ul>
				<div class="clear"></div>
				<a href="/cyber/CyberCar.php?gubun=K" class="more">더보기</a>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div class="list_mycar_top"> <span class="fl">
				<ul>
					<li><a href="javascript:order_toggle('S11')" class="on up">등록순</a></li>
					<li><a href="javascript:order_toggle('S22')" class="off">연식순</a></li>
					<li><a href="javascript:order_toggle('S41')" class="off">가격순</a></li>
					<li><a href="javascript:order_toggle('S51')" class="off">주행거리순</a></li>
					<li class="last"><a href="javascript:zzimSel()" id="icon_star" class="">찜한차량</a></li>
				</ul>
				</span> <span class="fr">
				<ul>
					<li><a href="/mycar/mycar.php" class="link"><img src="http://image.bobaedream.co.kr/image/direct/btn_4.gif" alt="차량등록" /></a> </li>
					<li><a href="/mycar/manage/mycar_car_manage_new.php?gubun=K" class="link"><img src="http://image.bobaedream.co.kr/image/direct/btn_3.gif" alt="매물관리" /></a> </li>
					<li class="list1"><a href="javascript:albumSel('L', '/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=1')" class="on">직거래리스트</a></li>
					<li class="list2"><a href="javascript:albumSel('A', '/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=1')" class="off">직거래 앨범형리스트</a></li>
					<li class="last">
						<select title="정렬갯수" name="view_size" onchange="view_size_change(this.value);" style="width: 68px;height:21px;">
							<option value="20" selected>20개씩</option>
														<option value="30" >30개씩</option>
							<option value="40" >40개씩</option>
													</select>
					</li>
				</ul>
				</span> </div>
				
				</form>
			
				
			<div class="usedcar_select">
				
			<!-- div class="tabletop_carlist carlist_close"  -->
				<ul>
					<li><a style="cursor:pointer;" class="on"   onclick="search_car_bold('')"><span>전체</a></li>
					<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s1')">경차</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s2')">소형</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s3')">준중형</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s4')">중형</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s5')">대형</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s6')">스포츠카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s7')">SUV</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s8')">RV</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s10')">승합차</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s9')">밴</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s11')">화물차</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M1_s12')">버스</a></li>
					<li>
						<a style="cursor:pointer;display:" class="more">더보기</a>
						<a style="cursor:pointer;display:none;" id="closebt" title="닫기 버튼">닫기</a>
					</li>
				</ul>
				<ul class="sub">
					<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s10')">리무진</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s3')">웨건/해치백</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s2')">쿠페</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s4')">컨버터블</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s7')">슈퍼카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s9')">픽업</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s12')">캠핑카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s6')">올드카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s8')">희귀차</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s1')">세단</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s5')">튜닝카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s11')">박스카</a></li>
<li><a style="cursor:pointer;" class=""  onclick="search_car_bold('M2_s13')">기타</a></li>
				</ul>                                                                                 
			</div>
						
			
			<div class="con1" style="display:block;">
				<table cellpadding="0" cellspacing="0" class="mycarlist" summary="국산차 리스트 리스트형">
					<caption>국산차 리스트</caption>
					<colgroup>
					<col width="34px" />
					<col width="116px" />
					<col width="*" />
					<col width="71px" />
					<col width="68px" />
					<col width="90px" />
					<col width="143px" />
					</colgroup>
					<tbody>
						
	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1602688" value="1602688" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1602688&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/27/Dw13651472264419_1_s1.jpg" ><span class="ico_cnt">+17</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1602688&gubun=K" class="" itemprop="name">기아 <span class='bold'>비스토 QUE</span> 기본형</a>
					<a href="mycar_view.php?no=1602688&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('64부5029', 'mycar', '1602688');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>00/11</td>
		<td>85,822 km</td>
			
		<td class="centeralign"><span class="redbold02">90</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 여인혁
											<a href="javascript:info_toggle('0')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">164<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1602688" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>여인혁(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4715-7892</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>dls_81@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>dlsgur81</td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 신상로 25 (상동, 오토맥스) 267호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1602688','mycar','dlsgur81','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">10</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=dlsgur81&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1602688','010-4715-7892','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjBvcGhxbW9waHFmb3BocXJvcGhxZG9waHFnb3Boc2VvcGhzbA%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1602736" value="1602736" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1602736&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/27/Dw17431472269954_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1602736&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 디럭스</span> 스페셜</a>
					<a href="mycar_view.php?no=1602736&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">은색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('53서6985', 'mycar', '1602736');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>13/12<br><font>(14년형)</font></td>
		<td>19,526 km</td>
			
		<td class="centeralign"><span class="redbold02">680</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 여인혁
											<a href="javascript:info_toggle('1')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">70<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1602736" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>여인혁(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4715-7892</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>dls_81@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>dlsgur81</td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 신상로 25 (상동, 오토맥스) 267호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1602736','mycar','dlsgur81','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">10</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=dlsgur81&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1602736','010-4715-7892','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjBvcGhxbW9waHFmb3BocXJvcGhxZG9waHFnb3Boc2VvcGhzbA%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1577189" value="1577189" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1577189&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/07/06/CA14221467781194_1_s1.jpg" ><span class="ico_cnt">+16</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1577189&gubun=K" class="" itemprop="name">기아 <span class='bold'>더 뉴 모닝 디럭스</span> </a>
					<a href="mycar_view.php?no=1577189&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진주색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('48머0950', 'mycar', '1577189');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>15/12<br><font>(16년형)</font></td>
		<td>1,200 km</td>
			
		<td class="centeralign"><span class="redbold02">930</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최동수
											<a href="javascript:info_toggle('2')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 대전 서구<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">749<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1577189" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최동수(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-8401-0773</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>cdscarr@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>대전 서구 월평동 154-2<span class="popuplink"><a  href="javascript:size_maps_myinfo('1577189','mycar','cdscar','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">5</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=cdscar&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1577189','010-8401-0773','대전')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjFvcGhyMG9waHFmb3BocjFvcGhyM29waHFn')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1602561" value="1602561" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1602561&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/26/AA13551472210967_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1602561&gubun=K" class="" itemprop="name">GM대우 <span class='bold'>All New 마티즈 조이</span> 고급형</a>
					<a href="mycar_view.php?no=1602561&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">은색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('06도2089', 'mycar', '1602561');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>06/04<br><font>(07년형)</font></td>
		<td>71,940 km</td>
			
		<td class="centeralign"><span class="redbold02">330</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 권진욱
											<a href="javascript:info_toggle('3')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">184<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1602561" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>권진욱(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4953-5649</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>kwon_jin_uk@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 송내대로 450 (삼정동, 부천자동차매매단지) 204호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1602561','mycar','kju0304','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">10</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=kju0304&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1602561','010-4953-5649','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocW5vcGhxb29waHFkb3Boc21vcGhzam9waHNtb3Boc2k%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1601411" value="1601411" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1601411&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/24/HA18391472026416_1_s1.jpg" ><span class="ico_cnt">+20</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1601411&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 럭셔리</span> 스포츠</a>
					<a href="mycar_view.php?no=1601411&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">베이지색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('56도5304', 'mycar', '1601411');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>13/02</td>
		<td>28,144 km</td>
			
		<td class="centeralign"><span class="redbold02">790</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최상준
											<a href="javascript:info_toggle('4')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 인천 남구<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">158<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1601411" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최상준(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-8366-7701</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>witguy0320@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>01083667701</td>
												</tr>
												<tr><th>주소</th>
													<td>인천 남구 도화1동 606 ~ 649 제물포매매단지 114호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1601411','mycar','witguy0320','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">30</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=witguy0320&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1601411','010-8366-7701','인천')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocWJvcGhxcG9waHFlb3BocXJvcGhxZG9waHE5b3Boc21vcGhzam9waHNrb3Boc20%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1603933" value="1603933" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1603933&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/30/HA18071472543453_1_s1.jpg" ><span class="ico_cnt">+17</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1603933&gubun=K" class="" itemprop="name">GM대우 <span class='bold'>마티즈 크리에이티브 재즈</span> 스타</a>
					<a href="mycar_view.php?no=1603933&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">분홍색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('49나9474', 'mycar', '1603933');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>10/10<br><font>(11년형)</font></td>
		<td>54,415 km</td>
			
		<td class="centeralign"><span class="redbold02">530</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최상준
											<a href="javascript:info_toggle('5')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 인천 남구<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">53<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1603933" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최상준(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-8366-7701</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>witguy0320@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>01083667701</td>
												</tr>
												<tr><th>주소</th>
													<td>인천 남구 도화1동 606 ~ 649 제물포매매단지 114호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1603933','mycar','witguy0320','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">30</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=witguy0320&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1603933','010-8366-7701','인천')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocWJvcGhxcG9waHFlb3BocXJvcGhxZG9waHE5b3Boc21vcGhzam9waHNrb3Boc20%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1593498" value="1593498" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1593498&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/08/Gg10121470622460_1_s1.jpg" ><span class="ico_cnt">+18</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1593498&gubun=K" class="" itemprop="name">기아 <span class='bold'>뉴모닝 LX</span> 기본형 블랙프리미엄</a>
					<a href="mycar_view.php?no=1593498&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진회색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('24우9762', 'mycar', '1593498');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>09/05</td>
		<td>76,000 km</td>
			
		<td class="centeralign"><span class="redbold02">350</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 박정호
											<a href="javascript:info_toggle('6')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">461<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1593498" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://file4.bobaedream.co.kr/dealer/2015/07/25/Gg1437802223_3.jpg" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>박정호(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4675-4069</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>qwd84dqw46a@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 621-4 오토프라자 b동 208호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1593498','mycar','qhqowjdgh','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">51</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=qhqowjdgh&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1593498','010-4675-4069','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocWhvcGhxcW9waHFob3BocWpvcGhxYm9waHFvb3BocjBvcGhxcm9waHFx')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1581044" value="1581044" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1581044&gubun=K" \>
<img class="ico_new" src="http://image.bobaedream.co.kr/renew/images/common_re/ico_real.png" alt="실매물" />
<img src="http://file4.bobaedream.co.kr/direct/2016/07/13/Dx14841468380938_1_s1.jpg" ><span class="ico_cnt">+20</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1581044&gubun=K" class="" itemprop="name">GM대우 <span class='bold'>All New 마티즈 SE</span> 기본형</a>
					<a href="mycar_view.php?no=1581044&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">검정색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option"><a href="javascript:image_pop('file4.bobaedream.co.kr/direct/2016/07/13/Dx14841468392966_1.jpg', 'B', 'mycar', '1581044');" >성능점검</a></span>
<span class="option"><a href="javascript:pop_accident_renew('15우6442', 'mycar', '1581044');">사고이력</a></span>
<span class="option last"><a href="javascript:image_pop('file4.bobaedream.co.kr/direct/2016/07/13/Dx14841468392966_3.jpg', 'A', 'mycar', '1581044');">등록증</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>07/04</td>
		<td>100,949 km</td>
			
		<td class="centeralign"><span class="redbold02">140</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이용주
											<a href="javascript:info_toggle('7')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">1,203<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1581044" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이용주(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-9267-1070</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>dydwnrhf1104@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상2동 신상로25<span class="popuplink"><a  href="javascript:size_maps_myinfo('1581044','mycar','dydwnrhf1104','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">7</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=dydwnrhf1104&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1581044','010-9267-1070','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjBvcGhxOW9waHIwb3BocWJvcGhxa29waHFnb3BocXFvcGhxc29waHNsb3Boc2xvcGhzbW9waHNp')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1591925" value="1591925" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1591925&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/04/GB16371470291323_1_s1.jpg" ><span class="ico_cnt">+20</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1591925&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 럭셔리</span> </a>
					<a href="mycar_view.php?no=1591925&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진회색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('59구5923', 'mycar', '1591925');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>11/03<br><font>(12년형)</font></td>
		<td>58,065 km</td>
			
		<td class="centeralign"><span class="redbold02">600</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이상윤
											<a href="javascript:info_toggle('8')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">527<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1591925" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이상윤(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-9152-0339</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>cjfdlssh@nate.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 621-4 <span class="popuplink"><a  href="javascript:size_maps_myinfo('1591925','mycar','sy1988','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">47</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=sy1988&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1591925','010-9152-0339','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocWZvcGhxOW9waHNsb3Boc2RvcGhzZW9waHNl')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1600748" value="1600748" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1600748&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/23/Gg19471471926122_1_s1.jpg" ><span class="ico_cnt">+16</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1600748&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 스마트</span> 스페셜</a>
					<a href="mycar_view.php?no=1600748&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('55서0231', 'mycar', '1600748');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>13/06</td>
		<td>84,000 km</td>
			
		<td class="centeralign"><span class="redbold02">420</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 박정호
											<a href="javascript:info_toggle('9')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">388<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1600748" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://file4.bobaedream.co.kr/dealer/2015/07/25/Gg1437802223_3.jpg" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>박정호(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4675-4069</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>qwd84dqw46a@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 621-4 오토프라자 b동 208호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1600748','mycar','qhqowjdgh','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">51</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=qhqowjdgh&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1600748','010-4675-4069','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocWhvcGhxcW9waHFob3BocWpvcGhxYm9waHFvb3BocjBvcGhxcm9waHFx')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1601667" value="1601667" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1601667&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/25/CR16661472094322_1_s1.jpg" ><span class="ico_cnt">+18</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1601667&gubun=K" class="" itemprop="name">기아 <span class='bold'>뉴모닝 LX</span> 기본형 블랙프리미엄</a>
					<a href="mycar_view.php?no=1601667&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진회색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('37조4692', 'mycar', '1601667');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>10/02<br><font>(11년형)</font></td>
		<td>75,826 km</td>
			
		<td class="centeralign"><span class="redbold02">430</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최진수
											<a href="javascript:info_toggle('10')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 수원시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">167<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1601667" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최진수(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-5737-8060</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>bs8000@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 수원시 권선구 평동 57-1 중앙자동차매매단지 313호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1601667','mycar','bs8000','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">50</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=bs8000&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1601667','010-5737-8060','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjJvcGhxZm9waHNlb3Boc21vcGhzbW9waHNt')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1593141" value="1593141" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1593141&gubun=K" \>
<img class="ico_new" src="http://image.bobaedream.co.kr/renew/images/common_re/ico_real.png" alt="실매물" />
<img src="http://file4.bobaedream.co.kr/direct/2016/08/07/AQ12591470527782_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1593141&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 트렌디</span> </a>
					<a href="mycar_view.php?no=1593141&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진회색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option"><a href="javascript:image_pop('file4.bobaedream.co.kr/direct/2016/08/08/AQ12591470645148_1.jpg', 'B', 'mycar', '1593141');" >성능점검</a></span>
<span class="option"><a href="javascript:pop_accident_renew('47누2125', 'mycar', '1593141');">사고이력</a></span>
<span class="option last"><a href="javascript:image_pop('file4.bobaedream.co.kr/direct/2016/08/08/AQ12591470645148_3.jpg', 'A', 'mycar', '1593141');">등록증</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>14/08<br><font>(15년형)</font></td>
		<td>18,327 km</td>
			
		<td class="centeralign"><span class="redbold02">790</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이종수
											<a href="javascript:info_toggle('11')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 수원시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">337<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1593141" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이종수(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-6258-7993</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>jongsu10044@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 수원시 권선구 평동 58,59-2,61-4 삼영자동차매매상사<span class="popuplink"><a  href="javascript:size_maps_myinfo('1593141','mycar','jongsu03','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">31</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=jongsu03&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1593141','010-6258-7993','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocW9vcGhxam9waHFrb3BocXJvcGhxZm9waHFkb3Boc21vcGhzag%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1546714" value="1546714" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1546714&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/05/06/Ch14311462519087_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1546714&gubun=K" class="" itemprop="name">GM대우 <span class='bold'>All New 마티즈 슈퍼</span> 고급형</a>
					<a href="mycar_view.php?no=1546714&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('23무5057', 'mycar', '1546714');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>07/07<br><font>(08년형)</font></td>
		<td>76,000 km</td>
			
		<td class="centeralign"><span class="redbold02">220</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최정호
											<a href="javascript:info_toggle('12')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">2,629<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1546714" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://file4.bobaedream.co.kr/dealer/2014/03/24/Ch1395646944_3.jpg" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최정호(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-8675-8983</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>ccjjhh304@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 620-5호 <span class="popuplink"><a  href="javascript:size_maps_myinfo('1546714','mycar','aszxas12','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">10</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=aszxas12&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1546714','010-8675-8983','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjNvcGhxZm9waHE4b3BocWFvcGhyM29waHFmb3Boc2xvcGhzaw%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1560480" value="1560480" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1560480&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/06/04/Ch19671465003825_1_s1.jpg" ><span class="ico_cnt">+14</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1560480&gubun=K" class="" itemprop="name">기아 <span class='bold'>모닝 LX</span> 고급형</a>
					<a href="mycar_view.php?no=1560480&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색투톤</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('42소2021', 'mycar', '1560480');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>05/10</td>
		<td>78,000 km</td>
			
		<td class="centeralign"><span class="redbold02">220</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 최정호
											<a href="javascript:info_toggle('13')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">2,849<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1560480" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://file4.bobaedream.co.kr/dealer/2014/03/24/Ch1395646944_3.jpg" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>최정호(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-8675-8983</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>ccjjhh304@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 620-5호 <span class="popuplink"><a  href="javascript:size_maps_myinfo('1560480','mycar','aszxas12','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">10</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=aszxas12&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1560480','010-8675-8983','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjNvcGhxZm9waHE4b3BocWFvcGhyM29waHFmb3Boc2xvcGhzaw%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1571646" value="1571646" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1571646&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/06/26/Dw14011466922804_1_s1.jpg" ><span class="ico_cnt">+17</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1571646&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 스마트</span> 스페셜</a>
					<a href="mycar_view.php?no=1571646&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">검정색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('49구3155', 'mycar', '1571646');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>12/04</td>
		<td>77,000 km</td>
			
		<td class="centeralign"><span class="redbold02">460</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이창용
											<a href="javascript:info_toggle('14')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 인천 서구<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">1,878<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1571646" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이창용(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-3313-4984</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>dlckddyd1224@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) A119, 착한자동차<span class="popuplink"><a  href="javascript:size_maps_myinfo('1571646','mycar','dlckddyd1224','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">31</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=dlckddyd1224&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1571646','010-3313-4984','인천')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjBvcGhxbW9waHIxb3BocW5vcGhyMG9waHIwb3BocTlvcGhyMG9waHNsb3Boc2tvcGhza29waHNp')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1594710" value="1594710" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1594710&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/10/Dw10251470797009_1_s1.jpg" ><span class="ico_cnt">+17</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1594710&gubun=K" class="" itemprop="name">기아 <span class='bold'>뉴모닝 SLX</span> 스페셜</a>
					<a href="mycar_view.php?no=1594710&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">검정색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('15마5330', 'mycar', '1594710');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>09/12<br><font>(10년형)</font></td>
		<td>58,177 km</td>
			
		<td class="centeralign"><span class="redbold02">360</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이창용
											<a href="javascript:info_toggle('15')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 인천 서구<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">792<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1594710" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이창용(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-3313-4984</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>dlckddyd1224@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) A119, 착한자동차<span class="popuplink"><a  href="javascript:size_maps_myinfo('1594710','mycar','dlckddyd1224','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">31</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=dlckddyd1224&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1594710','010-3313-4984','인천')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjBvcGhxbW9waHIxb3BocW5vcGhyMG9waHIwb3BocTlvcGhyMG9waHNsb3Boc2tvcGhza29waHNp')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1594182" value="1594182" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1594182&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/09/Bx17861470711748_1_s1.jpg" ><span class="ico_cnt">+18</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1594182&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 스마트</span> </a>
					<a href="mycar_view.php?no=1594182&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('42러0832', 'mycar', '1594182');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>13/07</td>
		<td>80,000 km</td>
			
		<td class="centeralign"><span class="redbold02">480</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이상규
											<a href="javascript:info_toggle('16')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">638<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1594182" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이상규(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-5155-6557</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>tkdrb032@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 621-4 오토맥스 267호 CL<span class="popuplink"><a  href="javascript:size_maps_myinfo('1594182','mycar','lsg92','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">23</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=lsg92&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1594182','010-5155-6557','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocW1vcGhxZm9waHFyb3Boc2RvcGhzaw%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1604354" value="1604354" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1604354&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/08/31/Bx12771472625945_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1604354&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 스마트</span> </a>
					<a href="mycar_view.php?no=1604354&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">회색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('27로0315', 'mycar', '1604354');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>12/07</td>
		<td>70,000 km</td>
			
		<td class="centeralign"><span class="redbold02">430</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이상규
											<a href="javascript:info_toggle('17')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 부천시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">65<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1604354" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이상규(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-5155-6557</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>tkdrb032@hanmail.net</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td></td>
												</tr>
												<tr><th>주소</th>
													<td>경기 부천시 원미구 상동 621-4 오토맥스 267호 CL<span class="popuplink"><a  href="javascript:size_maps_myinfo('1604354','mycar','lsg92','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">23</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=lsg92&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1604354','010-5155-6557','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocW1vcGhxZm9waHFyb3Boc2RvcGhzaw%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1605046" value="1605046" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1605046&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/09/01/AB10501472741575_1_s1.jpg" ><span class="ico_cnt">+17</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1605046&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 스마트</span> 스페셜</a>
					<a href="mycar_view.php?no=1605046&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">진주색</span>
						<span class="option">수동</span>
<span class="option">가솔린/LPG</span>
<span class="option last"><a href="javascript:pop_accident_renew('63모9347', 'mycar', '1605046');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>11/05<br><font>(12년형)</font></td>
		<td>86,193 km</td>
			
		<td class="centeralign"><span class="redbold02">430</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 김태겸
											<a href="javascript:info_toggle('18')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 광명시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="">43<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1605046" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>김태겸(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-9011-3317</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>ktgtgg92@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>ktgtgg92</td>
												</tr>
												<tr><th>주소</th>
													<td>경기 광명시 오리로651번길 10 (하안동, 한국자동차경매장) 314호<span class="popuplink"><a  href="javascript:size_maps_myinfo('1605046','mycar','ktgtgg92','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">11</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=ktgtgg92&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1605046','010-9011-3317','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocW5vcGhxZW9waHFyb3BocWVvcGhxcm9waHFyb3Boc2RvcGhzaw%3D%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>

	<tr itemscope itemtype="http://schema.org/Article">
		<td class="input"><input type="checkbox" id="checklist_1568172" value="1568172" /></td>
		<td class="thumb">
				<a href="mycar_view.php?no=1568172&gubun=K" \>
<img src="http://file4.bobaedream.co.kr/direct/2016/06/20/CQ19831466392037_1_s1.jpg" ><span class="ico_cnt">+19</span>
				</a>		
		</td>
 
		</td>
		<td class="information">
					<p>
					<a href="mycar_view.php?no=1568172&gubun=K" class="" itemprop="name">기아 <span class='bold'>올 뉴 모닝 디럭스</span> 스페셜</a>
					<a href="mycar_view.php?no=1568172&gubun=K" target="_blank"><img src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif" ></a>
</p>
					<p>
						<span class="option">흰색</span>
						<span class="option">자동</span>
<span class="option">가솔린</span>
<span class="option last"><a href="javascript:pop_accident_renew('64머1908', 'mycar', '1568172');">사고이력</a></span>
</p>
          
					<p class="iconarea">
						
					</p>					
										
		</td>
		<td>11/04<br><font>(12년형)</font></td>
		<td>62,000 km</td>
			
		<td class="centeralign"><span class="redbold02">579</span>만원</td>
		<td class="nonepd">
<div class="dealerinfo">
											<span class="tt">이름</span> 이태영
											<a href="javascript:info_toggle('19')" class="zoom" title="판매자정보 자세히보기"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png" alt="" /></a><br>
											<span class="tt">주소</span> 경기 수원시<br />
											<span class="tt">등록</span> 09월 02일<br>
											<span class="tt">조회</span> <span style="color:#FF0000">658<a href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Frefer_page%3D%252Fmycar%252Fmycar_list.php%26gubun%3DK%26tab%3D1%26order%3DS11%26view_size%3D20%26search_car%3DM1_s1%26search_field%3Dcar_name%26view_size%3D20','','400','290')" id="zzimClass1568172" class="sub_star_off">찜</a>
											<!--판매자정보레이어창-->
								<div class="layerwrap" style="display:none;">
									<div class="layerwraptopbox">
											<div class="layerwraptopcenter">
												<img src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png" alt="판매자정보" title="판매자정보" class="layerwraptitleimg" />
												<a href="javascript:" onclick="$('.layerwrap').hide();" class="close">닫기</a>
											</div>
									</div>
									<div class="layerwrappopbody">
										<!--컨테이너-->
										<div class="layerwrapcontainer">
											<!--팝업레이어내용시작--> 
											<div class="sellerimg"><img src="http://file4.bobaedream.co.kr/dealer/2011/01/25/CQ1295965279_3.jpg" alt="판매자이미지" title="판매자이미지" width="54"  height="63" /></div>
											<table cellpadding="0" cellspacing="0" class="layerinfo">
												<caption>판매자정보</caption>
												<colgroup>
													<col width="64px">
													<col width="*" />
												</colgroup>
												<tbody>
												<tr>
													<th>이름</th>
													<td><strong>이태영(딜러)</strong></td>
												</tr><tr>
													<th>연락처</th>
													<td><span class="redbold02">010-4102-5192</span></td>
												</tr>												
												<tr>
													<th>이메일</th>
													<td>bat0002@naver.com</td>
												</tr>
												<tr>
													<th>카카오톡</th>
													<td>bat0002</td>
												</tr>
												<tr><th>주소</th>
													<td>경기 수원시 권선구 고색동 173-9 <span class="popuplink"><a  href="javascript:size_maps_myinfo('1568172','mycar','bat0002','B');"  >지도보기</a></span></td>
												</tr>
												<tr>
													<th>보유차량</th>
													<td>총<span class="redbold02">16</span>대 등록중<span class="popuplink"><a href="/mycar/mycar_holding_list.php?sellerID=bat0002&mtype_gubun=MK" target="_blank">매물보기</a></span></td>
												</tr>
												<tr>
													<th>상담하기</th>
													<td>
														<ul> 
															<li><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif" alt="무료문자보내기" title="무료문자보내기" class="pointer" onClick="fOpenSms('M','1568172','010-4102-5192','경기')" /></li>
															<li class="last"><img src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif" alt="쪽지보내기" title="쪽지보내기" class="pointer" onClick="memo_send('b3BocjJvcGhyM29waHFlb3Boc21vcGhzbW9waHNtb3Boc2s%3D')" /></li>
														</ul>
													</td>
												</tr>
												</tbody>
											</table>
											<!--//팝업레이어내용시작-->
										</div>
										<div class="clear"></div>
										<!--컨테이너-->
									</div>
									<div class="clear"></div>
								</div>
								<!--/판매자정보레이어창-->
	
										</div>
</td>
	</tr>
					</tbody>
				</table>
				<div class="select_option">
					<a href="javascript:zzim_ad('mycar');">선택찜</a>
					<a href="javascript:selectcar_ad('mycar');">차량비교</a>
				</div>
			</div>
			<div class="con2" style="display:none;">
				<ul class="mycarlist_album">
									</ul>
			</div>

			<!--페이징처리-->			
			


<div class="pageMove">
	<ul class="pageNumber">

<li class="first"><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=1"><span  class="current">1</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=2"><span  class="link_page">2</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=3"><span  class="link_page">3</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=4"><span  class="link_page">4</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=5"><span  class="link_page">5</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=6"><span  class="link_page">6</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=7"><span  class="link_page">7</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=8"><span  class="link_page">8</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=9"><span  class="link_page">9</span></a></li>
<li class=""><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=10"><span  class="link_page">10</span></a></li>
<li class="btn_next"><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=11"><img src="http://image.bobaedream.co.kr/renew/images/common/btn_next3_00.jpg" alt="다음" title="다음" class="next"/></a></li><li class="btn_next"><a href="/mycar/mycar_list.php?refer_page=%2Fmycar%2Fmycar_list.php&gubun=K&tab=1&order=S11&view_size=20&search_car=M1_s1&search_field=car_name&view_size=20&page=22"><img src="http://image.bobaedream.co.kr/renew/images/common/btn_next4.jpg" alt="다음" title="다음" class="next"/></a></li>
</ul>
<div class="gototop" title="맨위로버튼" onclick="location.href='#';"></div>


</div>
			<!--//페이징처리--> 

		
			<!--테이블바텀-->
			<div class="list_top">
				<a href="/mycar/manage/mycar_car_manage_new.php?gubun=K"><img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_02n.gif" alt="" title="정보수정" class="btn" /></a>
				<a href="/mycar/mycar.php"><img src="http://image.bobaedream.co.kr/image/cyber/btn_01n.gif" alt="" title="차량등록" class="btn" /></a>
				<div>
					<div class="search"> <img src="http://image.bobaedream.co.kr/renew/images/common_re/bg_searchleft.gif" alt="" />
						<div class="inputbox">
							<input onkeydown="if (event.keyCode == 13) field2_search('2')" type="text" name="s_str2" id="s_str2" value="" title="직거래 국산차매장 차량검색" />
						</div>						
						<input type="image" id="btm_sbtn" onclick="field_search('2')" src="http://image.bobaedream.co.kr/renew/images/common_re/btn_03.gif" alt="" title="검색버튼" />
					</div>
					<div class="checkbox">
						<input type="radio" name="s_field2" id="sch_field5" title="휴대폰" value="cell"  />
						<label for="sch_field5" title="차량명">휴대폰</label>
					</div>
					<div class="checkbox">
						<input type="radio" name="s_field2" id="sch_field6" title="차량번호" value="car_number"  />
						<label for="sch_field6" title="차량명">차량번호</label>
					</div>
					<div class="checkbox">
						<input type="radio" name="s_field2" id="sch_field7" title="판매자" value="seller_name"  />
						<label for="sch_field7" title="판매자">판매자</label>
					</div>
					<div class="checkbox">
						<input type="radio" name="s_field2" id="sch_field8" title="차량명" value="car_name"  />
						<label for="sch_field8" title="차량명">차량명</label>
					</div>
				</div>
				<!--//테이블바텀--> 				
			</div>
			<div class="clear"></div>
			<!--//사이버매장등록차량-->
		</div>
		<!--//left--> 
		
		<!--//right-->
		<div class="clear"></div>
	</div>



<div class="footer_renew footer_one  footer_1015">
		<div class="quickMenu"> 
			<a href="http://www.bobaedream.co.kr/company/company_intro.php">회사소개</a> <span>|</span> 
			<a href="http://www.bobaedream.co.kr/company/company_proposalinfo.php" class="bold">제휴/광고문의</a> <span>|</span> 
			<a href="http://www.bobaedream.co.kr/center/recruit.htm">인재채용</a> <span>|</span> 
			<a href="http://www.bobaedream.co.kr/company/service.php">이용약관</a> <span>|</span> 
			<a href="http://www.bobaedream.co.kr/company/company_privacy.php">개인정보취급방침</a> <span>|</span> 
			<a href="#">신고센터</a> <span>|</span> 
			<a href="http://bobae.anyhelp.net/" class="bold">원격지원</a> <span>|</span> 
			<a href="http://www.bobaedream.co.kr/center/center.htm">고객센터</a>
		</div>	
		<div class="addr">
			<p>사업자등록번호 : 117-81-64543 <span>|</span> 통신판매업신고번호 : 제 2013-서울양천-0465호 <a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2013314011430200466&amp;area1=&amp;area2=&amp;currpage=1&amp;searchKey=04&amp;searchVal=1178164543&amp;stdate=&amp;enddate=" target="_blank" title="새 창" ><img src="http://security.bobaedream.co.kr/member/join/images/decorator/bd_foot_comapny.png" alt="사업자정보확인" style="vertical-align:top;" /></a> </p>
			<address>
			주식회사 보배네트워크 <span>|</span> 주소 서울 양천구 목동동로 233-1 드림타워 11,12층 <span>|</span> 대표이사 : 김보배 <span>|</span> 개인정보관리책임자 : 이은호
			</address>
			<p>대표전화 : 02-784-2329 <span>|</span> 대표팩스 : 02-6499-2329 <span>|</span> 이메일 : bobaedream@bobaedream.co.kr</p>
			<p>Copyright © BOBAENETWORK. All rights reserved.</p>
			<p class="waning"><strong>보배드림은 통신판매중개자이며 차량판매의 당사자가 아닙니다. 따라서 보배드림은 차량 거래검토 및 거래에 대하여 어떤 책임을 지지 않습니다.</strong></p>
		</div>
	</div>
    
    


<script>

var fixPos = '11';
var maxTop = '155';

window.onscroll = function() {
    var adObj  = document.getElementById("QuickMenu");

    if (adObj) {
        var sct = (document.body.scrollTop) ? document.body.scrollTop : document.documentElement.scrollTop;

        if (sct <= 0) {
            adObj.style.top = maxTop + 'px';
        } else if (sct < maxTop) {
            adObj.style.top = (maxTop - sct) + 'px';
        } else if (sct > maxTop && adObj.style.top != fixPos + 'px') {
            adObj.style.top = fixPos + 'px';
        }
    }
}	
</script>
	
	
<script>	

var qPage    = 0;
var qEndPage = '1';


$(document).ready(function() {

$('#qNavi').html('<strong>1</strong>/' + qEndPage)
$('#recenct_Cnt').html('(1)')
qMenuAjax('P');
});


function qMenuAjax(con) {
		
		if(con == 'P') {
			qPage++;
			if(qPage > qEndPage) {
				qPage = qEndPage;
				return;
			}
		}
				
		if(con == 'M') {
			qPage--;
			if(qPage < 1) {
				qPage = 1;
				return;
			}
		}

		$.ajax({
  				type: 'POST'
  				, async: true
  				, url: '/mycar/proc/qMenuProc.php'
  				, data: "qPage=" + qPage
  				, dataType: 'json'
  				, beforeSend: function() {
  				  }
  				, success: function(data) {
  						$('#qImg').empty();
  		 		    
  		 		    var gQcnt = 0;
  		 		    $.each(data,  function(k, v) {
  		 		    		if(k == 'qStat') {

										$('#recenct_Cnt').html('(' + v[0] + ')');
										$('#qNavi').html('<strong>' + qPage + '</strong>/' + v[1]);
										qEndPage = v[1];
										
  		 		    		} else {
										$('#qImg').append('<a href="' + v[2] + '" class="car" title="' + v[1] + '" >' +
																		  '<span class="img">' + 
																		  '<img src="' + v[0] + '" alt="' + v[1] + '"></span>' + 
																		  '<span class="txt">' + v[1] + '</span></a>\n');
										gQcnt++;																		  
									}
							});
							
  		 		    if(gQcnt < 1) {
  		 		    	$('#qdl').hide();
  		 		    } else {
  		 		    	$('#qdl').show();
  		 		    }


 				  	}
  				, error: function(data, status, err) {
  				    //alert('서버와의 통신이 실패했습니다.' + err);
  				  }
  				, complete: function() {
  				  }
  		});
}  		
</script>
	<div class='Quick_layer'>
		<div class="Quick" id="QuickMenu" style="width:120px;top:155px;left:515px">
							<!-- 우측 배너 -->
				<div id='div-gpt-ad-1398066581850-0' style='width:120px; height:225px;' tabindex="0">
					<script type='text/javascript'>
						googletag.cmd.push(function() { googletag.display('div-gpt-ad-1398066581850-0'); });
					</script>
				</div>	
				

			<dl id="qdl" class="ml" style="margin-left:3.5px" >
				<dt class="t"><a href="/mycar/manage/mycar_recent.php" id="f_jump"><img src="http://image.bobaedream.co.kr/image/quick/quick_view.png" alt="최근 본 차량"> <em id="recenct_Cnt">(0)</em></a></dt>
				<dd id='qImg'>
				</dd>
				<dd id='qImgPage' class="page">
					<a href="javascript:qMenuAjax('M');"><img src="http://image.bobaedream.co.kr/image/quick/icon_l.gif" alt="왼쪽이동"></a>
					<span id="qNavi"><strong>1</strong>/1</span>
					<a href="javascript:qMenuAjax('P');"><img src="http://image.bobaedream.co.kr/image/quick/icon_r.gif " alt="오른쪽이동"></a>
				</dd>
			</dl>
			<ul class="ml" >
				<li><a href="/mycar/manage/mycar_select_list.php"><img src="http://image.bobaedream.co.kr/image/quick/quick_wish.png" alt="찜한차량"> <em id="zzim2">(0)</em></a></li>
				<li><a href="/dealguide/accident_search.php"><img src="http://image.bobaedream.co.kr/image/quick/q_s6.gif" alt="사고이력 조회" /></a></li>
				<li><a href="http://direct.samsungfire.com/CR_MyAnycarWeb/overture_index.jsp?OTK=A1410AF0019" target="_blank" title="새 창"><img src="http://image.bobaedream.co.kr/image/quick/quick_insurance.png" alt="보험료계산"></a></li>
				<li><a href="http://ad56.feeldmc.com/adv.dmc?m=bobaedream&c=3007&s=12053&a=87065&ac=1" target="_blank" title="새 창"><img src="http://image.bobaedream.co.kr/image/quick/quick_installment.png" alt="할부한도조회"></a></li>
				<li><a href="http://www.bobaedream.co.kr/mycar/mycar.php" target="_blank" title="새 창"><img src="http://image.bobaedream.co.kr/image/quick/quick_register.png" alt="내차팔기"></a></li>
				<li class="top"><a href="#"><img src="http://image.bobaedream.co.kr/image/quick/quick_top.png" alt="top"></a></li>
			</ul>
			<div class="sns_area">
				<a href="https://www.facebook.com/bobaedream" title="보배드림 페이스북 바로가기 새창" target="_blank"><img src="http://image.bobaedream.co.kr/image/quick/btn_sns1.gif" alt="페이스북" /></a>
				<a href="https://www.youtube.com/channel/UCLwH6qjWELskt7sGT2b3FOg" title="보배드림 유튜브 바로가기 새창" target="_blank"><img src="http://image.bobaedream.co.kr/image/quick/btn_sns4.gif" alt="유튜브" /></a>
								<a href="https://instagram.com/bobaedream" title="보배드림 인스타그램 바로가기 새창" target="_blank"><img src="http://image.bobaedream.co.kr/image/quick/btn_sns3.gif" alt="인스타그램" /></a>
			</div>			
		</div>	
</div>		


</div>

