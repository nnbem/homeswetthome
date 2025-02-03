<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<style>
		td.injection-num{
			text-align: left;
		}
		input.table-input-radio{
			margin-right: 50px;
		}
	</style>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>접종기록 등록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${animal.eid}</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>${animal.name}</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="modify" onclick="modify_go();">접종 기록 수정</button>
				<button onclick="history.go(-1);">취소</button>
			</div>
		</div>
		
		<form id="post-form" method="post" action="modify/post" role="form" name="modifyForm">
			<div class="table card-body table-responsive p-0">
				<table class="table" id="injection">
	              <tr>
	                  <td class="basic-title">동물등록번호</td>
	                  <td><input type="text" class="table-input-text" name="aid" title="aid" id="aid" value="${animal.aid }" readonly="readonly"> </td>
	                  <td class="basic-title">최신 접종일</td>
	                  <td><input type="date" class="table-input-date" name="injection_date" title="injection_date" id="injection_date" readonly="readonly" value="<fmt:formatDate value="${injection.injection_date }" pattern="yyyy-MM-DD"/>"></td>
	              </tr>
	              <tr>
	                  <td class="basic-title" rowspan="6">예방접종</td>
	                  <td colspan="3" class="injection-num">
	                  	<p>종합백신:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="0" ${injection.vaccine == '0'? 'checked': '' }>
	                  	1차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="1" ${injection.vaccine == '1'? 'checked': '' }>
	                  	2차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="2" ${injection.vaccine == '2'? 'checked': '' }>
	                  	3차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="3" ${injection.vaccine == '3'? 'checked': '' }>
	                  	4차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="4" ${injection.vaccine == '4'? 'checked': '' }>
	                  	5차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="5" ${injection.vaccine == '5'? 'checked': '' }>
	                  </td>
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>광견병:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="0" ${injection.rabies == '0'? 'checked': '' }>
	                    1차: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="1" ${injection.rabies == '1'? 'checked': '' }>
	                  	2차: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="2" ${injection.rabies == '2'? 'checked': '' }>
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                   	<p>코로나:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="covid" title="covid" value="0" ${injection.covid == '0'? 'checked': '' }>
	                  	1차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="1" ${injection.covid == '1'? 'checked': '' }>
	                  	2차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="2" ${injection.covid == '2'? 'checked': '' }>
	                  	3차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="3" ${injection.covid == '3'? 'checked': '' }>
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>인플루엔자:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="influenza" title="influenza" value="0" ${injection.influenza == '0'? 'checked': '' }>
	                  	접종 : <input type="radio" class="table-input-radio" name="influenza" title="influenza" value="1" ${injection.influenza == '1'? 'checked': '' }>
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>켄넬코프:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="0" ${injection.kennelcough == '0'? 'checked': '' }>
	                  	1차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="1" ${injection.kennelcough == '1'? 'checked': '' }>
	                  	2차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="2" ${injection.kennelcough == '2'? 'checked': '' }>
	                  	3차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="3" ${injection.kennelcough == '3'? 'checked': '' }>
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>백혈병:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="0" ${injection.leukemia == '0'? 'checked': '' }>
	                  	1차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="1" ${injection.leukemia == '1'? 'checked': '' }>
	                  	2차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="2" ${injection.leukemia == '2'? 'checked': '' }>
	                  	3차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="3" ${injection.leukemia == '3'? 'checked': '' }>
	                  	4차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="4" ${injection.leukemia == '4'? 'checked': '' }>
	                  </td>               	
	              </tr>
	              <tr>
	                  <td class="basic-title">심장사상충 투약</td>
	                  <td colspan="3" class="injection-num">
	               	  	<p style="width: 50px">투약일:</p>
	               	  	<input type="date" class="table-input-date" name="heartworm" title="heartworm" id="heartworm" value="<fmt:formatDate value="${injection.heartworm }" pattern="yyyy-MM-DD"/>">
	                  </td>
	              </tr>
	              <tr>
	                  <td class="basic-title">구충제 투약</td>
	                  <td colspan="3" class="injection-num" id="authelmintic">
		                  <p style="width: 50px">몸무게:</p><label>${animal.weight }</label>
		                  <p style="width: 50px">투약일:</p>
		                  <input type="date" class="table-input-date" name="authelmintic" title="authelmintic" id="authelmintic-input" value="<fmt:formatDate value="${injection.authelmintic }" pattern="yyyy-MM-DD"/>">
	                  </td>
	              </tr>
	        	</table>
	        	<input type="text" title="관리자 id" class="notNull" name="eid" value="${animal.eid}" style="display: none;">
			</div>
		</form>
	</div>
</div>
<script>

function modify_go() {
	/* 유효성 검사 */
	var form = document.forms.modifyForm;

	var kindChecked = document.querySelector("input[name='vaccine']:checked");
	if (!kindChecked) {
	    alert("백신 접종 여부를 선택해주세요.");
	    return;
	}
	var kindChecked = document.querySelector("input[name='rabies']:checked");
	if (!kindChecked) {
	    alert("광견병 접종 여부를 선택해주세요.");
	    return;
	}
	var kindChecked = document.querySelector("input[name='covid']:checked");
	if (!kindChecked) {
	    alert("코로나 접종 여부를 선택해주세요.");
	    return;
	}
	var kindChecked = document.querySelector("input[name='influenza']:checked");
	if (!kindChecked) {
	    alert("인플루엔자 접종 여부를 선택해주세요.");
	    return;
	}
	var kindChecked = document.querySelector("input[name='kennelcough']:checked");
	if (!kindChecked) {
	    alert("켄넬코프 접종 여부를 선택해주세요.");
	    return;
	}
	var kindChecked = document.querySelector("input[name='leukemia']:checked");
	if (!kindChecked) {
	    alert("백혈병 접종 여부를 선택해주세요.");
	    return;
	}
	
	form.action="modify/post";
	form.method="post";
	form.submit();

}
</script>


</body>







