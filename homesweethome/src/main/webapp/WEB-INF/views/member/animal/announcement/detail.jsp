<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/animal.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
</head>
<body>
	<div class="content-title">	
		<h1><b>공고중-상세</b></h1>
	</div>
	<div class="animal-profile">
		<div class="animal-image-profile">
			<div class="animal-profile-image" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
				<button class="heart-btn">❤️</button>
			</div>
		</div>
		<div class="imglist-wrapper">
			<button>
				<img alt="leftImg" src="<%=request.getContextPath()%>/resources/image/left.png">
			</button>
			<img alt="animalImg" src="<%=request.getContextPath()%>/resources/image/dog_50.jpg">
			<img alt="animalImg" src="<%=request.getContextPath()%>/resources/image/dog_50.jpg">
			<img alt="animalImg" src="<%=request.getContextPath()%>/resources/image/dog_50.jpg">
			<img alt="animalImg" src="<%=request.getContextPath()%>/resources/image/dog_50.jpg">
			<img alt="animalImg" src="<%=request.getContextPath()%>/resources/image/dog_50.jpg">
			<button>
				<img alt="leftImg" src="<%=request.getContextPath()%>/resources/image/right.png">
			</button>
		</div>
	</div>
	<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
               <tr>
                   <td class="basic-title">보호동물ID</td>
                   <td>-</td>
                   <td class="basic-title">상태</td>
                   <td>-</td>
               </tr>
               <tr>
                   <td class="basic-title">품종</td>
                   <td>-</td>
                   <td class="basic-title">종류</td>
                   <td>-</td>
               </tr>
               <tr>
                   <td class="basic-title">성별</td>
                   <td>-</td>
                   <td class="basic-title">모색</td>
                   <td>-</td>
               </tr>
               <tr>
                   <td class="basic-title">구조일</td>
                   <td>-</td>
                   <td class="basic-title">센터입소일</td>
                   <td>-</td>
               </tr>
               <tr>
                   <td class="basic-title">성격</td>
                   <td>-</td>
                   <td class="basic-title">중성화</td>
                   <td>-</td>
               </tr>
               <tr>
                   <td class="basic-title">몸무게</td>
                   <td colspan="3">-</td>
               </tr>
               <tr>
                   <td class="basic-title">발견장소</td>
                   <td colspan="3">-</td>
               </tr>
               <tr>
                   <td class="basic-title">좋아하는것</td>
                   <td colspan="3">-</td>
               </tr>
               <tr>
                   <td class="basic-title">싫어하는것</td>
                   <td colspan="3">-</td>
               </tr>
               <tr>
                   <td class="basic-title">기타/특이사항</td>
                   <td colspan="3">-</td>
               </tr>
	        </table>
		</div>
	<div class="buttons-wrapper">
		<button class="rolback" onclick="location.href='/member/animal/announcement'">목록</button>
	</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<!-- JavaScript -->
<script>
	// 모든 하트 버튼에 클릭 이벤트 추가
	const heartButtons = document.querySelectorAll(".heart-btn");
	heartButtons.forEach(button => {
	    button.addEventListener("click", function () {
	        button.classList.toggle("active"); // 색상 토글
	    });
	});
</script>

</body>