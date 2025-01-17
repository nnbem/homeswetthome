<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/board.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
</head>
	<div class="content-title">	
		<h1><b>1:1문의</b></h1>
	</div>
		<div class="search-bar" style="width: 100%; justify-content: space-between; ">
			<button id="regist" class="search-button" style="margin: ">문의 하기</button>
			<div class="right" >
				<button class="refresh-button" >⟳&nbsp;&nbsp;</button>
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
						<th>제목</th>
						<th>내용</th>
						<th>작성일</th>
						<th>답변일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>동물 입양 방법에 관하여 문의드립니다.</td>
						<td>이번에 입양을 하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되어서요, 이유를 알수 있을까요?</td>
						<td>2024-03-29</td>
						<td>2024-03-30</td>
					</tr>
					<tr>
						<td>동물 입양 방법에 관하여 문의드립니다.</td>
						<td>이번에 입양을 하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되어서요, 이유를 알수 있을까요?</td>
						<td>2024-03-29</td>
						<td>2024-03-30</td>
					</tr>
					<tr>
						<td>동물 입양 방법에 관하여 문의드립니다.</td>
						<td>이번에 입양을 하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되어서요, 이유를 알수 있을까요?</td>
						<td>2024-03-29</td>
						<td>2024-03-30</td>
					</tr>
					<tr>
						<td>동물 입양 방법에 관하여 문의드립니다.</td>
						<td>이번에 입양을 하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되어서요, 이유를 알수 있을까요?</td>
						<td>2024-03-29</td>
						<td>2024-03-30</td>
					</tr>
				</tbody>
			</table>