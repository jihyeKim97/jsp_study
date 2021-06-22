<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DEF Proc 페이지</title>
</head>
<body>
	<h3> DEF Proc 페이지 </h3>
	
	<h4> request: </h4>
		<ul>
			<li> scheme/protocol: <%= request.getScheme() %></li>
			<li> RequestURL: <%= request.getRequestURL() %></li>
			<li> RequestURI: <%= request.getRequestURI() %></li>
			<li> Method: <%= request.getMethod() %></li>
			<li> LocalAddr: <%= request.getLocalAddr() %></li>
			<li> LocalPort: <%= request.getLocalPort() %></li>
			<li> RemoteHost: <%= request.getRemoteHost() %></li>
			<li> QueryString(): <%= request.getQueryString() %></li>
			<li> param1: <%= request.getParameter("param1") %></li>
			<li> param2: <%= request.getParameter("param2") %></li>
			<li> param3: <%= request.getParameter("param3") %></li>						
		</ul>
	<h5> 파람들:</h5>	
	<ol>
		<% 
// http://localhost:8088/JspObject/def_proc.jsp?param1=abc&param2=123&param3=		
		Enumeration<String> params =  request.getParameterNames(); 
 			while( params.hasMoreElements() ) {
 				String param = params.nextElement();  
				out.println("<li>" + param + 
						" => " + request.getParameter(param) +
						"</li>"); // out 내장객체
 			 } 
		%>
	</ol>
<%-- 				<li> <%= param %> </li> --%>	
	
	<h4> application </h4>
	<ol>
		<li> 문맥 경로: <%= application.getContextPath() %> </li>
		<li> 서버 정보:<%= application.getServerInfo() %> </li>
		<li> 문맥 이름: <%= application.getServletContextName() %> </li>
		
		<li>share키 공유 속성: <%= 
		(String)application.getAttribute("share") %></li>
		
		<li>
			문맥파람(web.xml) subject: 
			<%= application.getInitParameter("subject") %>
		</li>
		
		<li>
			문맥파람(web.xml) today: 
			<%= application.getInitParameter("today") %>
		</li>
	</ol>
</body>
</html>