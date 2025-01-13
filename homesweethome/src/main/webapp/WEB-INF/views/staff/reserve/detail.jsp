<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/adoption_detail.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="submit" class="approval_button" onclick="approval();">승　인</button>
				<button type="submit" class="refusal_button" onclick="refusal();">반　려</button>
			</div>

			<div class="inner_container">
					<h2>방문예약신청 정보</h2>
					<hr/>
					<div class="table card-body table-responsive p-0">
					<h6><b>방문예약신청자 정보</b></h6>
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">신청자 성명</td>
								<td class="left_cell" >김이박</td>
								<td class="center_cell">전화번호</td>
								<td class="left_cell">010-1234-1234</td>
							</tr>
							<tr>
								<td class="center_cell">방문예정일</td>
								<td class="left_cell" >2025년01월09일</td>
								<td class="center_cell">방문예정일시</td>
								<td class="left_cell">10:00</td>
							</tr>
							<tr>
								<td class="center_cell">내용</td>
								<td colspan="3" class="left_cell">
								센터방문하고 싶어요!
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
	function refusal(){
		alert("신청이 반려되었습니다.");
		window.location.href = "/staff/adoption";
	}
</script>

