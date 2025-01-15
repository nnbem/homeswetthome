<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<head>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<div class="innerWrapper">
	<!-- Sidebar -->
	<div class="sidebar">
		<h1>
			<b>회원관리</b>
		</h1>
		<div class="sideMenu">
			<ul class="sideMenu list">
				<li class="list"><a href="/staff/member/list"> <b>가입회원</b>
				</a></li>
				<li class="list"><a href="/staff/member/deactivation"> <b>탈퇴회원</b>
				</a></li>
			</ul>

		</div>
	</div>

	<!-- Main Content -->
	<div class="content">
		<h2>탈퇴회원</h2>
		<hr />
		<div class="search-bar" style="justify-content: flex-end;">
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
					<th>회원ID</th>
					<th>가입일자</th>
					<th>입양날짜</th>
					<th>탈퇴날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="/staff/member/list/deactivation_detail">hana</a></td>
					<td>2024-12-05</td>
					<td>2024-12-20</td>
					<td>2025-01-02</td>
				</tr>
			</tbody>
		</table>
	</div>