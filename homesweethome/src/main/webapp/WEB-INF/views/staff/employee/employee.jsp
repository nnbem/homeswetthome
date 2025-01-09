<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/employee.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>인계관리</h2>
			<br />
			<hr />
			<br />
			<div class="search-bar">
			<button type="submit" class="regi_button">등　록</button>
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="all">전체</option>
					</select> <select class="sort-select">
						<option value="">전체</option>
						<option value="specific">특정</option>
					</select>
				
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button">검　색</button>
			</div>

			<table class="member-table">
				<thead>
					<tr>
						<th>인계번호</th>
						<th>발견장소</th>
						<th>성별</th>
						<th>몸무게</th>
						<th>보호동물등록번호</th>
						<th>입소예정일</th>
						<th>승인여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="/mdetail"
							style="text-decoration: none; color: inherit;">nana</a></td>
						<td>2024-12-01</td>
						<td>2024-12-29</td>
						<td>2024-12-29</td>
						<td>2024-12-29</td>
						<td>2024-12-29</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

