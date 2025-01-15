<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/treatment.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>
	<div class="content">
		<h1><b>-의 생활기록 리스트</b></h1>
		<div class="treatment-search">
				<div class="button">
					<button>생활기록 등록</button>
					<button>리스트 다운로드</button>
				</div>
				<div class="date">
					<b>기록일 :</b>
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
						<th>기록일</th>
						<th>몸무게</th>
						<th>사료 섭취 량</th>
						<th>배변 유무</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2024-12-22</td>
						<td>10 kg</td>
						<td>100g</td>
						<td>유</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>10 kg</td>
						<td>100g</td>
						<td>유</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>10 kg</td>
						<td>100g</td>
						<td>유</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>10 kg</td>
						<td>100g</td>
						<td>유</td>
					</tr>
					<tr>
						<td>2024-12-22</td>
						<td>10 kg</td>
						<td>100g</td>
						<td>유</td>
					</tr>
				</tbody>
			</table>			
		</div>
		
	</div>
</body>