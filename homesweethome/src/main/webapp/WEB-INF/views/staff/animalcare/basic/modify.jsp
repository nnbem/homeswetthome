<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>
	<div class="content">
		<h1><b>기본정보 수정</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>담당자ID</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>동물 이름</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" type="submit">접종 기록 수정</button>
				<button class="cancle">취소</button>
			</div>
		</div>
		<form>
			<div class="table card-body table-responsive p-0">
				<table class="table" id="basic">
	               <tr>
	                   <td class="basic-title">보호동물ID</td>
	                   <td><input type="text" class="table-input-text"></td>
	                   <td class="basic-title">이름</td>
	                   <td><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">종류</td>
	                   <td><input type="text" class="table-input-text"></td>
	                   <td class="basic-title">품종</td>
	                   <td><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">성별</td>
	                   <td>암컷<input type="radio" class="table-input-radio" name="성별">수컷<input type="radio" class="table-input-radio" name="성별"></td>
	                   <td class="basic-title">모색</td>
	                   <td><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">구조일</td>
	                   <td><input type="date" class="table-input-date"></td>
	                   <td class="basic-title">센터입소일</td>
	                   <td><input type="date" class="table-input-date"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">몸무게</td>
	                   <td><input type="text" class="table-input-text"></td>
	                   <td class="basic-title">중성화 유무</td>
	                   <td>유<input type="checkbox" class="table-input-checkbox" name="중성화">무<input type="checkbox" class="table-input-checkbox" name="중성화"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">상태</td>
	                   <td colspan="3"><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">성격</td>
	                   <td colspan="3"><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">기타/특이사항</td>
	                   <td colspan="3"><input type="text" class="table-input-text"></td>
	               </tr>
		        </table>
			</div>
		</form>
	</div>
</body>