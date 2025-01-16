<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/adoption.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>방문예약신청관리</h2>
			<br />
			<hr />
			<br /> 
			<div class="search-bar">
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="all">10개</option>
						<option value="all">20개</option>
						<option value="all">30개</option>
					</select>
					<select class="sort-select">
						<option value="">전체</option>
						<option value="specific">특정</option>
						<option value="specific">사원번호</option>
					</select>
				
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button">검　색</button>
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>방문예약번호</th>
						<th>신청 날짜</th>
						<th>내용</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>방문예정일</th>
						<th>승인여부</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>04040404</td>
						<td>2024년01월07일</td>
						<td>가가 보러 가고 싶어요..</td>
						<td>asdf</td>
						<td>010-1234-1234</td>
						<td>2024년01월13일</td>
						<td>
						<select class="sort-select">
						<option value="">대기</option>
						<option value="specific">승인</option>
						<option value="specific">반려</option>
					</select>
						</td>
					</tr>
				</tbody>
			</table>
		</div> <!-- search-container -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

    
    
    
    