<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/adoption.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper2">
	<div class="content">
		<div class="search-container">
			<h2>입양신청관리</h2>
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
					</select>
				
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button">검　색</button>
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>입양번호</th>
						<th>제목</th>
						<th>신청 날짜</th>
						<th>아이디</th>
						<th>보호동물등록번호</th>
						<th>방문예정일</th>
						<th>신청여부</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>입양신청합니다.</td>
						<td>2025년01월09일</td>
						<td>asdf</td>
						<td>410060426700001</td>
						<td>2025년01월013일</td>
						<td>
						<select class="sort-select">
						<option value="">대기</option>
						<option value="specific">승인</option>
						<option value="specific">반려</option>
					</select>
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>입양신청합니다.</td>
						<td>2025년01월09일</td>
						<td>asdf</td>
						<td>410060426700001</td>
						<td>2025년01월013일</td>
						<td>
						<select class="sort-select">
						<option value="">대기</option>
						<option value="specific">승인</option>
						<option value="specific">반려</option>
					</select>
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>입양신청합니다.</td>
						<td>2025년01월09일</td>
						<td>asdf</td>
						<td>410060426700001</td>
						<td>2025년01월013일</td>
						<td>
						<select class="sort-select">
						<option value="">대기</option>
						<option value="specific">승인</option>
						<option value="specific">반려</option>
					</select>
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>입양신청합니다.</td>
						<td>2025년01월09일</td>
						<td>asdf</td>
						<td>410060426700001</td>
						<td>2025년01월013일</td>
						<td>
						<select class="sort-select">
						<option value="">대기</option>
						<option value="specific">승인</option>
						<option value="specific">반려</option>
					</select>
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>22000101</td>
						<td>입양신청합니다.</td>
						<td>2025년01월09일</td>
						<td>asdf</td>
						<td>410060426700001</td>
						<td>2025년01월013일</td>
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

<script>
function open_regist() {
    // 이동할 페이지 URL 설정
    window.location.href = "/staff/receive/regist"; // 여기에 이동할 페이지 경로를 넣으세요.
}
</script>
    
    