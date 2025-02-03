<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/treatment.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>${animal.name }의 생활기록 리스트</b></h1>
			<div class="treatment-search">
				<div class="button">
					<button type="button" onclick="location.href='treatment/regist?aid='+'${animal.aid}';">진료기록 등록</button>
				</div>
				<div class="date-wrapper" style="display: flex; flex-direction: row; justify-content: center; align-items: center; ">
					<div class="date">
					   <p>센터입소일:</p>
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
		<div class="table">
			<table class="table">
				<thead>
					<tr>
						<th>기록일</th>
						<th>몸무게</th>
						<th>사료 섭취 량</th>
						<th>배변 유무</th>
					</tr>
				</thead>
				<tbody>
	               <c:if test="${empty activityList }">
	                  <tr>
	                     <td colspan="7" style="text-align: center;">해당 내용이 없습니다.</td>
	                  </tr>
	               </c:if>
	               <c:if test="${not empty activityList }">
	                  <c:forEach var="activity" items="${activityList }">
	                     <tr style="cursor:pointer;" onclick="detail_go(${activity.lno});">
	                        <td><fmt:formatDate value="${activity.live_date }" pattern="yyyy-MM-DD"/></td>
	                        <td>${activity.defecation }</td>
	                        <td>${activity.meal}</td>
	                        <td><fmt:formatDate value="${treatment.disease_date }" pattern="yyyy-MM-DD"/> </td>
	                     </tr>
	                  </c:forEach>
	               </c:if>
				</tbody>
			</table>			
		</div>
		<%@ include file="/WEB-INF/views/module/pagination.jsp"%>	
		</div>
	</div>
</body>