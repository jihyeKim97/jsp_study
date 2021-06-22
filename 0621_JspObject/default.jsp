<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장객체</title>
</head>
<body>
	<h3>JSP 내장객체</h3>
	<h4> application 객체: 웹사이트 전체에서 글로벌로 공유되는 내장객체</h4>
	<% application.setAttribute("share", "20210821 공유"); 
				// 속성 공유 %> 
	
	<ul>
		<li>share키 공유 속성: <%= 
		(String)application.getAttribute("share") %></li>
		<li>
			문맥파람(web.xml) subject: 
			<%= application.getInitParameter("subject") %>
		</li> 
		<li> <a href='def_proc.jsp'>proc 페이지로 이동...</a></li>
	</ul>
	
	<h4> request 객체: 서버에서 해당 url 요청을 처리 시작 시 생성되고, 
	   응답 response가 만들어져서 클라이언트로 전송 시 소멸됨.</h4>
		<ul>
			<li> <a href="def_proc.jsp">get http no params</a></li>
			<li> <a href="def_proc.jsp?param1=abc">get http param1=abc</a></li>
			<li> <a href="def_proc.jsp?param1=">get http param1=</a></li>
			<li> <a href="def_proc.jsp?param1">get http param1</a></li>
			<li> <a href="def_proc.jsp?param1=abc&param2=123&param3=">
					get http multiple params</a></li>
		</ul>
		
		<h5> GET: </h5>
		<!-- http://localhost:8088/JspObject/def_proc.jsp?param1=abc&param2=123&param3=&param4= -->
		<form action="def_proc.jsp" method="get"> <!--  직렬화 묶여서 전송 -->
			<input type="text" name="param1" value="abc">
			<input type="number" name="param2" value="123" min='1' 
				max='1000' step='1'>
			<input type="text" name="param3" value="">
			<input type="text" name="param4">
			<input type="submit" value="form http get방식 전송">
		</form>
		
		<h5> POST: </h5>
		<!-- http://localhost:8088/JspObject/def_proc.jsp?param1=abc&param2=123&param3=&param4= -->
		<form action="def_proc.jsp" method="post"> <!--  직렬화 묶여서 전송 -->
			<input type="text" name="param1" value="abc">
			<input type="number" name="param2" value="123" min='1' 
				max='1000' step='1'>
			<input type="text" name="param3" value="">
			<input type="text" name="param4">
			<input type="submit" value="form http post방식 전송">
		</form>
</body>
</html>