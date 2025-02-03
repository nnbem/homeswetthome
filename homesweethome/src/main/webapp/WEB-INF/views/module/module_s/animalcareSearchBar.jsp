<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="jobForm">
<div class="search-wrapper">
   <div class="check">
      <div class="date">
         <p>등록일:</p>
         <div class="date-select">
            <input class="date-input search-inputs" type="date" name="regdateBefore" pattern="yyyy-MM-DD" value="${pageMaker.regdateBefore }">
            <p>~</p>
            <input class="date-input search-inputs" type="date" name="regdateAfter" pattern="yyyy-MM-DD" value="${pageMaker.regdateAfter }">
         </div>
      </div>
      <div class="type">
         <div class="kind">
            <p>종류:</p>
            <div>
               <label>강아지</label><input class="search-inputs" type="checkbox" name="kindList" value="개" ${pageMaker.kindList.contains('개') ? 'checked':'' }>
            </div>
            <div>
               <label>고양이</label><input class="search-inputs" type="checkbox" name="kindList" value="고양이" ${pageMaker.kindList.contains('고양이') ? 'checked':''}>
            </div>
            <div>
               <label>기타</label><input class="search-inputs" type="checkbox" name="kindList" value="기타" ${pageMaker.kindList.contains('기타') ? 'checked':'' }>
            </div>
         </div>
         <div class="breed">
            <select name="breed" class="search-select">
            	<option selected disabled hidden value="">품종</option>
            	<c:if test="${not empty breedList }">
	            	<c:forEach var="breed" items="${breedList }">
	            		<option value="${breed.breed }" ${pageMaker.breed == breed.breed ? 'selected':''}>${breed.breed }</option>
	            	</c:forEach>
            	</c:if>
            </select>
         </div>
      </div>
      <div class="state">
         <p>상태:</p>
         <div>
            <label>공고중</label><input class="search-inputs" type="checkbox" name="stateList" value="공고중" ${pageMaker.stateList.contains('공고중') ? 'checked':'' }>
         </div>
         <div>
            <label>치료중</label><input class="search-inputs" type="checkbox" name="stateList" value="치료중" ${pageMaker.stateList.contains('치료중') ? 'checked':'' }>
         </div>
         <div>
            <label>입양가능</label><input class="search-inputs" type="checkbox" name="stateList" value="입양가능" ${pageMaker.stateList.contains('입양가능') ? 'checked':'' }>
         </div>
         <div>
            <label>입양완료</label><input class="search-inputs" type="checkbox" name="stateList" value="입양완료" ${pageMaker.stateList.contains('입양완료') ? 'checked':'' }>
         </div>
         <div>
            <label>관리완료(삭제)</label><input class="search-inputs" type="checkbox" name="stateList" value="관리완료" ${pageMaker.stateList.contains('관리완료') ? 'checked':'' }>
         </div>
      </div>
   </div>
   <div class="right-wrapper">
      <div class="search-bar" style="justify-content: flex-end; margin-bottom: 0px;">
         <button class="refresh-button" onclick="refresh(1);">⟳&nbsp;&nbsp;</button>
         <select name="perPageNum" id="perPageNum">
              <option value="10" ${pageMaker.perPageNum==10 ? 'selected':'' }>정렬개수</option>
              <option value="20" ${pageMaker.perPageNum==20 ? 'selected':'' }>20개씩</option>
              <option value="30" ${pageMaker.perPageNum==30 ? 'selected':'' }>30개씩</option>
              <option value="50" ${pageMaker.perPageNum==50 ? 'selected':'' }>50개씩</option>
         </select>
         <input class="search-inputs" type="text" placeholder="검색어를 입력하세요" name="name" id="name" value="${pageMaker.name }">
         <button class="search-button" type="submit" data-card-widget="search" onclick="pagenation_list(1);">검색</button>
      </div>
   </div>
</div>
<input type='text' class="page" name="page" value="" style="display: none;"/>
</form>   


















