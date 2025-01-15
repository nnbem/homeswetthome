<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
<style>
.image-img {
	background-image:
		url('<%=request.getContextPath()%>/resources/image/nana.jpg');
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
	height: 150px;
}

input.form-control {
	width: 20%;
	padding-left: 10px;
	margin-left: 10px;
	font-family: NanumSquare_ac;
}

.interest-container {
    margin: 10px; /* 위아래 간격 */
    width: 94%;
}

.cancle {
	text-align: right;
	font-family: NanumSquare_ac;
	cursor: pointer;
}

.cancle:hover {
	font-family: NanumSquare_ac ExtraBold;
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
			<b>회원정보 수정</b>
		</h1>
	</div>
	<div class="content-body">
		<div class="verification-box" style="border: none;">
			<p style="text-align: center;"></p>
			<span style="color: red;">*</span> 표시는 필수입니다.
			<div class="cancle" onclick="deactivation();">탈퇴하러가기→</div>
			<br/>
			<div class="image-preview">
				<div class="image-img"></div>
			</div>
			<br/>
			<div class="form-group">
				<label>&nbsp;&nbsp;아　　이　　디</label>&nbsp;
				<input type="id" class="form-control" value="">
			</div>
			<div class="form-group">
				<label><span style="color: red;">*</span> 비밀번호 &nbsp;수정</label>&nbsp;&nbsp;
				<input type="password" class="form-control" value="">
			</div>
			<div class="form-group">
				<label>&nbsp;&nbsp;이　　　　　름</label>&nbsp;
				<input type="name" class="form-control" value="">
			</div>
			<div class="form-group">
				<label><span style="color: red;">*</span> 전　화　번　호</label>
				<input type="phone" class="form-control" placeholder="010부터 - 포함으로 입력하세요" value="">
			</div>
			<div class="form-group">
				<label>&nbsp;&nbsp;생　년　월　일</label>&nbsp;
				<input type="text" class="form-control">
				</div>
			<div class="login-form" style="text-align: left;">
					<label style="font-family: NanumSquare_ac; font-size:14px;"><span style="color: red;">*</span>
					&nbsp;&nbsp;이　　미　　지
					　<span style="font-family: NanumSquare_ac; font-size:14px;">※이미지는 jpg형식과 1MB만 가능합니다.</span></label>
					<br/>
					<input type="file" name="file" style="font-family: NanumSquare_ac;">
				</div>
				<br/>
			<div class="form-group">
				<label><span style="color: red;">*</span>&nbsp;&nbsp;주　　　　　소</label>
				<input type="text" class="form-control" placeholder="예) 대전광역시 중구 선화동" value="">
			</div>
			<div class="form-group">
				<label><span style="color: red;">*</span>&nbsp;&nbsp;이　　메　　일</label>
				<input type="email" class="form-control" placeholder="예) example@naver.com" value="">
			</div>
			<div class="login-form interest-container">
					<label for="interest" style="font-family: NanumSquare_ac;"> ※ 관심 있는 동물</label>
						<p style="font-size:14px;">- 내가 선택한 관심있는 동물을 추천받을 수 있습니다.　(복수 선택 가능)</p><br/>
					<div class="interest-options" style="font-family: NanumSquare_ac;" >
						<input type="checkbox" value="dog"> 강아지　
						<input type="checkbox" value="cat"> 고양이　
						<input type="checkbox" value="other"> 기타동물
					</div>
				</div>
			<br />
			<div class="button-container">
				<div><button type="submit" class="button" style="width:480px;" onclick="save();">저장</button></div>				
			</div>
		</div>
	</div>
</div>

<script>
function deactivation() {
	window.open('/member/mypage/deactivation/open_cancel', '탈퇴폼',
			'width=800, height=600, resizable=yes, scrollbars=yes');
}

function save() {
	alert("정보 수정이 완료되었습니다.");
}
</script>