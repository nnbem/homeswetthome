<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/member_style/iframe.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/member_style/common.css">
<!-- jQuery 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
</head>	
	
<body>	
	<header>
		<div class=header_inner>
			<!-- 상단 바 -->
			<div class="header_top">
				<div class="top_bar">
					<a href="/member/main/guest">로그아웃</a>
					<%-- <c:forEach var="mypage" items="${mypageMenuList }">
							<a href="javascript:goMypage('<%=request.getContextPath() %>${mypage.turl }', '${mypage.tcode }'); SubMypageMenu_go('${mypage.tcode }');"
							class="mypagenav-link">${mypage.tname }
							</a>
					</c:forEach> --%>
					<a href="/staff/main">관리자</a>
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
					<c:forEach var="menu" items="${menuList }">
						<li>
							<a href="javascript:goPage('<%=request.getContextPath() %>${menu.murl }','${menu.mcode }');Sub_go('${menu.mcode }');"
							class="nav-link">${menu.mname }
							</a>
						</li>
					</c:forEach>
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
			<div class="sidebar subMenuList">
				
			</div>
			<!-- sidebar -->
			<!-- 본문 iframe -->
			<div class="content-wrapper">
				<iframe name="iframe" frameborder="0" style=" height: 85vh;"></iframe>
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

<li class="list">
	
	<a href="javascript:goPage('<%=request.getContextPath() %>{{murl}}','{{mcode }}');"	class="nav-link">
		{{mname}}
	</a>
</li>

{{/each}}
</script>
<script type="text/x-handlebars-template" id="subMypageMenu-list-template">
    {{#each .}}
    <li class="list">
        <a href="javascript:goPage('{{turl}}', '{{tcode}}');" class="mypagenav-link">
            {{tname}}
        </a>
    </li>
    {{/each}}
</script>


<script>
function goMypage(url, tcode){
	var renewURL = location.href;

	if(tcode != 'T000000'){
		renewURL += "?tcode="+tcode;
	}
	history.pushState(tcode, renewURL);
	$('iframe[name="iframe"]').attr("src",url);
}

var subMypageMenu_func = Handlebars.compile($("#subMypageMenu-list-template").html());

function SubMypageMenu_go(tcode){
	//alert(tcode);
	$.ajax({
    url: "<%=request.getContextPath()%>/member/subMypageMenu?tcode=" + tcode,
    method: "get",
    success: function(data) {
        var renderedHTML = subMypageMenu_func(data); // Handlebars로 렌더링
        $('.subMenuList').html(renderedHTML); // HTML 삽입
        console.log("삽입된 서브메뉴:", renderedHTML); // 확인용 로그
    },
    error: function(error) {
        console.error("AJAX 요청 실패:", error);
    }
});
	
	
	if(tcode=="T000000") {
		$('.subMypageMenuList').html("");
		return;
	}
}
</script>
<c:if test="${not empty mypgage }">
	<script>
	goMypage('<%=request.getContextPath()%>${mypage.turl}','${mypage.tcode}');
	SubMypageMenu_go('${mypage.tcode}'.substring(0,3)+"0000");
	
	</script>
</c:if>





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
	
	$.ajax({
		url:"<%=request.getContextPath()%>/member/subMenu?mcode="+mcode,
		method:"get",
		success:function(data){
			$('.subMenuList').html(sub_func(data));
			console.log(sub_func(data));
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});
	if(mcode=="M000000") {
		$('.subMenuList').html("");
		return;
	}
}
</script>

<c:if test="${not empty menu }">
	<script>
	goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
	Sub_go('${menu.mcode}'.substring(0,3)+"0000");
	
	</script>
</c:if>
</body>

