<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b><fmt:formatDate value="${treatment.treatment_date }" pattern="yyyy-MM-DD"/> ${animal.name }의 진료 기록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${treatment.eid }</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>${animal.name }</i>
				</div>
				<div class="name">
					<b>진료기록 번호</b><i>${treatment.tno }</i>
				</div>				
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" type="button" onclick="modify_go();">진료 기록 수정</button>
				<button class="cancle" type="button" onclick="remove_go();">삭제</button>
			</div>
		</div>
		<form>
			<div class="table card-body table-responsive p-0">
				<table class="table" id="basic">
	               <tr>
	                   <td class="basic-title">보호동물ID</td>
	                   <td>${treatment.aid }</td>
	                   <td class="basic-title">진료일</td>
	                   <td><fmt:formatDate value="${treatment.treatment_date }" pattern="yyyy-MM-DD"/></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">병명</td>
	                   <td>${treatment.disease }</td>
	                   <td class="basic-title">발병일</td>
	                   <td><fmt:formatDate value="${treatment.disease_date }" pattern="yyyy-MM-DD"/></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">증상</td>
	                   <td>${treatment.sympton }</td>	               
	                   <td class="basic-title">치료명</td>
	                   <td>${treatment.cure }</td>
	               </tr>
	               <tr>
	                   <td class="basic-title">예후소견</td>
	                   <td colspan="3">${treatment.opinion }</td>
	               </tr>
	               <tr>
	                   <td class="basic-title">비고</td>
	                   <td colspan="3">${treatment.other }</td>
	               </tr>
		        </table>
			</div>
		</form>
	</div>
</div>
<script>
	function modify_go(){
		location.href = 'detail/modify?tno='+'${treatment.tno}';
		
	}
	function remove_go(){
		location.href = 'detail/remove?tno='+'${treatment.tno}';
	}
</script>

</body>