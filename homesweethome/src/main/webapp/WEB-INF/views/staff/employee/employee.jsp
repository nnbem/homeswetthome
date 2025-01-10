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
			<h2>사원관리</h2>
			<br />
			<hr />
			<br /> 
			<div class="search-bar">
			<button type="submit" class="regi_button" onclick="open_regist();">등　록</button>
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="all">10개</option>
						<option value="all">20개</option>
						<option value="all">30개</option>
					</select> <select class="sort-select">
						<option value="">부서</option>
						<option value="specific" style="font-size:14px;">일반행정</option>
						<option value="specific">수의사</option>
						<option value="specific">동물보호</option>
						<option value="specific">동물입양</option>
					</select>
				
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button">검　색</button>
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>사원번호</th>
						<th>이름</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>부서</th>
						<th>입사일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>st230703</td>
						<td>최예지</td>
						<td>대전광역시 성동구 서초대 71-16</td>
						<td>010-9121-5980</td>
						<td>동물입양</td>
						<td>2023-07-03</td>
					</tr>
				</tbody>
				
				
				
			</table>
		</div> <!-- search-container -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
	function open_regist() {
		window.open('/staff/employee/open_regist','글등록',700,800);
	}
</script>

    
    
    
    