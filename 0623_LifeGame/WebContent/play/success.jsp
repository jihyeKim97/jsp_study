<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인생게임 성공!</title>
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
	 	<img src="https://www.fuckupnights.com/wp-content/uploads/2019/05/Failure_Success-blog-featured-image-862x559.jpg"> 	
	
	</div>
	
	<%@ include file="_cookie.jsp" %>
	
	<div>
		<a href='<%= application.getContextPath() %>/game.jsp?msg=replay&name=<%= session
		.getAttribute("name") %>'>인생게임 재도전!!</a> | 
		<a href='<%= application.getContextPath() 
			%>/logout_proc.jsp?quit=success&name=<%= session
			.getAttribute("name") %>'>
		로그아웃(그만두고 게임 종료)</a>
	</div>
</body>
</html>