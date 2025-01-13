<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>

<%
    // 로그인 여부 확인 (세션을 통해 확인)
    Boolean isLoggedIn = session.getAttribute("user") != null;
%>

<%@ include file="/WEB-INF/views/module/module_m/member_header.jsp"%>
<decorator:head/>
 <%-- 로그인 여부에 따른 탑바 변경 --%>
<% if (isLoggedIn) { %>
	<%@ include file="/WEB-INF/views/module/module_m/member_user_topbar.jsp" %>
<% } else { %>
	<%@ include file="/WEB-INF/views/module/module_m/member_guest_topbar.jsp" %>
<% } %>

<%-- 공통 네비게이션 바 --%>
<%@ include file="/WEB-INF/views/module/module_m/member_nav.jsp"%>

<decorator:body/>
<%@ include file="/WEB-INF/views/module/module_m/member_footer.jsp"%>



