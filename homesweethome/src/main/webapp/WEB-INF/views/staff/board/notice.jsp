<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
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
			<h2>공지사항</h2>
			<hr />
			<div class="search-bar">
				<div class="left">
					<button id="regist" class="regist-btn" onclick="regist_go();">등   록</button>
				</div>
				<div class="right">
					<button class="refresh-button">⟳&nbsp;&nbsp;</button>
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="all">전체</option>
					</select> <select class="sort-select">
						<option value="">전체</option>
						<option value="specific">특정</option>
					</select> <input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
					<button class="search-button">검색</button>
				</div>
			</div>
			<table class="member-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>등록날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
					<tr>
						<td>공지</td>
						<td><a href="/staff/board/notice/detail"
							style="text-decoration: none; color: inherit;">운영시간 변경안내(예정)</a></td>
						<td>2024-12-28</td>
						<td>234</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script>
		function regist_go() {
			document.getElementBtId("regist").addEventListener("clcik",
		function() {
				window.location.href = "/staff/board/notice/regist";
			});
		}
	</script>