<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/board.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">

<style>
.cancle {
	font-family: NanumSquare_ac;
	cursor: pointer;
}

.cancle:hover {
	font-family: NanumSquare_ac ExtraBold;
}
</style>

</head>
<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>게시판</b>
		</h1>
	</div>
	<div class="content-body">
		<div class="type-top">
			<div class="type-card">
				<ul>
					<li class="type-title"><b>최신글</b></li>
					<li class="type-content">1. 입양10년차 ...</li>
					<li class="type-content">2. 입양10년차 ...</li>
					<li class="type-content">3. 입양10년차 ...</li>
					<li class="type-content">4. 입양10년차 ...</li>
				</ul>
				<div class="type-link">
					<div class="cancle" onclick="review_go();">
						<a><b>입양후기 게시판 <br/>바로가기　→</b></a>
					</div>
					<i>생생한 입양후기 보러가기</i>
				</div>
			</div>
			<div class="type-card">
				<ul>
					<li class="type-title"><b>최신글</b></li>
					<li class="type-content">1. 냥냔펀치는 ...</li>
					<li class="type-content">2. 우리집 댕댕이 ...</li>
					<li class="type-content">3. 이정도면 ...</li>
					<li class="type-content">4. 네모네모빔 ...</li>
				</ul>
					<div class="type-link">
					<div class="cancle" onclick="perfomance_go();">
						<a><b>뽐내기 게시판 <br/>바로가기　→</b></a>
					</div>
					<i>내자식 꾸미기 뽐내러가기</i>
				</div>
			</div>
		</div>
		<div class="type-bottom">
			<div class="type-card">
				<ul>
					<li class="type-title"><b>최신글</b></li>
					<li class="type-content">1. 대전 점선면 ...</li>
					<li class="type-content">2. 대전 하늘...</li>
					<li class="type-content">3. 요즘 세상이 ...</li>
					<li class="type-content">4. 제가 자주가는 ...</li>
				</ul>
				<div class="type-link">
					<div class="cancle" onclick="sharing_go();">
						<a><b>정보공유 게시판 <br/>바로가기　→</b></a>
					</div>
					<i>다양한 정보 공유하러가기</i>
				</div>
			</div>
			<div class="type-card" style="background-color:#d9d9d9;">
				
				</div>
			</div>
		</div>
<br/>
<br/>
<br/>
<br/>
<br/>
		
<script>
	function review_go(){
		 location.href="<%=request.getContextPath()%>/member/board/review";
	}
	function perfomance_go(){
		location.href="<%=request.getContextPath()%>/member/board/perfomance";
	}
	
	function sharing_go(){
		   location.href="<%=request.getContextPath()%>/member/board/sharing";
		}
</script>