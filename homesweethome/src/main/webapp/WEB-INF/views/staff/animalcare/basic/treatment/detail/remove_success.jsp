<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("진료 기록이 삭제되었습니다.");
	location.href='/staff/animalcare/basic/treatment?aid='+'${treatment.aid}';
</script>