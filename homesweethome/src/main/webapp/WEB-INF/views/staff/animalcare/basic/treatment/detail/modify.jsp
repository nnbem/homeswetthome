<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.wrapper{
		overflow: scroll;
    	height: 88vh;
	}
	
</style>	
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>진료 기록 수정</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>담당자ID</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>동물 이름</i>
				</div>
				<div class="name">
					<b>진료기록 번호</b><i>번호</i>
				</div>				
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" type="button" onclick="modify_go();">진료 기록 수정</button>
				<button class="cancle" onclick="history.go(-1);">취소</button>
			</div>
		</div>
		<form id="post-form" method="post" action="modify/post" role="form" name="modifyForm">
			<div class="table card-body table-responsive p-0">
				<table class="table" id="basic">
	               <tr>
	                   <td class="basic-title">보호동물ID</td>
	                   <td><input type="text" class="table-input-text" readonly="readonly" value="${animal.aid }" title="보호동물ID" name="aid" id="aid"> </td>
	                   <td class="basic-title">진료일</td>
	                   <td><input type="date" class="table-input-date" title="진료일" name="treatment_date" id="treatment_date" pattern="yyyy-MM-DD" value='<fmt:formatDate value="${treatment.treatment_date }" pattern="yyyy-MM-DD"/>'></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">병명</td>
	                   <td><input type="text" class="table-input-text notNull" title="병명" name="disease" id="disease" value="${treatment.disease }"></td>
	                   <td class="basic-title">발병일</td>
	                   <td><input type="date" class="table-input-date" title="발병일" name="disease_date" id="disease_date" pattern="yyyy-MM-DD" value="<fmt:formatDate value="${treatment.disease_date }" pattern="yyyy-MM-DD"/>"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">증상</td>
	                   <td><input type="text"  class="table-input-text" title="증상" name="sympton" id="sympton" value="${treatment.sympton }"></td>	               
	                   <td class="basic-title">치료명</td>
	                   <td><input type="text" class="table-input-text notNull" title="치료명" name="cure" id="cure" value="${treatment.cure }"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">예후소견</td>
	                   <td colspan="3"><input type="text" class="table-input-text" title="예후소견" name="opinion" id="opinion" value="${treatment.opinion }"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">비고</td>
	                   <td colspan="3"><input type="text" class="table-input-text" title="비고" name="other" id="other" value="${treatment.other }"></td>
	               </tr>
		        </table>
		        <input type="text" title="사원번호" name="eid" id="eid" value="${animal.eid }" style="display: none;">
		        <input type="text" title="tno" name="tno" id="tno" value="${treatment.tno }" style="display: none;">
			</div>
		</form>
	</div>
</div>
<script>
	function modify_go() {
		/* 유효성 검사 */
		var form = document.forms.modifyForm;
	
		var inputNotNull = document.querySelectorAll(".notNull");
		for(var input of inputNotNull){
			if(!input.value){
				alert(input.getAttribute("title")+"은 필수입니다.");
				input.focus();
				return;
			}					
		}
		
		form.action="modify/post";
		form.method="post";
		form.submit();
	
	}
	
	
</script>

</body>












