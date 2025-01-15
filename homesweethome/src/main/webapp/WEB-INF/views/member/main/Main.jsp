<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/iframe.css">
<body>
	<!-- 상단 -->
	<!-- jQuery 추가 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Handlebars.js 추가 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.8/handlebars.min.js"></script>
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

					<c:forEach items="${menuList}" var="menu">
						<li><a href="javascript:void(0);"
							onclick="goPage('${menu.murl}', '${menu.mcode}'); Sub_go('${menu.mcode}');">
								${menu.mname} </a></li>
					</c:forEach>
					<!-- 메인메뉴 -->
					<ul class="menu_main">
						<li><a
							href="javascript:goPage('<%=request.getContextPath() %>${menu.murl }','${menu.mcode }');Sub_go('${menu.mcode }');"
							class="nav-link">센터 소개</a></li>
						<li><a
							href="javascript:goPage('/member/animal');Sub_go('${menu.mcode }');">보호동물</a></li>
						<li><a
							href="javascript:goPage('/member/adoption');Sub_go('${menu.mcode }');">입양절차</a></li>
						<li><a
							href="javascript:goPage('/member/board');Sub_go('${menu.mcode }');">게시판</a></li>
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
				
			</div>
			<!-- sidebar -->
			<!-- 본문 iframe -->
			<div class="content-wrapper">
				<iframe name="iframe" frameborder="0"
					style="width: 120%; height: 85vh;"></iframe>
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

		<p>{{mname}}</p>
	</a>
</li>
{{/each}}
</script>

<script>

function goPage(url, mcode) {
	var renewURL = location.href;
	
	if (mcode != 'M000000'){
		renewURL += "?mcode="+mcode;
	}
	
	history.pushState(mcode, renewURL);
	
	 $('iframe[name="iframe"]').attr("src",url);	
}

var sub_func= Handlebars.compile($("#subMenu-list-template").html());

function Sub_go(mcode){
	//alert(mcode);
	if(mcode=="M000000") {
		$('.subMenuList').html("");
		return;
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/menu/subMenu?mcode="+mcode,
		method:"get",
		success:function(data){
			$('.subMenuList').html(sub_func(data));
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});
}
</script>

<c:if test="${not empty menu }">
	<script>
	goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
	Sub_go('${menu.mcode}'.substring(0,3)+"0000");
	
	</script>
</c:if>

</body>

