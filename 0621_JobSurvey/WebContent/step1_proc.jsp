<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); 

	String name = request.getParameter("name");
	String ageStr = request.getParameter("age");
	int age = Integer.parseInt(ageStr);
	String gender = request.getParameter("gender"); // f, m
	String address = request.getParameter("address");
	String selfcheck = request.getParameter("selfcheck");
	
	int num = 100;
	num++;
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

<% if(selfcheck != null && !selfcheck.isEmpty()) { %>
	<%  // scl0 IT경험없음 설문 중단..
	   if(selfcheck.equals("scl0")) { %>
		<jsp:forward page="sub/noexp.jsp">
			<jsp:param value="<%= ++num %>" name="num"/>
		</jsp:forward>		
	<% } else if(selfcheck.equals("scl5")) { 
		request.setAttribute("coupon", "scl5_zm_2136287632823");
		// 속성 추가
	%>
		<jsp:forward page="sub/special5.jsp">
			<jsp:param value="z-mart_event" name="eventCode"/>
		</jsp:forward>
		<!-- 파람 추가 -->
	<% } %>
<% } else { %>
	<% System.out.println("셀프체크 없음.!"); %>
<% } %>

<!-- 스텝 2로 이동 -->
<% // URL 재지정...
	num += 10;
	//response.sendRedirect("survey.jsp?step=2");
	response.sendRedirect("survey.jsp?step=2&num="+num);
%>