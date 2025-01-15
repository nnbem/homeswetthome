<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/table.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
<style>
button#injection-regist {
	margin-left: 10px;
	padding: 0 5px;
	border: 1px solid #333333;
	border-radius: 5px;
}
</style>
</head>
<div class="innerWrapper">
	<!-- Sidebar -->
	<div class="sidebar">
		<h1>
			<b>보호동물관리</b>
		</h1>
		<div class="sideMenu">
			<ul class="sideMenu lists">
				<li class="sideMenu">
					<ul>
						<li class="title"><a href="/staff/animalcare/basic"> <b>기본정보리스트</b>
						</a></li>
					</ul>
					<ul class="sideMenu list">
						<li class="list"><a href="/staff/animalcare/basic/treatment">
								<b>-진료기록리스트</b>
						</a></li>
						<li class="list"><a href="/animalcare/basic/injection"> <b>-접종기록리스트</b>
						</a></li>
						<li class="list"><a href="/animalcare/basic/activity"> <b>-생활기록리스트</b>
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div class="content">
		<h1>
			<b>기본정보 상세</b>
		</h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>담당자ID</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>동물 이름</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="download">문서 다운로드</button>
				<button class="qr">QR코드 다운로드</button>
				<button class="modify">동물 기록 수정</button>
				<button class="remove">동물 기록 삭제</button>
			</div>
		</div>
		<div class="shortcut">
			<div class="treatment shortcut-detail">
				<div class="title">
					<b>진료기록</b>
					<button>
						<img alt="shortcut"
							src="<%=request.getContextPath()%>/resources/image/p/shortcut.png">
					</button>
				</div>
				<ul>
					<li>2024-12-22 건강 진찰</li>
					<li>2024-12-20 물린 상처 치료</li>
					<li>2024-10-03 피부 진찰</li>
				</ul>
			</div>
			<div class="injection shortcut-detail">
				<div class="title">
					<b>접종기록</b>
					<button>
						<img alt="shortcut"
							src="<%=request.getContextPath()%>/resources/image/p/shortcut.png">
					</button>
				</div>
				<div class="activity-detail">
					<ul>
						<li>2024-12-21</li>
						<li>2024-12-10</li>
						<li>2024-10-03</li>
					</ul>
					<button id="injection-regist">접종기록 등록</button>
				</div>
			</div>
			<div class="activity shortcut-detail">
				<div class="title">
					<b>생활기록</b>
					<button>
						<img alt="shortcut"
							src="<%=request.getContextPath()%>/resources/image/p/shortcut.png">
					</button>
				</div>
				<div class="activity-detail">
					<ul class="activity-list">
						<li>2024-12-25</li>
						<li>2024-12-24</li>
						<li>2024-12-23</li>
					</ul>
					<div class="food">
						<div class="food-type" id="food-type">사료 섭취 권장량</div>
						<div class="food-content">130g</div>
					</div>
				</div>

			</div>
		</div>
		<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
				<tr>
					<td class="basic-title">보호동물ID</td>
					<td>-</td>
					<td class="basic-title">상태</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">품종</td>
					<td>-</td>
					<td class="basic-title">종류</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">성별</td>
					<td>-</td>
					<td class="basic-title">모색</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">구조일</td>
					<td>-</td>
					<td class="basic-title">센터입소일</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">추정나이</td>
					<td>-</td>
					<td class="basic-title">중성화</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">병명</td>
					<td>-</td>
					<td class="basic-title">성격</td>
					<td>-</td>
				</tr>
				<tr>
					<td class="basic-title">몸무게</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<td class="basic-title">발견장소</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<td class="basic-title">좋아하는것</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<td class="basic-title">싫어하는것</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<td class="basic-title">접종유무</td>
					<td colspan="3">-</td>
				</tr>
				<tr>
					<td class="basic-title">기타/특이사항</td>
					<td colspan="3">-</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>