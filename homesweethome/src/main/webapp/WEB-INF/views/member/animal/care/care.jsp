<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/animal.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
</head>

<body>

	<div class="content-title">	
		<h1><b>치료중</b></h1>
	</div>
	<div class="select-wrapper">
		<div class="animal-select">
			<div class="animal-select-wrapper">
				<p>종류</p>
	            <select class="sort-select">
	               <option value="">선택</option>
	               <option value="all">전체</option>
	            </select>
			</div>
			<div class="animal-select-wrapper">
	            <p>품종</p>
	            <select class="sort-select">
	               <option value="">선택</option>
	               <option value="all">전체</option>
	            </select>
	        </div>
	        <div class="animal-select-wrapper">
	            <p>성별</p>
	            <select class="sort-select">
	               <option value="">선택</option>
	               <option value="all">전체</option>
	            </select>
			</div>
		</div>
        <div class="search-bar">
           <button class="refresh-button">⟳&nbsp;&nbsp;</button>
           <select class="sort-select">
              <option value="">정렬개수</option>
              <option value="all">전체</option>
           </select> 
           <select class="sort-select">
              <option value="">전체</option>
              <option value="specific">특정</option>
           </select> 
           <input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
           <button class="search-button">검색</button>
        </div>
	<div class="content-wrapper">
		<!-- 카드 컨테이너 -->
		<div class="card-container">
			<!-- 여러 카드 -->
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>	
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
			<div class="card-list">
				<div class="image-animal" style="background-image: url('<%=request.getContextPath()%>/resources/image/dog_50.jpg');">
					<button class="heart-btn">❤️</button>
				</div>
				<div class="info">
					<p>
						<strong>스코티시폴드</strong> | 암컷
					</p>
					<p>관리번호: 24-4-154</p>
				</div>
			</div>
		</div>
	</div>
	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center m-0">
			<li class="page-item">
				<a class="page-link" href="javascript:search_list(1);">
					<i class="fas fa-angle-double-left"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:search_list(${pageMaker.prev ? pageMaker.startPage-1 : pageMaker.page});">
					<i class="fas fa-angle-left"></i>
				</a>
			</li>
			<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
				<li class="page-item ${pageMaker.page == pageNum?'active':''}">
					<a class="page-link" href="javascript:search_list(${pageNum });">
						${pageNum }
					</a>
				</li>
			</c:forEach>	
			<li class="page-item">
				<a class="page-link" href="javascript:search_list(${pageMaker.next ? pageMaker.endPage+1 : pageMaker.page});">
					<i class="fas fa-angle-right"></i>
				</a>
			</li>	
			<li class="page-item">
				<a class="page-link" href="javascript:search_list(${pageMaker.realEndPage });">
					<i class="fas fa-angle-double-right"></i>
				</a>
			</li>				
		</ul>
	</nav>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

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