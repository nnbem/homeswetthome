<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
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
			<h2>1:1 문의</h2>
			<hr/>
			
			<table class="detail-table">
				<thead>
					<tr>
						<th>동물 입양 방법에 대해서 문의드립니다.
						<div class="st-button-container" style="width: 66.5%;">
							<button type="submit" class="button" onclick="complete_go();">완료</button>
						</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>문의날짜: 2024-12-29</td>
					</tr>
					<tr>
						<td style="padding:10%; font-size: 20px;">
						이번에 입양하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되서요,<br/>
						이유를 알 수 있을까요?</td>
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
		function complete_go() {
				alert("문의 완료 페이지로 이동합니다.");
				location.href="<%=request.getContextPath()%>/staff/board/inquiry/complete";
		}
		function back_list() {
			location.href="<%=request.getContextPath()%>/staff/board/inquiry";
		}
	</script>