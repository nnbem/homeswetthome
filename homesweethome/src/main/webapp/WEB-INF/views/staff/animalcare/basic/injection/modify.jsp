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
	</style>
</head>

<body>
	<div class="content">
		<h1><b>접종기록 갱신</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>담당자ID</i>
				</div>
				<div class="name">
					<b>동물 이름</b><i>동물 이름</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button>접종 기록 갱신</button>
				<button>취소</button>
			</div>
		</div>
		
		<div class="table card-body table-responsive p-0">
			<table class="table" id="injection">
              <tr>
                  <td class="basic-title">동물등록번호</td>
                  <td>-</td>
                  <td class="basic-title">최신 접종일</td>
                  <td>-</td>
              </tr>
              <tr>
                  <td class="basic-title" rowspan="6">예방접종</td>
                  <td colspan="3" class="injection-num">
                  	<p>종합백신:</p>
                  	1차: <input type="radio" class="table-input-radio" name="VACCINE">
                  	2차: <input type="radio" class="table-input-radio" name="VACCINE">
                  	3차: <input type="radio" class="table-input-radio" name="VACCINE">
                  	4차: <input type="radio" class="table-input-radio" name="VACCINE">
                  	5차: <input type="radio" class="table-input-radio" name="VACCINE">
                  </td>
              </tr>
              <tr>
                  <td colspan="3" class="injection-num">
                  	<p>광견병:</p>
                    1차: <input type="radio" class="table-input-radio" name="RABIES">
                  	2차: <input type="radio" class="table-input-radio" name="RABIES">
                  </td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num">
                  	<p>코로나:</p>
                  	1차: <input type="radio" class="table-input-radio" name="COVID">
                  	2차: <input type="radio" class="table-input-radio" name="COVID">
                  	3차: <input type="radio" class="table-input-radio" name="COVID">
                  </td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num">
                  	<p>인플루엔자:</p>
                  	접종 유무: <input type="checkbox" class="table-input-checkbox" name="INFLUENZA">
                  </td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num">
                  	<p>켄넬코프:</p>
                  	1차: <input type="radio" class="table-input-radio" name="KENNELCOUGH">
                  	2차: <input type="radio" class="table-input-radio" name="KENNELCOUGH">
                  	3차: <input type="radio" class="table-input-radio" name="KENNELCOUGH">
                  </td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num">
                  	<p>백혈병:</p>
                  	1차: <input type="radio" class="table-input-radio" name="LEUKEMIA">
                  	2차: <input type="radio" class="table-input-radio" name="LEUKEMIA">
                  	3차: <input type="radio" class="table-input-radio" name="LEUKEMIA">
                  	4차: <input type="radio" class="table-input-radio" name="LEUKEMIA">
                  </td>               	
              </tr>
              <tr>
                  <td class="basic-title">심장사상충 투약</td>
                  <td colspan="3" class="injection-num">
               	  	<p style="width: 50px">투약일:</p><input type="date" class="table-input-date">
                  </td>
              </tr>
              <tr>
                  <td class="basic-title">구충제 투약</td>
                  <td colspan="3" class="injection-num" id="authelmintic">
	                  <p style="width: 50px">몸무게:</p><label>-</label>
	                  <p style="width: 50px">투약일:</p><input type="date" class="table-input-date">
                  </td>
              </tr>
        	</table>
		</div>
	</div>
</body>