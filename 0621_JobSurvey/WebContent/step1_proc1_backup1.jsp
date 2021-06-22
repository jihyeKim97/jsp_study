<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); 

	String name = request.getParameter("name");
	String ageStr = request.getParameter("age");
	int age = Integer.parseInt(ageStr);
	String gender = request.getParameter("gender"); // f, m
	String address = request.getParameter("address");
	String selfcheck = request.getParameter("selfcheck");
	
	// 필터링, 에러체크
	if( address == null || address.isEmpty() ) { %>
		<!-- 포워딩 (주소가 유지) -->
		<jsp:forward page="survey.jsp">
			<jsp:param value="1" name="step"/>
			<jsp:param value="10" name="errorCode"/>
		</jsp:forward>
	<%}
	
	// 페이지 데이터 공유를 위해 세션 도입
	// 각 단계의 설문 조사 내용을 세션에 저장처리...
	// 1단계 저장
	session.setAttribute("name", name);
	session.setAttribute("age", age);
	session.setAttribute("gender", gender);
	session.setAttribute("address", address);
	session.setAttribute("selfcheck", selfcheck);
%>

<!-- <div id="status"> -->
<!-- 	<h5> 설문 상태: </h5> -->
<!-- 	<ul> -->
<%-- 		<li> name: <%= name %> </li> --%>
<%-- 		<li> age: <%= age %> </li> --%>
<%-- 		<li> gender: <%= gender.equals("f") ? "여성": "남성" %> </li> --%>
<%-- 		<li> address: <%= address %> </li> --%>
<%-- 		<li> selfcheck: <%= selfcheck %> </li> --%>
<!-- 	</ul> -->
<!-- </div> -->


<!-- 스텝 2로 이동 -->
<% // URL 재지정...
	response.sendRedirect("survey.jsp?step=2");
%>