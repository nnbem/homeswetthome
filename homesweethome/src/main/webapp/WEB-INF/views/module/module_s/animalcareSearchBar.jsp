<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form id="jobForm">
<div class="search-wrapper">
   <div class="check">
      <div class="date">
         <p style=" font-size: 15px;">센터입소일:</p>
         <div class="date-select">
            <input class="date-input" type="date" name="regdateBefore" pattern="yyyy-MM-DD" value="${pageMaker.regdateBefore }">
            <p>~</p>
            <input class="date-input" type="date" name="regdateAfter" pattern="yyyy-MM-DD" value="${pageMaker.regdateAfter }">
         </div>
      </div>
      <div class="type">
         <div class="kind">
            <p>종류:</p>
            <div>
               <label>강아지</label><input type="checkbox" name="kindList" value="개" ${pageMaker.kindList.contains('개') ? 'checked':'' }>
            </div>
            <div>
               <label>고양이</label><input type="checkbox" name="kindList" value="고양이" ${pageMaker.kindList.contains('고양이') ? 'checked':''}>
            </div>
            <div>
               <label>기타</label><input type="checkbox" name="kindList" value="기타" ${pageMaker.kindList.contains('기타') ? 'checked':'' }>
            </div>
         </div>
         <div class="breed">
            <select>
               <option>품종</option>
            </select>
         </div>
      </div>
      <div class="state">
         <p>상태:</p>
         <div>
            <label>공고중</label><input type="checkbox" name="stateList" value="공고중" ${pageMaker.stateList.contains('기타') ? 'checked':'' }>
         </div>
         <div>
            <label>치료중</label><input type="checkbox" name="stateList" value="치료중" ${pageMaker.stateList.contains('치료중') ? 'checked':'' }>
         </div>
         <div>
            <label>입양가능</label><input type="checkbox" name="stateList" value="입양가능" ${pageMaker.stateList.contains('입양가능') ? 'checked':'' }>
         </div>
         <div>
            <label>입양완료</label><input type="checkbox" name="stateList" value="입양완료" ${pageMaker.stateList.contains('입양완료') ? 'checked':'' }>
         </div>
         <div>
            <label>관리완료(삭제)</label><input type="checkbox" name="stateList" value="관리완료" ${pageMaker.stateList.contains('관리완료') ? 'checked':'' }>
         </div>
      </div>
   </div>
   <div class="right-wrapper">
      <div class="search">
         <button class="back_button">
            <img alt="back"
               src="<%=request.getContextPath()%>/resources/image/p/back.png">
         </button>
         <select name="perPageNum" id="perPageNum">
              <option value="10" ${pageMaker.perPageNum==10 ? 'selected':'' }>정렬개수</option>
              <option value="20" ${pageMaker.perPageNum==20 ? 'selected':'' }>20개씩</option>
              <option value="30" ${pageMaker.perPageNum==30 ? 'selected':'' }>30개씩</option>
              <option value="50" ${pageMaker.perPageNum==50 ? 'selected':'' }>50개씩</option>
         </select>
         <input type="text" placeholder="검색어를 입력하세요" name="name" id="name" value="${pageMaker.name }">
         <button class="search_submit" type="submit" data-card-widget="search" onclick="pagenation_list(1);">검색</button>
      </div>
   </div>
</div>
   <input type='text' name="page" value="" style="display: none;"/>
   <input type='text' name="eid" value="" style="display: none;"/>
</form>   


















