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

<style>
	.wrapper{
		overflow: scroll;
    	height: 88vh;
	}
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

</style>

</head>

<div class="innerWrapper">
   
   <div class="content">
      <h1>
         <b>기본 정보 리스트</b>
      </h1>
      <div class="button">
         <button onclick="location.href='animalcare/regist?eid='+'${loginEmployee.eid}';">동물 등록</button>
         <button onclick="rpb_go('${loginEmployee.eid}');">관리 동물 리스트</button>
      </div>
      <%@include file="/WEB-INF/views/module/module_s/animalcareSearchBar.jsp"%>
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
      <%@ include file="/WEB-INF/views/module/module_s/pagination.jsp"%>
   </div>
</div>



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
   
   function basic_go(aid){
      location.href="animalcare/basic?aid="+aid;
   }
    
   function rpb_go(eid){
      location.href="animalcare/rpb?eid="+eid;
   }
   
</script>
</body>








