<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/reserve_detail.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="submit" class="approval_button" onclick="approval();">승　인</button>
			</div>

			<div class="inner_container">
					<h2>유예신청 정보</h2>
					<hr/>
					<div class="small_container">
						<div class="img">
							<img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="보호동물 사진">
						</div>
						<div class="table_2">
							<br/>
							<div class="table card-body table-responsive p-0">
							<h6><b>입양동물 정보</b></h6>
								<table class="table" id="basic">
									<tr>
										<td class="center_cell">보호동물관리번호</td>
										<td class="left_cell" >4100426700001</td>
										<td class="center_cell">입양일</td>
										<td class="left_cell">2025년01월013일</td>
									</tr>
									<tr>
										<td class="center_cell">이름</td>
										<td class="left_cell">밍밍</td>
										<td class="center_cell">성별</td>
										<td class="left_cell">암컷</td>
									</tr>
									<tr>
										<td class="center_cell">중성화</td>
										<td colspan="3" class="left_cell">O</td>
									</tr>
									<tr>
										<td class="center_cell">접종</td>
										<td colspan="3" class="left_cell">여러가지 접종</td>
									</tr>
									<tr>
										<td class="center_cell">좋아하는 것</td>
										<td colspan="3" class="left_cell">산책</td>
									</tr>
									
								</table>
							</div> <!-- table card-body table-responsive p-0 -->
						</div>  <!-- table_2 -->
					</div>
					<div class="table card-body table-responsive p-0">
					<h6><b>유예신청자 정보</b></h6>
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">입양자 성명</td>
								<td class="left_cell" >김이박</td>
								<td class="center_cell">전화번호</td>
								<td class="left_cell">010-1234-1234</td>
							</tr>
							<tr>
								<td class="center_cell">유예사유</td>
								<td colspan="3"  class="left_cell" >입질</td>
							</tr>
							<tr>
								<td class="center_cell">신청제목</td>
								<td colspan="3" class="left_cell">
								유예신청합니다..
								</td>
							</tr>
							<tr>
								<td class="center_cell">내용</td>
								<td colspan="3" class="left_cell">
								입질때문에 도저히 안되겠어요..
								</td>
							</tr>
						</table>
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->

		</div>
		<!-- main-container" -->
	</div>
	<!-- content -->
</div>
<!-- ineerWrapper -->

<script>
	function back_page() {
		window.location.href = "/staff/adoption";
	}
	function approval(){
		alert("신청이 승인되었습니다.");
		window.location.href = "/staff/adoption";
	}
</script>

