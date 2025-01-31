<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/adoption_detail.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="submit" class="approval_button" onclick="approval(${adoptionDetail.ano})">승　인</button>
				<button type="submit" class="refusal_button" onclick="refusal(${adoptionDetail.ano})">반　려</button>
			</div>

			<div class="inner_container">
					<h2>입양신청 정보</h2>
					<table class=state_table>
						<tr>
							<td colspan="1" class="centercell">승인/반려 사원 아이디 </td>
							<td class="leftcell" >
				                <input class=input_left type="text" id="eid" name="eid" value="${adoption.eid }" />
				            </td>
						</tr>
					</table>
					<hr/>
					<div class="small_container">
						<div class="img">
							<img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="보호동물 사진">
						</div>
						<div class="table_2">
							<br/>
							<div class="table card-body table-responsive p-0">
							<h6><b>보호동물 정보</b></h6>
								<table class="table" id="basic">
									<tr>
										<td class="center_cell">동물칩번호</td>
										<td class="left_cell" >${adoption.aid }</td>
										<td class="center_cell">입양상태</td>
										<td class="left_cell">${adoptionDetail.state }</td>
									</tr>
									<tr>
										<td class="center_cell">구조일</td>
										<td class="left_cell">
											<span>
												<fmt:formatDate value="${adoptionDetail.regDate }" pattern="yyyy-MM-dd" />
											</span>
										</td>
										<td class="center_cell">센터입소일</td>
										<td class="left_cell">
											<span>
												<fmt:formatDate value="${adoptionDetail.receive_Date }" pattern="yyyy-MM-dd" />
											</span>
										</td>
									</tr>
									<tr>
										<td class="center_cell">이름</td>
										<td colspan="3" class="left_cell">${adoptionDetail.animalName }</td>
									</tr>
									<tr>
										<td class="center_cell">성별</td>
										<td colspan="3" class="left_cell">${adoptionDetail.gender }</td>
									</tr>
									<tr>
										<td class="center_cell">중성화</td>
										<td colspan="3" class="left_cell">${adoptionDetail.neutralization }</td>
									</tr>
									<tr>
										<td class="center_cell">접종</td>
										<td colspan="3" class="left_cell">${adoptionDetail.vaccine }</td>
									</tr>
									<tr>
										<td class="center_cell">비고</td>
										<td colspan="3" class="left_cell">${adoptionDetail.other }</td>
									</tr>
									
								</table>
							</div> <!-- table card-body table-responsive p-0 -->
						</div>  <!-- table_2 -->
					</div>
					<div class="table card-body table-responsive p-0">
					<h6><b>입양신청자 정보</b></h6>
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">입양번호</td>
								<td class="left_cell" >${adoptionDetail.ano }</td>
								<td class="center_cell">전화번호</td>
								<td class="left_cell">${adoptionDetail.phone }</td>
							</tr>
							<tr>
								<td class="center_cell">입양자 성명</td>
								<td class="left_cell" >${adoptionDetail.memberName }</td>
								<td class="center_cell">입양자 아이디</td>
								<td class="left_cell">${adoption.mid }</td>
							</tr>
						
							<tr>
								<td class="center_cell">신청제목</td>
								<td colspan="3" class="left_cell">${adoption.title }</td>
							</tr>
							<tr>
								<td class="center_cell">내용</td>
								<td colspan="3" class="left_cell">${adoption.content }</td>
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
	function approval(ano) {
		const eid = "${user.eid}"; // 서버에서 가져온 현재 로그인한 사원 아이디
		
	    if (!ano) {
	        alert("입양 번호가 유효하지 않습니다.");
	        return;
	    }
	    if (confirm("신청을 승인하시겠습니까?")) {
	        const form = document.createElement('form');
	        form.method = 'POST';
	        form.action = '/staff/adoption/update_success';

	        const anoInput = document.createElement('input');
	        anoInput.type = 'hidden';
	        anoInput.name = 'ano';
	        anoInput.value = ano; // ano 값이 제대로 전달되어야 함
	        form.appendChild(anoInput);

	        document.body.appendChild(form);
	        form.submit();
	    }
	}

	function refusal(ano) {
		const eid = "${user.eid}"; // 서버에서 가져온 현재 로그인한 사원 아이디
	    if (!ano) {
	        alert("입양 번호가 유효하지 않습니다.");
	        return;
	    }
	    if (confirm("신청을 반려하시겠습니까?")) {
	        const form = document.createElement('form');
	        form.method = 'POST';
	        form.action = '/staff/adoption/update_fail';

	        const anoInput = document.createElement('input');
	        anoInput.type = 'hidden';
	        anoInput.name = 'ano';
	        anoInput.value = ano; // ano 값이 제대로 전달되어야 함
	        form.appendChild(anoInput);

	        document.body.appendChild(form);
	        form.submit();
	    }
	}


	
</script>

