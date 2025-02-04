<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
   	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/animal.css">
   	<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <style>
      button#injection-regist{
         margin-left: 10px;
          padding: 0 5px;
          border: 1px solid #333333;
          border-radius: 5px;
      }
      .animal-profile-image{
      	width: 
      }
      
	.wrapper{
		overflow: scroll;
    	height: 88vh;
	}
	
   </style>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>${basic.name }의 기본정보</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${basic.eid }</i>
				</div>
					<div class="name">
					<b>동물 이름</b><i>${basic.name }</i>
				</div>
			</div>
         	<div class="button-wrapper" id="button-wrapper">
            	<button class="modify" onclick="location.href='basic/modify?aid='+'${basic.aid}'
            											+'&neneutralization='+'${basic.neutralization }'
            											+'&kind='+'${basic.kind }'
            											+'$gender='+'${basic.gender }';">동물 기록 수정</button>
				<button class="remove" onclick="remove_go();">동물 기록 삭제</button>
			</div>
		</div>
		<c:if test="${empty basic.animalImgList }">
			<div class="animal-profile">
				<div class="animal-image-profile" id="main-animalImg" style="background-image:url('/resources/image/p/no_img.jpg')"></div>
			</div>
		</c:if>
		<c:if test="${not empty basic.animalImgList }">
		    <div class="animal-profile">
				<div class="animal-image-profile" id="main-animalImg"></div>
				<div class="imglist-wrapper">
					<c:forEach items="${basic.animalImgList }" var="animalImg">
						<div class="animalImg" id="animalImg" style="background-image:url('getAnimalImg?aino=${animalImg.aino}'); cursor:pointer;" onclick="main_img(${animalImg.aino});"></div>
					</c:forEach>
				</div>
			</div>
		</c:if>
		<div class="shortcut" style="justify-content: space-around;">
         <div class="treatment shortcut-detail" style="width: 40%;">
            <div class="title">
               <b>진료기록</b>
               <button class="treatment" onclick="treatment_go();"><img alt="shortcut" src="<%=request.getContextPath()%>/resources/image/p/shortcut.png"></button>
            </div>
            <ul>
          	  <c:if test="${empty  treatmentList }">
          	  	  <li style="text-align: center;">진료기록이 없습니다.</li>
          	  </c:if>
          	  <c:if test="${not empty  treatmentList }">
          	  	  <c:forEach var="treatment" items="${treatmentList }" varStatus="status">
          	  	  	<c:if test="${status.index <3 }">
          	  	  		<li style="text-align: center; cursor: pointer;" onclick="treatment_detail_go(${treatment.tno});"><fmt:formatDate value="${treatment.treatment_date }" pattern="yyyy-MM-dd"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp ${treatment.cure }</li>
          	  	  	</c:if>
          	  	  </c:forEach>	
          	  </c:if>
            </ul>
         </div>

				<c:if test="${empty injection}">
		         <div class="injection shortcut-detail" style="width: 40%;">
		            <div class="title">
		               <b>접종기록</b>
		            </div>
		            <div class="activity-detail">				
					<ul>
						<li>접종기록이 없습니다 <br/> 접종기록을 등록해주세요.</li>
					</ul>
					<button id="injection-regist" onclick="injectionRegist_go();">접종기록 등록</button>
		            </div>
		         </div>					
				</c:if>
				<c:if test="${not empty injection}">
		         <div class="injection shortcut-detail" style="width: 40%;">
		            <div class="title">
		               <b>접종기록</b>
		               <button class="injection" onclick="injection_go();"><img alt="shortcut" src="<%=request.getContextPath()%>/resources/image/p/shortcut.png"></button>
		            </div>
		            <div class="activity-detail">					
					<ul>
						<li>접종기록이 존재합니다 <br/> 최신 접종일: <fmt:formatDate value="${injection.injection_date }" pattern="yyyy-MM-DD"/> </li>
					</ul>
		            </div>
		         </div>							
				</c:if> 

      </div>
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
   </div>
   </div>
	
<script>
	function remove_go(){
		confirm = confirm("해당 동물의 정보를 삭제 하시겠습니까?");
		if(confirm){
			location.href='basic/remove?aid='+'${basic.aid}';
		}else{
			location.reload(true);
		}
	}
	function treatment_go(){
		location.href='basic/treatment?aid='+'${basic.aid}'+'&page=1';
	}
	function injection_go(){
		location.href='basic/injection?aid='+'${basic.aid}';
		
	}
	function injectionRegist_go(){
		
		location.href='basic/injection/regist?aid='+'${basic.aid}';
	}
	function treatment_detail_go(tno){
		location.href='basic/treatment/detail?tno='+tno;
	}
	function activity_go(){
		location.href='basic/activity?page=1&aid='+'${basic.aid}';
	}
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




