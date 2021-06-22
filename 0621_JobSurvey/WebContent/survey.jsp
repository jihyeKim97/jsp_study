<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= application.getInitParameter("projectName") %></title>
</head>
<body>
	<div id='header'>
		<!-- include 지시자: 소스차원에서 한 파일로 통합 후 
			컴파일되어 하나의 객체로써 동작 -->
		<%@ include file="common/_header.jsp" %>
	</div>
	<div id="main">
		<div id="step">
			<% if( currentStep == 1 ) { %>
				<%@ include file="_step1.jsp" %>
			<% } else if( currentStep == 2 ) { %>
				<%@ include file="_step2.jsp" %>
			<% } else if( currentStep == 3 ) { %>
				<%@ include file="_step3.jsp" %>
			<% } else if( currentStep == 4 ) { %>
				<%@ include file="_step4.jsp" %>
			<% } else if( currentStep == 5 ) { %>
				<%@ include file="_step5.jsp" %>			
			<% } else { %>
				<h2> 스텝이 없어요!!</h2>
			<% } %>
		</div>
	</div>
	<div id='footer'>
<%-- 		<%@ include file="common/_footer.jsp" %> --%>
<%-- 		<jsp:include page="common/_footer.jsp" /> --%>
		<!-- include 액션태그: 별도의 파일들로 각각 컴파일되어 따로 동작함 
		즉, 액션태그의 대상 조각 페이지로 이동하여 실행하고,
		그 조각 페이지의 실행결과를 호출부로 가져와서 결과를 통합. 
		-->
		<jsp:include page='<%= "common/" + "_footer.jsp" %>' /> 
	</div>
</body>
</html>