<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO EXP 안내 - <%= application.getInitParameter("projectName") %></title>
</head>
<body>
	<div id='header'>
		<%@ include file="../common/_header.jsp" %>
	</div>
	<div id="main">
		<h3> 죄송합니다!!! <%= session.getAttribute("name") %>님 
				(<%= request.getParameter("age") %>세)
		</h3>
		<p style='color: red'>
			본 직업설문 조사는 오직 IT 초보자 이상만을 위한 것입니다.
			<Br> 나중에 다시 지원하세요. 
		</p>
	</div>
	<div id='footer'>
		<jsp:include page='<%= "../common/" + "_footer.jsp" %>' /> 
	</div>
</body>
</html>