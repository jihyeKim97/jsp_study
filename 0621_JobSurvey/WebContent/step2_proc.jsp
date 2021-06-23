<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 1. 파람 추출
	request.setCharacterEncoding("UTF-8");
	//
	String[] slang = request.getParameterValues("slang");
	String[] clang = request.getParameterValues("clang");
	String[] os = request.getParameterValues("os");
	String[] platform = request.getParameterValues("platform");
%>

<% // 2. 에러 체크/필터링 
	// 기술 파트별로 한 개 이상 필수 선택!!
	if( slang == null || clang == null 
			|| os == null || platform == null ) {
%>
	<jsp:forward page="survey.jsp">
		<jsp:param value="2" name="step"/>
		<jsp:param value="30" name="errorCode"/>
	</jsp:forward>
<%  } %>

<% // 3. 세션 저장
	session.setAttribute("slang", slang); // 속성 Object
	session.setAttribute("clang", clang); // 속성 Object
	session.setAttribute("os", os); // 속성 Object
	session.setAttribute("platform", platform); // 속성 Object
%>

<% // 4. 다음 단계 폼페이지 이동(리다이렉션)
	response.sendRedirect("survey.jsp?step=3");
%>