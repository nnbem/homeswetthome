<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/common.css">

<style>
/* 이미지 배경 */
.image-cat {
	width: 100%;
	height: 200px;
	background-image:
		url('<%=request.getContextPath()%>/resources/image/cat.jpg');
	background-size: cover;
	background-position: center;
	position: relative;
}

.image-dog {
	width: 100%;
	height: 200px;
	background-image:
		url('<%=request.getContextPath()%>/resources/image/dog_10.png');
	background-size: cover;
	background-position: center;
	position: relative;
}

.category {
        margin: 30px 0;
        font-weight: bold;
        text-align: left;
        width: 87%;
        margin: 10px auto;
}

.card-list {
        flex: 0 0 200px;
        margin: 10px;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 5px;
}

</style>	
	
</head>

<!-- 본문 -->
   <section>
      <div class="inner_cent">
      		<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>마이페이지</b></h1>
			<div class="sideMenu">
				<ul class="sideMenu lists">
					<li class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">	
								<a href="/member/mypage/deactivation/modify">회원정보수정</a>
							</li>
							<li class="list">
								<a href="/member/mypage/adopt">입양동물정보</a>
							</li>
							<li class="list">
								<a href="/member/mypage/mark/list">찜목록</a>
							</li>
							<li class="list">
								<a href="#">작성글 조회</a>
							</li>
							<li class="list">
								<a href="#">예약/신청확인</a>
							</li>
							<li class="list">
								<a href="#">유예신청</a>
							</li>
							<li class="list">
								<a href="#">1:1 문의</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>찜목록</b>
		</h1>
	</div>
	
	<!-- 공고중 -->
    <div class="category">공고 중</div>
	<!-- 카드 컨테이너 -->
	<div class="card-container">
		<!-- 여러 카드 -->
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<!-- 치료중 -->
    <div class="category">치료 중</div>
	<!-- 카드 컨테이너 -->
	<div class="card-container">
		<!-- 여러 카드 -->
		<div class="card-list">
			<div class="image-dog">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>믹스</strong> | 수컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-dog">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>믹스</strong> | 수컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-dog">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>믹스</strong> | 수컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<!-- 입양가능 -->
    <div class="category">입양가능</div>
	<!-- 카드 컨테이너 -->
	<div class="card-container">
		<!-- 여러 카드 -->
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p class="mark">
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
	</div>

	<!-- JavaScript -->
	<script>
	
	function moveSlide(wrapperId, direction) {
        const wrapper = document.getElementById(wrapperId);
        const cardWidth = 220; // 카드 하나의 너비
        const totalCards = wrapper.querySelectorAll(".card-list").length;
        const containerWidth = wrapper.parentNode.clientWidth;

        let currentPosition = parseInt(wrapper.getAttribute("data-position") || "0", 10);
        const maxPosition = -(totalCards * cardWidth - containerWidth);

        currentPosition += direction * cardWidth;
        if (currentPosition > 0) currentPosition = 0;
        if (currentPosition < maxPosition) currentPosition = maxPosition;

        wrapper.style.transform = `translateX(${currentPosition}px)`;
        wrapper.setAttribute("data-position", currentPosition);
    }
	
        // 모든 하트 버튼에 클릭 이벤트 추가
        const heartButtons = document.querySelectorAll(".heart-btn");
        heartButtons.forEach(button => {
            button.addEventListener("click", function () {
                button.classList.toggle("active");
            });
        });
    </script>