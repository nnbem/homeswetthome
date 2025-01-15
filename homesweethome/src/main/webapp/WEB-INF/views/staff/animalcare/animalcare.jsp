<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css"> --%>
<%@ include file="/WEB-INF/views/module/adminlteSource.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>

<div class="innerWrapper">
	<!-- Sidebar -->
	<div class="sidebar">
		<h1>
			<b>보호동물관리</b>
		</h1>
		<div class="sideMenu">
			<ul class="sideMenu lists">
				<li class="sideMenu">
					<ul>
						<li class="title"><a href="/staff/animalcare/basic"> <b>기본정보리스트</b>
						</a></li>
					</ul>
					<ul class="sideMenu list">
						<li class="list"><a href="/staff/animalcare/basic/treatment"> <b>-진료기록리스트</b>
						</a></li>
						<li class="list"><a href="/animalcare/basic/injection"> <b>-접종기록리스트</b>
						</a></li>
						<li class="list"><a href="/animalcare/basic/activity"> <b>-생활기록리스트</b>
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<ul class="nav nav-pills nav-sidebar flex-column"
			data-widget="treeview" role="menu" data-accordion="false">
			<li class="nav-item responsible"><a href="#"
				class="responsible-header nav-link">
					<p>
						~의 관리동물 <i class="right fas fa-angle-left"></i>
					</p>
			</a>
				<ul class="nav nav-treeview">
					<li class="nav-item responsible-list"><a href="#"
						class="responsible-name nav-link"> <b>잡스</b>
					</a>
						<div class="responsible-buttons">
							<button>
								<p>진료기록</p>
							</button>
							<button>
								<p>접종기록</p>
							</button>
							<button>
								<p>생활기록</p>
							</button>
						</div></li>
				</ul></li>
		</ul>
	</div>
	<!-- /.sidebar -->
	<div class="content">
		<h1>
			<b>기본 정보 리스트</b>
		</h1>
		<%@include
			file="/WEB-INF/views/module/module_s/animalcareSearchBar.jsp"%>
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
							<tr>
								<td>${animalCare.aid }</td>
								<td>${animalCare.name }</td>
								<td>${animalCare.state }</td>
								<td>${animalCare.kind }</td>
								<td>${animalCare.breed }</td>
								<td>${animalCare.regdate }</td>
								<td>${animalCare.eid }</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
	</div>
</div>



<form id="pageForm" style="display: none;">
	<input type='text' name="page" value="" />
</form>
<script>
	function pagenation_list(page) {
		let perPageNum = document.querySelector('select[name="perPageNum"]').value;
		let regdateBefore = document
				.querySelector('input[name="regdateBefore"]').value;
		//alert(regdateBefore);
		let regdateAfter = document.querySelector('input[name="regdateAfter"]').value;
		//alert(regdateAfter);
		let name = document.querySelector('input[name="name"]').value;
		let kindList = document
				.querySelectorAll('input[name="kindList"]:checked');
		let stateList = document
				.querySelectorAll('input[name="stateList"]:checked');

		let searchForm = document.querySelector("#jobForm");
		let pageForm = document.querySelector("#pageForm");
		pageForm.page.value = page;
		searchForm.submit();
		pageForm.submit();
	}
</script>

</body>








