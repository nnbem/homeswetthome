<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/receive.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
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
			<button type="submit" class="regi_button" onclick="open_regist();">등　록</button>
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
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>인계번호</th>
						<th>발견장소</th>
						<th>성별</th>
						<th>몸무게</th>
						<th>보호동물등록번호</th>
						<th>입소예정일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>동구 가양동</td>
						<td>암컷</td>
						<td>7kg</td>
						<td>410060426700001</td>
						<td>2025년 1월 9일</td>
					</tr>
				</tbody>
				
				
				
			</table>
		</div> <!-- search-container -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
function open_regist() {
    // 이동할 페이지 URL 설정
    window.location.href = "/staff/receive/regist"; // 여기에 이동할 페이지 경로를 넣으세요.
}
</script>

    
    
    
    