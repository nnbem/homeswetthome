<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>접종기록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${injection.eid }</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>${animal.name }</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" onclick="location.href='injection/modify?aid='+'${animal.aid}';">접종 기록 수정</button>
			</div>
		</div>
		
		<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
              <tr>
                  <td class="basic-title">동물등록번호</td>
                  <td>${injection.aid }</td>
                  <td class="basic-title">접종일</td>
                  <td><fmt:formatDate value="${injection.injection_date }" pattern="yyyy-MM-DD"/></td>
              </tr>
              <tr>
                  <td class="basic-title" rowspan="6">예방접종</td>
                  <td colspan="3" class="injection-num"><p>종합백신:</p><label>${injection.vaccine }차</label></td>
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>광견병:</p><label>${injection.rabies }차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>코로나:</p><label>${injection.covid }차</label></td>               	
              </tr>
              
              <tr>
                  <td colspan="3" class="injection-num"><p>인플루엔자:</p><label>${injection.influenza }차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>켄넬코프:</p><label>${injection.kennelcough }차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>백혈병:</p><label>${injection.leukemia }차</label></td>               	
              </tr>
              <tr>
                  <td class="basic-title">심장사상충 투약</td>
                  <td colspan="3" class="injection-num"><p>투약일:</p><label><fmt:formatDate value="${injection.heartworm }" pattern="yyyy-MM-DD"/></label></td>
              </tr>
              <tr>
                  <td class="basic-title">구충제 투약</td>
                  <td colspan="3" class="injection-num" id="authelmintic"><p>몸무게:</p><label>${animal.weight }kg</label><p>투약일:</p><label><fmt:formatDate value="${injection.authelmintic }" pattern="yyyy-MM-dd"/></label></td>
              </tr>
        	</table>
		</div>
	</div>
</div>
</body>