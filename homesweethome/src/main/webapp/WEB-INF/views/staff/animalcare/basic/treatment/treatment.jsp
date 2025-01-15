<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/treatment.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>
	<div class="content">
		<h1><b>-의 진료기록 리스트</b></h1>
		<div class="treatment-search">
				<div class="button">
					<button>진료기록 등록</button>
					<button>리스트 다운로드</button>
				</div>
				<div class="date">
					<select>
						<option>진료일</option>
						<option>발병일</option>
					</select>
					<div class="date-select">
						<input class="date-input" type="date">
						<p>~</p>
						<input class="date-input" type="date">
					</div>
				</div>

		</div>
		<div class="table">
			<table class="table">
				<thead>
					<tr>
						<th>진료일</th>
						<th>병명</th>
						<th>치료명</th>
						<th>발병일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2024-12-22</td>
						<td>-</td>
						<td>-</td>
						<td>2024-12-18</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>-</td>
						<td>-</td>
						<td>2024-12-18</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>-</td>
						<td>-</td>
						<td>2024-12-18</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>-</td>
						<td>-</td>
						<td>2024-12-18</td>
					</tr>
				</tbody>
			</table>			
		</div>
		
	</div>
</body>