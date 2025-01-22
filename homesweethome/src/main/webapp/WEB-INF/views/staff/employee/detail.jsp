<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<h2>사원 정보</h2>
					<div class="table card-body table-responsive p-0">
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">이름</td>
								<td class="left_cell" >
									<span  style="border: none;">${employee.name }</span>
								</td>
								<td class="center_cell">사원번호(아이디)</td>
								<td class="left_cell">
									<span style="border: none;">${employee.eid }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">부서</td>
								<td class="left_cell">
									<span style="border: none;">${employee.position }</span>
								</td>
								<td class="center_cell">입사일</td>
								<td class="left_cell">
									<span style="border: none;">${employee.joid_date }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">생년월일</td>
								<td class="left_cell">
									<span style="border: none;">${employee.birth }</span> 
								</td>
								<td class="center_cell">전화번호</td>
								<td class="left_cell">
									<span style="border: none;">${employee.phone }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">이메일</td>
								<td colspan="3" class="left_cell">
									<span style="border: none;">${employee.email }</span>
								</td>
							</tr>
							<tr>
								<td class="center_cell">주소</td>
								<td colspan="3" class="left_cell">
									<span style="border: none;">${employee.department }</span>
								</td>
							</tr>
						</table>
						
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->
			
		</div> <!-- main-container" -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
	function previewImage(event) {
	    const preview = document.getElementById('preview');
	    const fileNameElement = document.getElementById('file-name');
	    const file = event.target.files[0];
	    const reader = new FileReader();
	
	    if (file) {
	        // 파일명을 표시
	        fileNameElement.textContent = file.name;
	
	        // 이미지 미리보기
	        reader.onload = function () {
	            preview.src = reader.result;
	            preview.style.display = 'block';
	        };
	        reader.readAsDataURL(file);
	    } else {
	        // 파일이 선택되지 않은 경우
	        fileNameElement.textContent = '선택된 파일 없음';
	        preview.style.display = 'none';
	    }
	}


	function back_page() {
		// 이동할 페이지 URL 설정
		window.location.href = "/staff/employee";
	}
	function modify_go() {
		window.location.href = "/staff/employee/modify?eid=${employee.eid}";
	}
</script>

