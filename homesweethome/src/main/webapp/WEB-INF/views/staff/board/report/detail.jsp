<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>

<div class="innerWrapper">
	<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>게시판통합관리</b></h1>
			<div class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">
								<a href="/staff/board/notice">
									<b>공지사항</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/report">
									<b>신고글</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/review">
									<b>연락필요 사용자</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/inquiry">
									<b>1:1 문의</b>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	<!-- Main Content -->
	<div class="content">
		<div class="search-container">
			<h2>신고글</h2>
			<hr/>
			
			<table class="detail-table">
				<thead>
					<tr>
						<th>✨ 당신의 꿈을 현실로! ✨
						<div class="st-button-container" style="width: 73%;">
							<button type="submit" class="button" onclick="delete_go();">삭제</button>
						</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>신고된날짜: 2024-12-28</td>
					</tr>
					<tr>
						<td style="padding:10%; font-size: 20px;">🔥새해, 새로운 시작! 이제 리치뷰와 함께 목표를 향해 나아가세요.🔥<br/><br/>
						● 최고의 품질을 자랑하는 리치뷰 스마트미러, 효과적인 사용으로 
						더 빠르게 원하는 결과를 얻을 수 있습니다.<br/><br/>

						● 친환경적인 재료와 혁신적인 기술로 제작된 제품, 믿고 사용할 수
						있습니다. <br/><br/>
						
						● 특별 할인 이벤트, 지금 구매하면 30% 할인 혜택까지!<br/><br/>
						
						👀더 이상 망설이지 마세요. 지금 바로 
							<span style="color: blue;">https://www.richiview.com</span>
						을 통해 원하는 제품을 만나보세요. <br/><br/>
						
						당신의 꿈, 리치뷰가 함께합니다.</td>
					</tr>
				</tbody>
			</table>
			<br />
			<div class="st-list-button-container">
				<button type="button" class="button" onclick="back_list();">목록</button>
			</div>
		</div>
	</div>
		<script>
		function delete_go() {
				alert("삭제완료 페이지로 이동합니다.");
				location.href="<%=request.getContextPath()%>/staff/board/report/complete";
		}
		function back_list() {
			location.href="<%=request.getContextPath()%>/staff/board/report";
		}
	</script>