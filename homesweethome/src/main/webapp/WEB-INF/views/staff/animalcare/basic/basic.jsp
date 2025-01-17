<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
   	<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <style>
      button#injection-regist{
         margin-left: 10px;
          padding: 0 5px;
          border: 1px solid #333333;
          border-radius: 5px;
      }
   </style>
</head>

<body>
<div class="innerWrapper">
   <div class="content">
      <h1><b>${basic.name }의 기본정보</b></h1>
      <div class="detail">
         <div class="text-wrapper" id="text-wrapper">
            <div class="id">
               <b>담당자</b><i>${basic.eid }</i>
            </div>
            <div class="name">
               <b>동물 이름</b><i>${basic.name }</i>
            </div>
         </div>
         <div class="button-wrapper" id="button-wrapper">
            <button class="download">문서 다운로드</button>
            <button class="qr">QR코드 다운로드</button>
            <button class="modify">동물 기록 수정</button>
            <button class="remove">동물 기록 삭제</button>
         </div>
      </div>
      <div class="shortcut">
         <div class="treatment shortcut-detail">
            <div class="title">
               <b>진료기록</b>
               <button><img alt="shortcut" src="<%=request.getContextPath()%>/resources/image/p/shortcut.png"></button>
            </div>
            <ul>
               <li>2024-12-22 건강 진찰</li>
               <li>2024-12-20 물린 상처 치료</li>
               <li>2024-10-03 피부 진찰</li>
            </ul>
         </div>
         <div class="injection shortcut-detail">
            <div class="title">
               <b>접종기록</b>
               <button><img alt="shortcut" src="<%=request.getContextPath()%>/resources/image/p/shortcut.png"></button>
            </div>
            <div class="activity-detail">
               <ul>
                  <li>2024-12-21</li>
                  <li>2024-12-10</li>
                  <li>2024-10-03</li>
               </ul>
                  <button id="injection-regist">접종기록 등록</button>
            </div>
         </div>
         <div class="activity shortcut-detail">
            <div class="title">
               <b>생활기록</b>
               <button><img alt="shortcut" src="<%=request.getContextPath()%>/resources/image/p/shortcut.png"></button>
            </div>
            <div class="activity-detail">
               <ul class="activity-list">
                  <li>2024-12-25</li>
                  <li>2024-12-24</li>
                  <li>2024-12-23</li>
               </ul>
               <div class="food">
                  <div class="food-type" id="food-type">사료 섭취 권장량</div>
                  <div class="food-content">130g</div>
               </div>
            </div>
                     
         </div>
      </div>
      <div class="table card-body table-responsive p-0">
         <table class="table" id="basic">
               <tr>
                   <td class="basic-title">보호동물ID</td>
                   <td>${basic.aid }</td>
                   <td class="basic-title">상태</td>
                   <td>${basic.state }</td>
               </tr>
               <tr>
                   <td class="basic-title">품종</td>
                   <td>${basic.breed }</td>
                   <td class="basic-title">종류</td>
                   <td>${basic.kind }</td>
               </tr>
               <tr>
                   <td class="basic-title">성별</td>
                   <td>${basic.age }</td>
                   <td class="basic-title">모색</td>
                   <td>${basic.color }</td>
               </tr>
               <tr>
                   <td class="basic-title">구조일</td>
                   <td><fmt:formatDate value="${basic.regdate }" pattern="yyyy-MM-DD"/></td>
                   <td class="basic-title">센터입소일</td>
                   <td><fmt:formatDate value="${basic.receive_date }" pattern="yyyy-MM-DD"/></td>
               </tr>
               <tr>
                   <td class="basic-title">추정나이</td>
                   <td>${basic.age }</td>
                   <td class="basic-title">중성화</td>
                   <td>${basic.neutralization }</td>
               </tr>
               <tr>
                   <td class="basic-title">성격</td>
                   <td >${basic.character }</td>
                   <td class="basic-title">몸무게</td>
                   <td >${basic.weight }kg</td>
               </tr>
               <tr>
                   <td class="basic-title">발견장소</td>
                   <td colspan="3">${basic.spot }</td>
               </tr>
               <tr>
                   <td class="basic-title">기타/특이사항</td>
                   <td colspan="3">${basic.other }</td>
               </tr>
           </table>
      </div>
   </div>
   </div>
</body>