<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
</head>

<body>
	<div class="content">
		<h1><b>동물 등록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${loginEmployee.eid}</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" type="submit">동물 등록</button>
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
	                   <td class="basic-title">상태</td>
	                   <td><input type="text" class="table-input-text"></td>					   
	                   <td class="basic-title">성격</td>
	                   <td><input type="text" class="table-input-text"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">모색</td>
	                   <td><input type="text" class="table-input-text"></td>
	                   <td class="basic-title">몸무게</td>
	                   <td>유<input type="checkbox" class="table-input-checkbox" name="중성화">무<input type="checkbox" class="table-input-checkbox" name="중성화"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">중성화 유무</td>
	                   <td><input type="text" class="table-input-text"></td>
	                   <td class="basic-title">추정 나이</td>
	                   <td><input type="text" class="table-input-text"></td>
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