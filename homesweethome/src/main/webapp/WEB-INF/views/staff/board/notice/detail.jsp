<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>

<div class="innerWrapper">
	<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>게시판통합관리</b></h1>
			<div class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">
								<a href="/staff/board/notice">
									<b>공지사항</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/report">
									<b>신고글</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/review">
									<b>연락필요 사용자</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/board/inquiry">
									<b>1:1 문의</b>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

	<!-- Main Content -->
	<div class="content">
		<div class="search-container">
			<h2>공지사항</h2>
			<hr/>

			<table class="detail-table">
				<thead>
					<tr>
						<th>운영시간 변경안내(예정)
							<div class="st-button-container">
								<button type="submit" class="button">수정<!-- summernote구현 --></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="button" onclick="delete_go();">삭제</button>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>등록일: 2024-12-28</td>
					</tr>
					<tr>
						<td style="padding: 10%; font-size: 20px;">
							2025년 1월 21일부터 HomeSweetHome의 운영 시간이 변경됩니다. 새 운영 시간은 아래와 같습니다: <br/><br/>
							- 월~금: 오전 10시 ~ 오후 7시 <br/> 
							- 토요일: 오전 10시 ~ 오후 5시 <br/>
							- 일요일 및 공휴일: 휴무 <br/><br/>
							아직 예정이오니 이 점 참고하시어 방문 시 불편함 없으시길 바라며 자세한 사항은 아래 번호로 전화주시기 바랍니다. <br/>
							대표번호 042)-270-7239
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<div class="st-list-button-container">
				<button type="button" class="button" onclick="back_list();">목록</button>
			</div>
		</div>
	</div>

	<script>
	function delete_go() {
		if (confirm("정말로 삭제하시겠습니까?")) {
			// "확인"을 눌렀을 때 실행할 코드
			alert("삭제가 완료되었습니다.");
			location.href="<%=request.getContextPath()%>/staff/board/notice";
		} else {
			// "취소"를 눌렀을 때 실행할 코드
			alert("글을 삭제하지 않습니다.");
			location.href="<%=request.getContextPath()%>/staff/board/notice/detail";
		}
		
	}
	
	function back_list() {
		location.href="<%=request.getContextPath()%>/staff/board/notice";
	}
	</script>