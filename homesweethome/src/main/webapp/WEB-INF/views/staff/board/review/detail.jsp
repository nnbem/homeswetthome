<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<style>
.staff-table {
	width: 100%;
	border-collapse: collapse;
	margin: 0;
}

.staff-table th, .staff-table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
    font-family: NanumSquare_ac;
	font-size: 14px;
}

.staff-table th {
    background-color: #f4f4f4;
    font-weight: bold;
}

.staff-table td {
    color: #666;
}

.staff-table td, .staff-table th{
	vertical-align: middle;
}

td.image-cell {
	width: 30%;
}

img.review_image {
	width: 50%;
	object-fit: cover;
	cursor: pointer;
}
</style>

</head>

<body>

<div class="innerWrapper">

<!-- Main Content -->
<div class="content">
	<div class="search-container">
		<h2>연락필요 사용자</h2>
		<hr/>
		
		<table class="detail-table">
			<thead>
				<tr>
					<th>vemvem
					<div class="st-button-container" style="width: 87%;">
						<button type="button" class="button" onclick="complete_go();">완료</button>
					</div>
					</th>
				</tr>
			</thead>
			<div class="table card-body table-responsive p-0">
				<table class="staff-table" id="basic">
					<tr>
						<td class="image-cell" rowspan="5">
						<img src="<%=request.getContextPath()%>/resources/image/cat_2.png"
							alt="동물 이미지" class="review_image"></td>
						
						<th>보호동물ID</th>
						<td>41006042600036</td>
						<th>종류</th>
						<td>고양이</td>
						
					</tr>
					<tr>
						<th>이름</th>
						<td>도도</td>
						<th>생년월일</th>
						<td>2022-10-10</td>
					</tr>
					<tr>
						<th>품종</th>
						<td>코리안숏헤어</td>
						<th>모색</th>
						<td>노랑</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>수컷</td>
						<th>중성화 여부</th>
						<td>○</td>
					</tr>
					<tr>
						<th>입양상태</th>
						<td>입양완료</td>
						<th>일양날짜</th>
						<td>2024-12-20</td>
					</tr>
					<tr>
						<th colspan="2">예방접종</th>
						<td colspan="3">종합백신, 광견병 접종완료</td>
					</tr>
				</table>
			</div>
		</table>
		</div>
	</div>
		<br />
		<div class="st-list-button-container">
			<button type="button" class="button" onclick="back_list();">목록</button>
		</div>
	</div>
</div>
	<script>
		function complete_go() {
				alert("연락완료 페이지로 이동합니다.");
				location.href="<%=request.getContextPath()%>/staff/board/review/complete";
		}
		function back_list() {
			location.href="<%=request.getContextPath()%>/staff/board/review";
		}
	</script>