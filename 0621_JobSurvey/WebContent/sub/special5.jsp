<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Special 안내 - <%= application.getInitParameter("projectName") %></title>
</head>
<body>
	<div id='header'>
		<%@ include file="../common/_header.jsp" %>
	</div>
	<div id="main">
		
	</div>
	<div id='footer'>
		<jsp:include page='<%= "../common/" + "_footer.jsp" %>' /> 
	</div>
</body>
</html>