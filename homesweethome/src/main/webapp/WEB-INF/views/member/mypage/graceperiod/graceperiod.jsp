<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/application.css">
</head>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>유예신청</b>
		</h1>
	</div>
	<div class="info-box">
		<img
			src="<%=request.getContextPath()%>/resources/image//adoption/caution_1.png"
			alt="주의"> 유예신청은 입양완료 후 6개월안에 신청할 수 있고 1년에 1번만 신청 하실 수 있습니다.
	</div>
	<div class="content-body">

		<div class="inner_container">
			<div class="circle-image">
				<img
					src="<%=request.getContextPath()%>/resources/image//adoption/check_2.png"
					alt="주의">
			</div>
			<div class="info-text">
				<h3>유예신청은 입양 후 보호동물과 함께 생활하기 어렵다고 판단될 경우 신청할 수 있습니다.</h3>
				<h6>※유예 신청 승인 시 아래 사항을 반드시 준수해 주시기 바랍니다.</h6>
				<ul>
					<li><img
						src="<%=request.getContextPath()%>/resources/image//adoption/check_3.png"
						alt="check"> 센터 방문 일정 확인
					<li class="highlight"><img
						src="<%=request.getContextPath()%>/resources/image//adoption/caution_2.png"
						alt="check"> 유예 신청이 승인되면 센터방문예약을 통해 일정을 잡고 지정된 날짜에 보호동물을 직접
						센터로 데려와야하며 이를 지키지 않을 경우 추가 입양시 영향이 있습니다.</li>
					<li><img
						src="<%=request.getContextPath()%>/resources/image//adoption/check_3.png"
						alt="check"> 반복적인 유예 신청 시 제한</li>
					<li><img
						src="<%=request.getContextPath()%>/resources/image//adoption/check_3.png"
						alt="check"> 입양 신청은 환경, 준비 상태, 책임감 여부를 검토합니다. 준비가 부족하다고 판단될
						경우 반려될 수 있습니다.
					<li class="highlight"><img
						src="<%=request.getContextPath()%>/resources/image//adoption/caution_2.png"
						alt="check"> 대리인 입양 및 미성년자는 입양이 불가합니다.</li>
					<li class="highlight"><img
						src="<%=request.getContextPath()%>/resources/image//adoption/caution_2.png"
						alt="check"> 입양예약 후 미방문 및 취소 누적시 추후 입양시 영향이 있습니다.</li>
				</ul>
			</div>
		</div>
		<div class="button-container">
			<a href="/member/adoption/application/form" class="action-button">신청하기
				→</a>
		</div>