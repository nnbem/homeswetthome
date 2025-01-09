<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="back_group">
			<img src="<%=request.getContextPath()%>/resources/image/arrow_2.png" alt="arrow">
			<h1 style="font-size: 20px;">뒤로가기</h1>
			</div>
			<div class="middle">
				<div class="inner_container">
					<h2>인계동물 정보</h2>
					<div class="table card-body table-responsive p-0">
						<table class="table" id="basic">
							<tr>
								<td class="basic-title">인계번호</td>
								<td>-</td>
								<td class="basic-title">접종일</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="basic-title" rowspan="6">예방접종</td>
								<td colspan="3" class="injection-num"><p>종합백신:</p>
									<label>2차</label></td>
							</tr>
							<tr>
								<td colspan="3" class="injection-num"><p>광견병:</p>
									<label>2차</label></td>
							</tr>
							<tr>
								<td colspan="3" class="injection-num"><p>코로나:</p>
									<label>2차</label></td>
							</tr>
		
							<tr>
								<td colspan="3" class="injection-num"><p>인플루엔자:</p>
									<label>2차</label></td>
							</tr>
							<tr>
								<td colspan="3" class="injection-num"><p>켄넬코프:</p>
									<label>2차</label></td>
							</tr>
							<tr>
								<td colspan="3" class="injection-num"><p>백혈병:</p>
									<label>2차</label></td>
							</tr>
							<tr>
								<td class="basic-title">심장사상충 투약</td>
								<td colspan="3" class="injection-num"><label>2차</label></td>
							</tr>
							<tr>
								<td class="basic-title">구충제 투약</td>
								<td colspan="3" class="injection-num" id="authelmintic"><p>몸무게:</p>
									<label>-</label>
								<p>투약일:</p>
									<label>-</label></td>
							</tr>
						</table>
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->
			<div class="st-list-button-container">
				<button type="submit" class="button">목록</button>
			</div>
			</div>
		</div> <!-- main-container" -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->


