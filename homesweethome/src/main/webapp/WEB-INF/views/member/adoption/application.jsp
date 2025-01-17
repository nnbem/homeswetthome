<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/application.css">
</head>

<div class="content-title">
	<h1>
		<b>입양신청</b>
	</h1>
</div>
<div class="info-box">
	<img
		src="<%=request.getContextPath()%>/resources/image//adoption/caution_1.png"
		alt="주의"> 이전 절차를 수행하신 분들만 신청이 가능하고 수행하지 않고 신청 할 경우 반려됩니다.
</div>
<div class="content-body">

	<div class="inner_container">
		<div class="circle-image">
			<img
				src="<%=request.getContextPath()%>/resources/image//adoption/check_2.png"
				alt="주의">
		</div>
		<div class="info-text">
			<ul>
				<li><img
					src="<%=request.getContextPath()%>/resources/image//adoption/check_3.png"
					alt="check"> 반려동물은 소중한 생명입니다. 입양은 그들의 삶을 끝까지 책임지는 약속이니 신중히
					고민해 주세요.</li>
				<li><img
					src="<%=request.getContextPath()%>/resources/image//adoption/check_3.png"
					alt="check"> 입양 후에는 건강 관리, 훈련, 생활비 등 책임이 따릅니다. 예상치 못한 상황에도
					끝까지 함께할 준비가 되었는지 확인해 주세요.</li>
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
</div>