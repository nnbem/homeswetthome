<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/animal.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>
<body>
	<div class="content-title">	
		<h1><b>${basic.name } 의 상세정보</b></h1>
	</div>
	<c:if test="${empty basic.animalImgList }">
		<div class="animal-profile">
			<div class="animal-image-profile" id="main-animalImg" style="background-image:url('/resources/image/p/no_img.jpg')"></div>
		</div>
	</c:if>
	<c:if test="${not empty basic.animalImgList }">
		<div class="animal-profile">
			<div class="animal-image-profile" id="main-animalImg">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="imglist-wrapper">
				<c:forEach items="${basic.animalImgList }" var="animalImg">
					<div class="animalImg" id="animalImg" style="background-image:url('getAnimalImg?aino=${animalImg.aino}'); cursor:pointer;" onclick="main_img(${animalImg.aino});"></div>
				</c:forEach>
			</div>
		</div>
	</c:if>
	<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
               <tr>
                   <td class="basic-title">보호동물ID</td>
                   <td>${basic.aid }</td>
                   <td class="basic-title">상태</td>
                   <td>${basic.state }</td>
               </tr>
               <tr>
                   <td class="basic-title">품종</td>
                   <td>${basic.breed }</td>
                   <td class="basic-title">종류</td>
                   <td>${basic.kind }</td>
               </tr>
               <tr>
                   <td class="basic-title">성별</td>
                   <td>${basic.gender }</td>
                   <td class="basic-title">모색</td>
                   <td>${basic.color }</td>
               </tr>
               <tr>
                   <td class="basic-title">구조일</td>
                   <td><fmt:formatDate value="${basic.regdate }" pattern="yyyy-MM-DD"/></td>
                   <td class="basic-title">센터입소일</td>
                   <td><fmt:formatDate value="${basic.receive_date }" pattern="yyyy-MM-DD"/></td>
               </tr>
               <tr>
                   <td class="basic-title">추정나이</td>
                   <td>${basic.age }</td>
                   <td class="basic-title">중성화</td>
                   <td>${basic.neutralization }</td>
               </tr>
               <tr>
                   <td class="basic-title">성격</td>
                   <td >${basic.character }</td>
                   <td class="basic-title">몸무게</td>
                   <td >${basic.weight }kg</td>
               </tr>
               <tr>
                   <td class="basic-title">발견장소</td>
                   <td colspan="3">${basic.spot }</td>
               </tr>
               <tr>
                   <td class="basic-title">기타/특이사항</td>
                   <td colspan="3">${basic.other }</td>
               </tr>
           </table>
		</div>
	<div class="buttons-wrapper">
		<button class="rolback" onclick="history.go(-1);">목록</button>
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
<script>
	function selectFirstAino() {
	    const imgList = document.querySelectorAll(".animalImg");
	
	    if (imgList.length > 0) {
	        const firstAinoDiv = imgList[0];
	        const aino = firstAinoDiv.getAttribute("onclick").match(/\d+/)[0];
	
	        main_img(aino);
	    }
	}
	
	
	function main_img(aino) {
	    //alert(aino);
	    const targetDiv = document.querySelector("#main-animalImg");
	
	    if (targetDiv) {
	        targetDiv.style.backgroundImage = "url('getAnimalImg?aino=" + aino + "')";
	    } else {
	        alert("Target div not found.");
	    }
	}
	
    window.onload = function() {
        selectFirstAino();
    };
</script>

</body>