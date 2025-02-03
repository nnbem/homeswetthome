<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css"> --%>
<%@ include file="/WEB-INF/views/module/adminlteSource.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>
<body>
<div class="innerWrapper">
	<div class="content">
		<h1>
			<b>${loginEmployee.name}의 관리 동물 리스트</b>
		</h1>
		<div class="button">
			<button onclick="location.href='regist?eid='+'${loginEmployee.eid}';">동물 등록</button>
			<button onclick="animalcare_go();">전체 동물 리스트</button>
		</div>
		<%@include file="/WEB-INF/views/module/module_s/animalcareSearchBar.jsp" %>
		<div class="table card-body table-responsive p-0">
			<table class="table">
	            <thead>
	               <tr>
	                  <th>보호동물 ID</th>
	                  <th>이름</th>
	                  <th>상태</th>
	                  <th>종류</th>
	                  <th>품종</th>
	                  <th>센터 입소일</th>
	                  <th>담당자</th>
	               </tr>
	            </thead>
	            <tbody>	
					<c:if test="${empty animalCareList }">
	            		<tr>
	            			<td colspan="7" style="text-align: center;">해당 내용이 없습니다.</td>
	            		</tr>
	            	</c:if>
	            	<c:if test="${not empty animalCareList }">
	            		<c:forEach var="animalCare" items="${animalCareList }">
		            		<tr style="cursor:pointer;" onclick="basic_go(${animalCare.aid});">
		            			<td>${animalCare.aid }</td>
		            			<td>${animalCare.name }</td>
		            			<td>${animalCare.state }</td>
		            			<td>${animalCare.kind }</td>
		            			<td>${animalCare.breed }</td>
		            			<td><fmt:formatDate value="${animalCare.regdate }" pattern="yyyy-MM-dd"/></td>
		            			<td>${animalCare.eid }</td>
		            		</tr>
	            		</c:forEach>
	            	</c:if>
	            </tbody>
	         </table>
		</div>
		
		<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
	</div>
</div>

<form id="pageForm" style="display: none;">
	<input type='text' name="page" value="" style="display: none;"/>
</form>
<script>

	function pagenation_list(page){
		let perPageNum = document.querySelector('select[name="perPageNum"]').value;
		let regdateBefore = document.querySelector('input[name="regdateBefore"]').value;
		//alert(regdateBefore);
		let regdateAfter = document.querySelector('input[name="regdateAfter"]').value;
		//alert(regdateAfter);
		let name = document.querySelector('input[name="name"]').value;
		let kindList = document.querySelectorAll('input[name="kindList"]:checked');
		let stateList = document.querySelectorAll('input[name="stateList"]:checked');
		let eid = "${loginEmployee.eid}"
		
		let searchForm = document.querySelector("#jobForm");
		searchForm.page.value = page;
		searchForm.eid.value = eid;		
		searchForm.submit();
		
	}

	function basic_go(aid){
		alert(aid);
		location.href="basic?aid="+aid;
	}
	 
	function animalcare_go(){
		location.href="../animalcare"
	}
</script>

</body>








