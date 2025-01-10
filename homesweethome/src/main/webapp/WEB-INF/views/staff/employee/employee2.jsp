<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>사원관리</h2>
			<br />
			<hr />
			<br /> 
			
			<div class="form_ineer">
		        <form>
		            <div class="image-upload">
						<label for="image-input" class="image-placeholder-label">
							<span class="image-placeholder"></span>
						</label>
						<input type="file" id="image-input" accept="image/*">
					</div>
		            <div class="form-fields">
		                <div class="field-group">
		                    <label>이름</label>
		                    <input type="text" placeholder="홍길동">
		                    <label>입사일</label>
		                    <input type="date" value="2024-12-22">
		                </div>
		                <div class="field-group">
		                    <label>아이디</label>
		                    <input type="text" value="2024-10-12" readonly>
		                </div>
		                <div class="field-group">
		                    <label>비밀번호</label>
		                    <input type="password">
		                </div>
		                <div class="field-group">
		                    <label>주소</label>
		                    <input type="text">
		                </div>
		                <div class="field-group">
		                    <label>상세주소</label>
		                    <input type="text">
		                </div>
		                <div class="field-group">
		                    <label>이메일</label>
		                    <input type="email">
		                </div>
		                <div class="field-group">
		                    <label>부서</label>
		                    <input type="text">
		                </div>
		            </div>
		            <div class="form-buttons">
		                <button type="submit">등록</button>
		                <button type="button">취소</button>
		            </div>
		        </form>
	
	    	</div>
		</div> <!-- div.search-container -->
	</div> <!-- div.content -->
</div> <!-- div.ineerWrapper -->

