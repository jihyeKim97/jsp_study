<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	final String[] positions = {
		"모름","기획자", "UI/UX 디자이너",
		"프론트엔드 개발자", "백엔드 server개발자", 
		"백엔드 DB개발자", "데스크탑 개발자", 
		"모바일 앱 개발자", "기술 마케터", 
		"기술 세일즈", "QA 테스터"
	};
	String position = request.getParameter("position");
	session.setAttribute("position", 
			positions[Integer.parseInt(position)]);
	
	response.sendRedirect("survey.jsp?step=4");	
%>  

