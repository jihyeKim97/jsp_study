<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String calValStr = request.getParameter("calVal"); //  계산결과값 파람 
	String calExpStr = request.getParameter("calExp"); // 계산식 파람
	
	// 서버(tomcat)의 메모리 상에 계산결과와 식을 기억시키자(저장)
	// application 내장 객체에 저장하자..
// 	ArrayList<String> history = new ArrayList<>();
	ArrayList<String> history = null;
 
	//
	if( application.getAttribute("history") == null ) { // 처음이네..
		history = new ArrayList<>();
	} else {  // 기존 히스토리 있네..
		history = (ArrayList<String>)
			application.getAttribute("history");
	}
	
	history.add(calExpStr + " = " + calValStr); // 이번차례 결과
	
	application.setAttribute("history", history); 
				// 속성으로 저장 key => value
%>
  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 결과 전송 페이지</title>
</head>
<body>
	<div id="header">
		<%@ include file="../common/_header.jsp" %>
	</div>
	<div id="main">	
		<h2>계산기 결과 전송 페이지</h2>
		<h3> 계산식: <%= calExpStr %></h3>	
		<h3> 계산결과: <%= calValStr %></h3>
		
		<hr width="40%" align="left">
		
		<h3>History:: (계산식: <%= history.size() %>개)</h3>
		<ul id="cal_history">
			<% for( String histo : history ) { %>
				<li> <%= histo %> </li>
			<% } %>
		</ul>
		
		<a href='../index3.jsp'>계산기로 돌아가기</a>
	</div>
	<div id="footer">
		<%@ include file="../common/_footer.jsp" %>
	</div>
</body>
</html>