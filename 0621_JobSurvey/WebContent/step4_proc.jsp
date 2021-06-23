<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");  

	String salary = request.getParameter("salary");
	String welfare = request.getParameter("welfare");
	String sla = request.getParameter("sla");
	
	if( welfare == null || welfare.isEmpty() ) {
%>
		<jsp:forward page="survey.jsp">
			<jsp:param value="4" name="step"/>
			<jsp:param name="errorCode" value="40"/>
		</jsp:forward>
<% } 

	if( sla == null || sla.isEmpty() ) {
%>
		<jsp:forward page="survey.jsp">
			<jsp:param value="4" name="step"/>
			<jsp:param name="errorCode" value="43"/>
		</jsp:forward>
<%  } %>		

<%
	session.setAttribute("salary", salary);
	session.setAttribute("welfare", welfare);	
%>

<% response.sendRedirect("survey.jsp?step=5"); %>
