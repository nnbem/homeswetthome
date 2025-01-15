<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">
</head>

   <!-- 본문 -->
   <section>
      <div class="inner_cent">
      		<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>센터소개</b></h1>
			<div class="sideMenu">
				<ul class="sideMenu lists">
					<li class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">	
								<a href="/member/intro">소개</a>
							</li>
							<li class="list">
								<a href="/member/intro/notice">공지사항</a>
							</li>
							<li class="list">
								<a href="/member/intro/way">오시는 길</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>공지사항</b>
		</h1>
	</div>
			<table class="detail-table">
				<thead>
					<tr>
						<th style="padding: 15px;">운영시간 변경안내(예정)</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="font-family: NanumSquare_ac;">등록일: 2024-12-28</td>
					</tr>
					<tr>
						<td style="padding: 10%; font-size: 20px; font-family: NanumSquare_ac;">
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
		
		<script>
		function back_list() {
			location.href="<%=request.getContextPath()%>/member/intro/notice";
		}
		</script>