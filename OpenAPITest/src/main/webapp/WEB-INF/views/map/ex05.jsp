<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

	#map{ 
		width: 770px; 
		height: 400px;
	}
</style>
</head>
<body>
	<!---->

	<h1>지도 <small>마커 추가하기</small> </h1>

	<div>
	<div id="map"></div>
	</div>
	
	<form method="POST" action="/api/add.do">
	<div>
		<input type="submit" value="마커 추가하기" />
	</div>
	<input type="hidden" name="lat" />
	<input type="hidden" name="lng" />
	</form>
	

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d02aa54170aa9fe2b80ece1ca4433ae2"></script>
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng( 37.49930942404527,127.03331872237), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	let m1 = null;
	
	//마커 추가하기
	kakao.maps.event.addListener(map,'click', function(evt){
		
		if(m1!=null) {
			m1.setMap(null);
		}
		
		m1 = new kakao.maps.Marker({
			position: evt.latLng
		});
		
		m1.setMap(map);
		
		$('input[name=lat]').val(evt.latLng.getLat());
		$('input[name=lng]').val(evt.latLng.getLng());
	});
	
	
	</script>
</body>
</html>