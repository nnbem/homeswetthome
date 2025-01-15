<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
</head>

<body>
	<div class="content">
		<h1><b>2025-01-09 ~의 생활 기록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>담당자ID</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>동물 이름</i>
				</div>
				<div class="name">
					<b>생활기록 번호</b><i>번호</i>
				</div>				
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" type="submit">생활 기록 수정</button>
				<button class="cancle">삭제</button>
			</div>
		</div>
		<form>
			<div class="table card-body table-responsive p-0">
				<table class="table" id="basic">
	               <tr>
	                   <td class="basic-title">보호동물ID</td>
	                   <td></td>
	                   <td class="basic-title">기록일</td>
	                   <td></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">사료종류</td>
	                   <td></td>
	                   <td class="basic-title">사료섭취량</td>
	                   <td></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">배변유무</td>
	                   <td></td>	               
	                   <td class="basic-title">생활 기록 사진</td>
	                   <td></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">비고</td>
	                   <td colspan="3"></td>
	               </tr>
		        </table>
			</div>
		</form>
	</div>
</body>