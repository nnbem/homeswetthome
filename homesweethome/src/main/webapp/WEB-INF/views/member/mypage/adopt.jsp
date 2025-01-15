<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/table.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">
<style>

img.detail_image {
	width: 50%;
	object-fit: cover;
	cursor: pointer;
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
			<b>입양동물정보</b>
		</h1>
	</div>
	<div class="content-body">
		<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
				<tr>
					<td class="image-cell" rowspan="5"><img
						src="<%=request.getContextPath()%>/resources/image/cat_2.png"
						alt="동물 이미지" class="detail_image" onclick="openAnimal();"></td>
					
					<th>보호동물ID</th>
					<td>41006042600036</td>
					<th>종류</th>
					<td>고양이</td>
					
				</tr>
				<tr>
					<th>이름</th>
					<td>도도</td>
					<th>생년월일</th>
					<td>2022-10-10</td>
				</tr>
				<tr>
					<th>품종</th>
					<td>코리안숏헤어</td>
					<th>모색</th>
					<td>노랑</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>수컷</td>
					<th>중성화 여부</th>
					<td>○</td>
				</tr>
				<tr>
					<th>입양상태</th>
					<td>입양완료</td>
					<th>일양날짜</th>
					<td>2024-12-20</td>
				</tr>
				<tr>
					<th colspan="2">예방접종</th>
					<td colspan="3">종합백신, 광견병 접종완료</td>
				</tr>
			</table>
		</div>
	</div>

	<script>
		function openAnimal() {
			window.open('/member/mypage/adopt/open_animal', '동물상세정보',
					'width=800, height=500, resizable=yes, scrollbars=yes');
		}
	</script>