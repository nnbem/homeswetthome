<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<nav aria-label="Navigation">
	<ul class="pagination justify-content-center m-0">
		<li class="page-item">
			<a class="page-link" href="javascript:search_list(1);">
				<i class="fas fa-angle-double-left"></i>
			</a>
		</li>
		<li class="page-item">
			<a class="page-link" href="javascript:search_list(${pageMaker.prev ? pageMaker.startPage-1 : pageMaker.page});">
				<i class="fas fa-angle-left"></i>
			</a>
		</li>
		<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
			<li class="page-item ${pageMaker.page == pageNum?'active':''}">
				<a class="page-link" href="javascript:search_list(${pageNum });">
					${pageNum }
				</a>
			</li>
		</c:forEach>	
		<li class="page-item">
			<a class="page-link" href="javascript:search_list(${pageMaker.next ? pageMaker.endPage+1 : pageMaker.page});">
				<i class="fas fa-angle-right"></i>
			</a>
		</li>	
		<li class="page-item">
			<a class="page-link" href="javascript:search_list(${pageMaker.realEndPage });">
				<i class="fas fa-angle-double-right"></i>
			</a>
		</li>				
	</ul>
</nav>



<form id="jobForm" style="display:none;">	
	<input type='text' name="page" value="" />
	<input type='text' name="perPageNum" value=""/>
	<input type='text' name="searchType" value="" />
	<input type='text' name="keyword" value="" />
</form>

<script>
function search_list(page){
    let perPageNum = document.querySelector('select[name="perPageNum"]').value;
    let searchType = document.querySelector('select[name="searchType"]').value;
    let keyword = document.querySelector('input[name="keyword"]').value;

    // perPageNum이 "정렬개수"일 경우 빈 값 유지 (서버에서 기본값 처리)
    if (perPageNum === "") {
        perPageNum = ""; // 서버가 기본값을 자동 적용하도록 유지
    }

    let form = document.querySelector("#jobForm");
    form.page.value = page;
    form.perPageNum.value = perPageNum;
    form.searchType.value = searchType;
    form.keyword.value = keyword;

    form.submit();
}
</script>


