<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("utf-8");
	String place = request.getParameter("place");
	if(place==null){
		place="서울시청"; 
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>지도 ver.9</title>
    <style type="text/css">
    	#map{
    		margin-left: 300px;
    		margin-top: 50px
    	}
    </style>
</head>
<body>
<div id="map" style="width:800px;height:400px;"></div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a156154cfd8364efb32db71b6254e945&libraries=services"></script>
<script>
	window.onload=function(){
		document.getElementById("place").focus();
		document.getElementById("place").select();
	}
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.532595, 126.982751), // 지도의 중심좌표
	        level: 7 // 지도의 확대 레벨
	    };  
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	//마커를 표시할 위치와 title 객체 배열입니다 
	var positions = [
	    {
	        title: '노원 중고차 경매장',
	        latlng: new daum.maps.LatLng(37.654993, 127.071099)
	    },
	    {
	        title: '강북 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.642328, 127.011625)
	    },
	    {
	        title: '구리 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.594972, 127.131191
)
	    },
	    {
	        title: '광진 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.544268, 127.087288)
	    },
	    {
	        title: '동대문 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.581772, 127.048930)
	    },
	    {
	        title: '종로 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.595619, 126.977919)
	    },
	    {
	        title: '성북 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.606573, 127.032276)
	    },
	    {
	        title: '용산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.531009, 126.980761)
	    },
	    {
	        title: '명동 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.559410, 126.986548)
	    },
	    {
	        title: '서대문 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.582336, 126.926478)
	    },
	    {
	        title: '고양 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.658929, 126.830661)
	    },
	    {
	        title: '김포 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.617185, 126.713321)
	    },
	    {
	        title: '영등포 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.518889, 126.903374)
	    },
	    {
	        title: '까치산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.530795, 126.847243)
	    },
	    {
	        title: '광명 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.479928, 126.865075)
	    },
	    {
	        title: '송파 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.501878, 127.096648)
	    },
	    {
	        title: '강남 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.497007, 127.045618)
	    },
	    {
	        title: '동작 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.497573, 126.931628)
	    },
	    {
	        title: '서초 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.476257, 127.006353)
	    },
	    {
	        title: '안양 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.392923, 126.958284)
	    },
	    {
	        title: '파주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.779458, 126.840921)
	    },
	    {
	        title: '가평 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.833767, 127.521295)
	    },
	    {
	        title: '춘천 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.846193, 127.777333)
	    },
	    {
	        title: '강원 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.776881, 128.311262)
	    },
	    {
	        title: '원주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.328271, 127.951046)
	    },
	    {
	        title: '정선 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.371071, 128.668288)
	    },
	    {
	        title: '화성 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.184396, 126.871008)
	    },
	    {
	        title: '수원 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.299800, 127.015181)
	    },
	    {
	        title: '인천 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.387020, 126.679873)
	    },
	    {
	        title: '광주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.410463, 127.258132)
	    },
	    {
	        title: '과천 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.319745, 126.922070)
	    },
	    {
	        title: '이천 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.262046, 127.448066)
	    },
	    {
	        title: '오산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.129080, 127.078527)
	    },
	    {
	        title: '제천 중고차 경매장', 
	        latlng: new daum.maps.LatLng(37.132119, 128.213627)
	    },
	    {
	        title: '안성 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.990385, 127.273929)
	    },
	    {
	        title: '충주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.977745, 127.940916)
	    },
	    {
	        title: '천안 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.796799, 127.175712)
	    },
	    {
	        title: '홍성 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.593454, 126.666016)
	    },
	    {
	        title: '청주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.647867, 127.581900)
	    },
	    {
	        title: '영주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.785802, 128.626834)
	    },
	    {
	        title: '안동 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.548900, 128.741926)
	    },
	    {
	        title: '세종 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.464397, 127.283491)
	    },
	    {
	        title: '대전 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.321076, 127.385603)
	    },
	    {
	        title: '상주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.389981, 128.150630)
	    },
	    {
	        title: '익산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.938716, 127.975197)
	    },
	    {
	        title: '전주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.818627, 127.167865)
	    },
	    {
	        title: '구미 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.106442, 128.351167)
	    },
	    {
	        title: '대구 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.863357, 128.607768)
	    },
	    {
	        title: '포항 중고차 경매장', 
	        latlng: new daum.maps.LatLng(36.034875, 129.389404)
	    },
	    {
	        title: '경주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.830445, 129.230299)
	    },
	    {
	        title: '울산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.537605, 129.340693)
	    },
	    {
	        title: '부산 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.154394, 129.104949)
	    },
	    {
	        title: '광주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.135682, 126.857467)
	    },
	    {
	        title: '진주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(35.162718, 128.138700)
	    },
	    {
	        title: '보성 중고차 경매장', 
	        latlng: new daum.maps.LatLng(34.757305, 127.070622)
	    },
	    {
	        title: '제주 중고차 경매장', 
	        latlng: new daum.maps.LatLng(33.482931, 126.495961)
	    },
	    {
	        title: '서귀포 중고차 경매장', 
	        latlng: new daum.maps.LatLng(33.255028, 126.502081)
	    }
	];
	/* var positions = [];
	for(var location=0; location<${alist.size()}; location++){
		positions[location]['title'] = ${alist[1].title};
		positions[location]['latlng'] = ${alist[1].position}
	} */
	
	var selectedMarker = null;
	
	//마커 이미지의 이미지 주소입니다
	var imageSrc = "${pageContext.request.contextPath }/image/icon.png"; 
	
	// 장소 검색 객체를 생성합니다
	var ps = new daum.maps.services.Places(); 
	
	// 키워드로 장소를 검색합니다
	ps.keywordSearch('<%=place %>', placesSearchCB); 
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (status, data, pagination) {
	    if (status === daum.maps.services.Status.OK) {
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new daum.maps.LatLngBounds();
	
	        for (var i=0; i<data.places.length; i++) {
	            bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
	        }       
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	        
	        map.setLevel(5);
	    } 
	}
	
	var iwContent = null; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	var iwRemoveable = true;
	var infowindow = null;
	
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(24, 35);
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
	    
		// 마커 추가
	    addMarker(positions[i], markerImage);
	}

	function addMarker(position, markerImage) {
		var marker = new daum.maps.Marker({
		       map: map, // 마커를 표시할 지도
		       position: position.latlng, // 마커를 표시할 위치
		       title : position.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		       image : markerImage, // 마커 이미지 
		       clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});
		
		
		// 마커에 click 이벤트를 등록합니다
	    daum.maps.event.addListener(marker, 'click', function() {
	    	if(!!infowindow){
				/* infowindow.close(); */
				infowindow = null;
				selectedMarker = null;
	    	}else{
				// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
			    iwContent = '<div style="padding:5px; width: 200px; height: 200px;"> 위치 좌표 : <br>'+position.latlng+
			    				"<img src='${pageContext.request.contextPath }/image/kakao_spacedotOne.jpeg'></div>"; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    				
			    iwRemoveable = true; // removeable 속성을 true 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			    
				// 인포윈도우를 생성합니다
			    /* infowindow = new daum.maps.InfoWindow({
			        content : iwContent,
			        removable : iwRemoveable
			    }); */
		    	
		    	// 현재 지도의 레벨을 얻어옵니다
		        var level = map.getLevel();
		        
		        // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		        //map.setLevel(level - 1);
		        
		        map.setCenter(position.latlng);
		        
		    	// 클릭된 마커가 없고, click 마커가 클릭된 마커가 아니면
		        // 마커의 이미지를 클릭 이미지로 변경합니다
		        if (!selectedMarker || selectedMarker !== marker) {
	
		            // 클릭된 마커 객체가 null이 아니면
		            // 클릭된 마커의 이미지를 기본 이미지로 변경하고
		            //!!selectedMarker && selectedMarker.infowindow.close();
	
		            // 마커 위에 인포윈도우를 표시합니다
		            /* infowindow.open(map, marker); */
			    	//클릭된 마커를 현재 클릭된 마커 객체로 설정합니다
			        selectedMarker = marker;
		        }else{
		        	/* infowindow.close(); */
		        	selectedMarker = null;
		        }
	    	}
	    });	
	}
	
	var clickMarker = null;
	
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		if(!!infowindow){
			/* infowindow.close(); */
	    	selectedMarker = null;
		}

		// 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng;
	    
	    /* var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	    message += '경도는 ' + latlng.getLng() + ' 입니다';
	    alert(message);
	    var resultDiv = document.getElementById('result'); 
	    resultDiv.innerHTML = message; */
	    //////////////////////////////////////////////////////////////////////////
	    if(!!clickMarker){
	    	clickMarker.setMap(null);  
	    }
	    
	  	//마커 이미지의 이미지 주소입니다
	    var imageSrc = "${pageContext.request.contextPath }/image/icon.png";
	  	
		//마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(24, 35);
	    
	    //마커 이미지를 생성합니다
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
	    
	    var clickPosition =  {
		                         title: '클릭위치',
		                         latlng: new daum.maps.LatLng(latlng.getLat(), latlng.getLng())
	                    	 };
	                     
	    clickMarker = new daum.maps.Marker({
		       map: map, // 마커를 표시할 지도
		       position: clickPosition.latlng, // 마커를 표시할 위치
		       title : clickPosition.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		       image : markerImage, // 마커 이미지 
		       clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});
	    
	    var shortest = 0;
	    
	    var findMarker = findNear(clickMarker);
	   	/* if(shortest==0){
	   		shortest = distance;
	   	}else if(shortest>distance){
	   		shortest = distance;
	   	}
	    alert("가장 가까운 거리는 "+shortest+"입니다! 가격은 "+(Math.round(shortest*1000000))+"원 입니다!"); */
	    
	    if(!!infowindow){
			/* infowindow.close(); */
		}
		// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	    iwContent = '<div style="padding:5px; width: 200px; height: 250px;"> 위치 좌표 : <br>'+findMarker.getPosition()+
	    				"<img src='${pageContext.request.contextPath }/image/kakao_spacedotOne.jpeg'></div>"; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    				
	    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
	    
		// 인포윈도우를 생성합니다
	    /* infowindow = new daum.maps.InfoWindow({
	        content : iwContent,
	        removable : iwRemoveable
	    }); */
	    
	    /* infowindow.open(map, findMarker); */
	    alert("선택 지점에서 가장 가까운 수령지는 \""+findMarker.getTitle()+"\"입니다.");
	    $("#buyerLocation").val(findMarker.getTitle());
	});

	function findNear(clickMarker){
		var nearMarker = null;
		var shortest = 0;
		for(var j = 0; j < positions.length; j ++){
			var marker1 = new daum.maps.Marker({
			       position: positions[j].latlng, // 마커를 표시할 위치
			       title : positions[j].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			});
			
			var positionOfMarker = marker1.getPosition();
			var positionOfClick = clickMarker.getPosition();
			
			var x1 = positionOfMarker.getLat();
			var y1 = positionOfMarker.getLng();
			var x2 = positionOfClick.getLat();
			var y2 = positionOfClick.getLng();
			
			var distance = (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2);
			
			distance = Math.sqrt(distance);
			
			if(shortest==0){
				shortest = distance;
		   		nearMarker = marker1;
		   	}else if(shortest>distance){
		   		shortest = distance;
		   		nearMarker = marker1;
		   	}
		}
		return nearMarker;
	}
</script>
	<form name="inputPlace" id="inputPlace" method="post" action="<c:url value='/delivery/detail.do?auctionNo=${map["AUCTION_NO"] }'/>">
		<input type="text" name="place" id="place" value="<%=place %>">
		<input type="submit" value="검색">
	</form>
	<c:set var="locCount" value="0"/>
	<c:forEach var="loc" items="${alist }">
		<input type="hidden" id="locTitle${locCount }" value="${loc.title }">
		<input type="hidden" id="locPosition${locCount }" value="${loc.position }">
		<c:set var="locCount" value="${locCount+1 }"/>
	</c:forEach>
	<p id="result"></p>
	<input type="hidden" name="buyerLocation" id="buyerLocation">
</body>
</html>