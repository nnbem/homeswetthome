<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
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
				<button class="regist" onclick="regist_go();">접종 기록 등록</button>
				<button onclick="history.go(-1);">취소</button>
			</div>
		</div>
		
		<form id="post-form" method="post" action="regist/post" role="form" name="registForm">
			<div class="table card-body table-responsive p-0">
				<table class="table" id="injection">
	              <tr>
	                  <td class="basic-title">동물등록번호</td>
	                  <td><input type="text" class="table-input-text" name="aid" title="aid" id="aid" value="${animal.aid }" readonly="readonly"> </td>
	                  <td class="basic-title">최신 접종일</td>
	                  <td><input type="date" class="table-input-date" name="injection_date" title="injection_date" id="injection_date" readonly="readonly"></td>
	              </tr>
	              <tr>
	                  <td class="basic-title" rowspan="6">예방접종</td>
	                  <td colspan="3" class="injection-num">
	                  	<p>종합백신:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="0" >
	                  	1차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="1" >
	                  	2차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="2" >
	                  	3차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="3" >
	                  	4차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="4" >
	                  	5차: <input type="radio" class="table-input-radio" name="vaccine" title="vaccine" value="5" >
	                  </td>
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>광견병:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="0">
	                    1차: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="1">
	                  	2차: <input type="radio" class="table-input-radio" name="rabies" title="rabies" value="2">
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                   	<p>코로나:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="covid" title="covid" value="0">
	                  	1차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="1">
	                  	2차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="2">
	                  	3차: <input type="radio" class="table-input-radio" name="covid" title="covid" value="3">
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>인플루엔자:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="influenza" title="influenza" value="0">
	                  	접종 : <input type="radio" class="table-input-radio" name="influenza" title="influenza" value="1">
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>켄넬코프:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="0">
	                  	1차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="1">
	                  	2차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="2">
	                  	3차: <input type="radio" class="table-input-radio" name="kennelcough" title="kennelcough" value="3">
	                  </td>               	
	              </tr>
	              <tr>
	                  <td colspan="3" class="injection-num">
	                  	<p>백혈병:</p>
	                  	미접종: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="0">
	                  	1차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="1">
	                  	2차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="2">
	                  	3차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="3">
	                  	4차: <input type="radio" class="table-input-radio" name="leukemia" title="leukemia" value="4">
	                  </td>               	
	              </tr>
	              <tr>
	                  <td class="basic-title">심장사상충 투약</td>
	                  <td colspan="3" class="injection-num">
	               	  	<p style="width: 50px">투약일:</p>
	               	  	<input type="date" class="table-input-date" name="heartworm" title="heartworm" id="heartworm">
	                  </td>
	              </tr>
	              <tr>
	                  <td class="basic-title">구충제 투약</td>
	                  <td colspan="3" class="injection-num" id="authelmintic">
		                  <p style="width: 50px">몸무게:</p><label>${animal.weight }</label>
		                  <p style="width: 50px">투약일:</p>
		                  <input type="date" class="table-input-date" name="authelmintic" title="authelmintic" id="authelmintic-input">
	                  </td>
	              </tr>
	        	</table>
	        	<input type="text" title="관리자 id" class="notNull" name="eid" value="${animal.eid}" style="display: none;">
			</div>
		</form>
	</div>
</div>
<script>
document.getElementById('injection_date').value = new Date().toISOString().substring(0, 10);
document.getElementById('heartworm').value = new Date().toISOString().substring(0, 10);
document.getElementById('authelmintic-input').value = new Date().toISOString().substring(0, 10);
function regist_go() {
	/* 유효성 검사 */
	var form = document.forms.registForm;

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
	
	form.action="regist/post";
	form.method="post";
	form.submit();

}

</script>


</body>







