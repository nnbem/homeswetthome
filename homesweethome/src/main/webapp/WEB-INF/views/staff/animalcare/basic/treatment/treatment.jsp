<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/treatment.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<style>

	div.date{
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	div.date-select{
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	input.date-input{
		border: none;
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
		<h1><b>${animal.name }의 진료기록 리스트</b></h1>
		<form id="jobForm">
			<div class="treatment-search">
				<div class="button">
					<button type="button" onclick="location.href='treatment/regist?aid='+'${animal.aid}';">진료기록 등록</button>
				</div>
				<div class="date-wrapper" style="display: flex; flex-direction: row; justify-content: center; align-items: center; ">
					<div class="date">
					   <p>등록일:</p>
					   <div class="date-select">
					      <input class="date-input" type="date" name="regdateBefore" pattern="yyyy-MM-DD" value="${pageMaker.regdateBefore }">
					      <p>~</p>
					      <input class="date-input" type="date" name="regdateAfter" pattern="yyyy-MM-DD" value="${pageMaker.regdateAfter }">				      
					   </div>		   
					   <input class="aid-input" type="text" name="aid" value="${pageMaker.aid }" style="display: none;"/>
					</div>
					<button class="search-button treatment-button" type="submit" data-card-widget="search" onclick="pagenation_list(1);">검색</button>	
				</div>	
			</div>
			<input type='text' name="page" value="" style="display: none;"/>
		</form>
		<div class="table">
			<table class="table">
				<thead>
					<tr>
						<th>진료일</th>
						<th>병명</th>
						<th>치료명</th>
						<th>발병일</th>
					</tr>
				</thead>
				<tbody>
	               <c:if test="${empty treatmentList }">
	                  <tr>
	                     <td colspan="7" style="text-align: center;">해당 내용이 없습니다.</td>
	                  </tr>
	               </c:if>
	               <c:if test="${not empty treatmentList }">
	                  <c:forEach var="treatment" items="${treatmentList }">
	                     <tr style="cursor:pointer;" onclick="detail_go(${treatment.tno});">
	                        <td><fmt:formatDate value="${treatment.treatment_date }" pattern="yyyy-MM-DD"/></td>
	                        <td>${treatment.disease }</td>
	                        <td>${treatment.cure }</td>
	                        <td><fmt:formatDate value="${treatment.disease_date }" pattern="yyyy-MM-DD"/> </td>
	                     </tr>
	                  </c:forEach>
	               </c:if>
				</tbody>
			</table>			
		</div>
      <%@ include file="/WEB-INF/views/module/module_s/pagination.jsp"%>
		</div>
	</div>
	
	
<script>
function pagenation_list(page) {
    let searchForm = document.querySelector("#jobForm");
    searchForm.page.value = page;
    searchForm.submit();
    
 }
 
 function detail_go(tno){
    location.href="treatment/detail?tno="+tno;
 }
 
</script>
</body>