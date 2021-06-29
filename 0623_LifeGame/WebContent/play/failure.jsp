<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인생게임 실패!</title>
</head>
<body>
	<h1><%= application.getInitParameter("projName") %>
		- <%= request.getAttribute("msg") %>	
	</h1>
	
	<div id='result'>
		<h4>'<%= session
		.getAttribute("name") %>'님의 인생게임 결과::</h4>
		<ul>
	 		<li>생일: <%= session.getAttribute("birthday") %></li>
	 		<li>탄생석: <%= session.getAttribute("birthstone") %>
	 				<img src="images/<%= session.getAttribute("birthstone") 
	 					%>.jpg" width="48px" height="48px">			
	 		</li>
	 		<li>능력치: <%= session.getAttribute("ability") %>pt</li>
	 		<li>최종 누적 경험치: <%= session.getAttribute("xp") %>xp</li>
	 		<li>총 플레이 회수: <%= session.getAttribute("playOrder") %>회</li>
	 	</ul>
	 	<img src="https://mykoreanramblings.files.wordpress.com/2014/09/eca28ceca088eab888eca7801.png?resize=250%2C306"> 	
	
	</div>
	
		<%@ include file="_cookie.jsp" %>	
	
	<div>
		<a href='<%= application.getContextPath() %>/game.jsp?msg=replay&name=<%= session
		.getAttribute("name") %>'>인생게임 재도전!!</a> | 
		<a href='<%= application.getContextPath() 
			%>/logout_proc.jsp?quit=failure&name=<%= session
			.getAttribute("name") %>'>
		로그아웃(그만두고 게임 종료)</a>
	</div>
</body>
</html>