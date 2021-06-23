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
		<% String scl = request.getParameter("name"); %>
		<h3> 환영합니다!! 수석/아키텍쳐: 
		'<%= scl %>'님</h3>
		<p style="color: blue">
			'<%= scl %>'님은 특별히 저희 인사지원팀에서 담당자가 따로 '
			연락을 드리겠습니다.
		</p>
		<div id="gift">
			선물 이벤트 코드: <%= request.getParameter("eventCode") %>
			<br>
			<% if( request.getAttribute("coupon") != null ){ %>
				<% String couponCode = 
					(String)request.getAttribute("coupon"); 
					out.println("<h3> 스타*스 프라츼노 쿠폰: "
					+ "JOBSVY2021_" + couponCode +"</h3>");					
					%>					
			<% } else { %>
				<h4> 쿠폰 없음..</h4>
			<% } %>
		</div>
	</div>
	<div id='footer'>
		<jsp:include page='<%= "../common/" + "_footer.jsp" %>' /> 
	</div>
</body>
</html>