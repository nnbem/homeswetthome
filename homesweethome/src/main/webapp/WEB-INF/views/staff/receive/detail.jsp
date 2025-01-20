<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
  
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="button" class="regi_button" onclick="modify_go();">수정하기</button>
			</div>
			
				<div class="inner_container">
					<h2>인계동물 정보</h2>
					<div class="table card-body table-responsive p-0">
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">인계번호</td>
								<td class="left_cell" >
									<span  style="border: none;">${receive.rcno  != null ? receive.rcno : 'N/A'}</span>
								</td>
								<td class="center_cell">발견장소</td>
								<td class="left_cell">
									<span style="border: none;">${receive.spot }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">인계 센터 이름</td>
								<td class="left_cell">
									<span style="border: none;">${receive.cantername }</span>
								</td>
								<td class="center_cell">발견날짜</td>
								<td class="left_cell">
									 <fmt:formatDate value="${receive.regdate}" pattern="yyyy-MM-dd" />
								</td>
							</tr>
							<tr>
								<td class="center_cell">품종</td>
								<td class="left_cell">
									<span style="border: none;">${receive.breed }</span>
								</td>
								<td class="center_cell">성별</td>
								<td class="left_cell">
									<span style="border: none;">${receive.gender }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">종류</td>
								<td colspan="3" class="left_cell">
									<span style="border: none;">${receive.kind }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">보호동물관리번호</td>
								<td colspan="3" class="left_cell">
									<span style="border: none;">${receive.aid }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">구조사진</td>
								<td colspan="3">
								<span style="border: none;">${receive.picture }</span>
								</td>
							</tr>
						</table>
						
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->
			
		</div> <!-- main-container" -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
function back_page() {
    // 이동할 페이지 URL 설정
    window.location.href = "/staff/receive/receive";
}
function modify_go() {
    // 이동할 페이지 URL 설정
    window.location.href = "/staff/receive/modify";
}
</script>

