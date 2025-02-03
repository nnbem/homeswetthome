<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/animal.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ include file="/WEB-INF/views/module/adminlteSource.jsp" %>
</head>

<body>
	<div class="content-title">	
		<h1><b>치료중</b></h1>
	</div>
	<div class="select-wrapper">
			<form id="jobForm">
				<div class="animal-select">
					<div class="animal-select-wrapper">
						<p>종류</p>
			           	<select class="sort-select search-select" name="kindList">
			               <option selected disabled hidden value="">종류</option>
			               <option value="개" ${pageMaker.kindList.contains('개')? 'selected':'' }>개</option>
			               <option value="고양이" ${pageMaker.kindList.contains('고양이')? 'selected':'' }>고양이</option>
			               <option value="기타" ${pageMaker.kindList.contains('기타')? 'selected':'' }>기타</option>
			            </select>
					</div>
					<div class="animal-select-wrapper">
						<p>품종</p>
						<select name="breed" class="sort-select search-select">
							<option selected disabled hidden value="">품종</option>
							<c:if test="${not empty breedList }">
				        		<c:forEach var="breed" items="${breedList }">
				        			<option value="${breed.breed }" ${pageMaker.breed == breed.breed ? 'selected':''}>${breed.breed }</option>
								</c:forEach>
							</c:if>
						</select>
			        </div>
				</div>
		        <div class="search-bar">
			         <button class="refresh-button" onclick="refresh(1);">⟳&nbsp;&nbsp;</button>
			         <select name="perPageNum" id="perPageNum">
			              <option value="12" ${pageMaker.perPageNum==12 ? 'selected':'' }>정렬개수</option>
			              <option value="16" ${pageMaker.perPageNum==16 ? 'selected':'' }>16개씩</option>
			              <option value="20" ${pageMaker.perPageNum==20 ? 'selected':'' }>20개씩</option>
			              <option value="24" ${pageMaker.perPageNum==24 ? 'selected':'' }>24개씩</option>
			         </select>
			         <input class="search-inputs" type="text" placeholder="검색어를 입력하세요" name="name" id="name" value="${pageMaker.name }">
			         <button class="search-button" type="submit" data-card-widget="search" onclick="pagenation_list(1);">검색</button>
		        </div>
		        <input type="text" name="stateList" id="stateList" value="치료중" style="display: none;">
		        <input class="date-input" type="date" name="regdateBefore" pattern="yyyy-MM-DD"  style="display: none;">
            	<input class="date-input" type="date" name="regdateAfter" pattern="yyyy-MM-DD"  style="display: none;">
            	<input type='text' name="page" value="" style="display: none;"/>
	        </form>
			<!-- 카드 컨테이너 -->
			<div class="card-container">
				<!-- 여러 카드 -->
				<c:if test="${not empty animalCareList }">
                	<c:forEach var="animalCare" items="${animalCareList }">
						<div class="card-list" onclick="location.href='detail?aid=${animalCare.aid}';" style="cursor:pointer;">
							<c:if test="${not empty animalCare.animalImgList }">
								<c:forEach var="animalImg" items="${animalCare.animalImgList}" varStatus="status">
									<c:if test="${status.first}">
										<div class="image-animal" style="background-image: url('/member/animal/getAnimalImg?aino=${animalImg.aino}');"></div>
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${empty animalCare.animalImgList }">
								<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/p/no_img.jpg');"></div>
							</c:if>
							<div class="info">
								<p style="font-size: 20px"><strong>${animalCare.name }</strong></p>
								<p>
									<strong>${animalCare.breed }</strong> | ${animalCare.gender }
								</p>
								<p>관리번호: ${animalCare.aid }</p>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
      <%@ include file="/WEB-INF/views/module/module_s/pagination.jsp"%>
		<br/>
	</div>
		
<br/>
<br/>
<br/>
<br/>
<br/>


<script>
	function refresh(page){
	    let searchForm = document.querySelector("#jobForm");
	    searchForm.page.value = page;
	    const dateList = document.querySelectorAll(".date-input");
	    dateList.forEach(date => {
	    	date.value = "";
	    });
	    
	    const inputList = document.querySelectorAll(".search-inputs");
	    inputList.forEach(input => {
	    	input.value = "";
	    });
	    
	    const selectList = document.querySelectorAll(".search-select");
	    selectList.forEach(select => {
	    	select.value = "";
	    })
	    
	    document.querySelector("#perPageNum").value = "10";
	}

	function pagenation_list(page) {
	    let searchForm = document.querySelector("#jobForm");
	    searchForm.page.value = page;
	    searchForm.submit();
	    
	 }
	
	window.addEventListener("load", () => {
	    const urlParams = new URLSearchParams(window.location.search);
	    const currentPage = urlParams.get("page");

	    if (!currentPage) {
	        pagenation_list(1);
	    }
	});

</script>
	
	
	
	
</body>