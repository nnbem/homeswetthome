<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>

<body>
	<div class="content">
		<h1><b>접종기록</b></h1>
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
				<button class="download">문서 다운로드</button>
				<button class="qr">QR코드 다운로드</button>
				<button class="modify">접종 기록 수정</button>
			</div>
		</div>
		
		<div class="table card-body table-responsive p-0">
			<table class="table" id="basic">
              <tr>
                  <td class="basic-title">동물등록번호</td>
                  <td>-</td>
                  <td class="basic-title">접종일</td>
                  <td>-</td>
              </tr>
              <tr>
                  <td class="basic-title" rowspan="6">예방접종</td>
                  <td colspan="3" class="injection-num"><p>종합백신:</p><label>2차</label></td>
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>광견병:</p><label>2차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>코로나:</p><label>2차</label></td>               	
              </tr>
              
              <tr>
                  <td colspan="3" class="injection-num"><p>인플루엔자:</p><label>2차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>켄넬코프:</p><label>2차</label></td>               	
              </tr>
              <tr>
                  <td colspan="3" class="injection-num"><p>백혈병:</p><label>2차</label></td>               	
              </tr>
              <tr>
                  <td class="basic-title">심장사상충 투약</td>
                  <td colspan="3" class="injection-num"><p>투약일:</p><label>-</label></td>
              </tr>
              <tr>
                  <td class="basic-title">구충제 투약</td>
                  <td colspan="3" class="injection-num" id="authelmintic"><p>몸무게:</p><label>-</label><p>투약일:</p><label>-</label></td>
              </tr>
        	</table>
		</div>
	</div>
</body>