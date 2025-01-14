<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/iframe.css">
<body>
<!-- 상단 -->
<header>
	<div class=header_inner>
		<!-- 상단 바 -->
		<div class="header_top">
			<div class="top_bar">
				<a href="#">로그인</a> <a href="#">회원가입</a> <a href="#">우편함</a> <a
					href="/member/mypage/graceperiod">마이페이지</a>
			</div>
		</div>

		<div class="menu_inner">
			<div class="header_menu">
				<!-- 로고 -->
				<div class="logo">
					<img src="<%=request.getContextPath()%>/resources/image/logo.png"
						alt="Logo"> <a href="/member/main">HomeSweetHome</a>
				</div>

				<!-- 메인메뉴 -->
				<ul class="menu_main">
					<li><a href="javascript:goPage('/member/intro');Sub_go(mCode);">센터 소개</a></li>
					<li><a href="javascript:goPage('/member/animal');">보호동물</a></li>
					<li><a href="javascript:goPage('/member/adoption');">입양절차</a></li>
					<li><a href="javascript:goPage('/member/board');">게시판</a></li>
					<li><a href="#">☰</a></li>
				</ul>
			</div>
			<!-- header_menu -->
		</div>
		<!-- menu_inner -->
	</div>
	<!-- header_inner -->
</header>
<!-- 본문 -->
<section>
	<div class="inner_cent">
		<!-- Sidebar -->
		<div class="sidebar">
			<h1>
				<b>입양절차</b>
			</h1>
			<div class="sideMenu">
				<ul class="sideMenu lists">
					<li class="sideMenu">
						<ul class="sideMenu list">
							<li class="list"><a href="javascript:goPage('/member/adoption');">입양절차</a></li>
							<li class="list"><a href="javascript:goPage('/member/adoption/education');">온라인교육</a>
							</li>
							<li class="list"><a href="javascript:goPage('/member/adoption/suit');">적합성점검표</a>
							</li>
							<li class="list"><a href="javascript:goPage('/member/adoption/reserve');">센터방문예약</a>
							</li>
							<li class="list"><a href="javascript:goPage('/member/adoption/application');">입양신청</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div> <!-- sidebar -->
		<!-- 본문 iframe -->
		<div class="content-wrapper">
			<iframe name="iframe" frameborder="0" style="width: 120%; height: 85vh;"></iframe>
		</div>
	</div>
</section>

<!-- 하단 -->
<footer class="footer">
	<div class="footer-top">
		<a href="#">개인정보처리방침</a> | <a href="#">영상정보처리기기 운영·관리방침</a> | <a
			href="#">누리집개선의견</a> | <a href="#">오시는 길</a>
	</div>
	<div class="footer-middle">
		<p>(34001) 대전광역시 유성구 금고로 7(금고동) 대전반려동물공원</p>
		<p>(34001) 대전광역시 유성구 금남구청로 123(금남로) HomeSweetHome / 대표전화 (042)
			270-7239 / 팩스번호 (042) 825-1330</p>
	</div>
	<div class="footer-bottom">
		<p>COPYRIGHT 2023 (c) DAEJEON METROPOLITAN CITY. ALL RIGHTS
			RESERVED.</p>
	</div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.8/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="subMenu-list-template" >
{{#each .}}		
<li class="nav-item subMenu" >
	<a href="javascript:goPage('<%=request.getContextPath() %>{{murl}}','{{mcode }}');"	class="nav-link">
		<i class="{{micon}}"></i>
		<p>{{mname}}</p>
	</a>
</li>
{{/each}}
</script>
<script>
function goPage(url){
	//alert(url);
	document.querySelector("iframe[name='iframe']").src=url;
}
function Sub_go(mCode){
	alert(mcode);
}
</script>


<script>

</script>
</body>

