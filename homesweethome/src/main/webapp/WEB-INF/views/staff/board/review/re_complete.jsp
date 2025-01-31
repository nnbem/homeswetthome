<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<!-- Main Content -->
	<div class="content">
			<h2>신고 완료 페이지</h2>
			<hr/>
			<div class="search-bar">
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

			<table class="member-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>신고된날짜</th>
						<th>삭제완료날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					    <td>1</td>
					    <td>✨ 당신의 꿈을 현실로! ✨</td>
					    <td>2024-12-29</td>
					    <td>2025-01-09</td>
					</tr>
				</tbody>
			</table>
		</div>