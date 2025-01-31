<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a11b501130949cea9d83fe479212d4d"></script>
</head>

<!-- 본문 -->
<section>

	<div class="content-wrapper">
		<div class="content-title">
			<h1>
				<b>오시는 길</b>
			</h1>
		</div>
		<div class="content-body">
			<div id="map" style="width:500px;height:400px;"></div>
			
		</div>
		<br />

	</div>
</section>



<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(36.4588151, 127.383038), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>