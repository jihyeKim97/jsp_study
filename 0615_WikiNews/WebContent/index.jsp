<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WikiNews 1.0</title>
	<style type="text/css">
		div {
			width: 80%;
			min-height: 60px;
			border: 1px solid blue;
		}
	</style>
</head>
<body>
	<% 
		// 자바 영역
		int ran = (int)(Math.random()*4); // 0 ~ 3
		System.out.println("ran = " + ran); //콘솔
		
	%>
	<div id="header">
		<h2> 위키피디아 오늘의 뉴스 </h2>
	</div>
	<div id="main">	
		<h3> Today News: <%= ran %></h3>
		<a href='https://en.wikipedia.org/wiki/Main_Page'>위키피디아</a>
		
		<% if(ran == 0) { %>
		<style>
			img {
				width: 100px; height: 100px;
			}
			img:hover {
				opacity: .5;
			}
			ul {
				list-style-type: none;
			}
			ul li {
				display: inline-block;
				margin: 20px;
				border: 4px solid gray;
			}
			ul li:hover {
				border: 6px solid red;
			}
		</style>
		<% } %>
		<ul>
			<li><img 
			src="./img/Toni_kestrel_phyllis_tseng_wbf.jpg.webp" 
							alt='미국 조류'> </li>
			<li><img 
			src="./img/Vertical_eruption_at_Pinatubo,_1991.jpg.webp" 
							alt='화산 폭발'></li>
			<li><img 
			src="./img/B-29s_June_1944.jpg.webp" 
							alt='폭격기 전쟁'></li>
		</ul>
		
	</div>
	<div id="footer">
		&copy;WikiNews 1.0
	</div>
</body>
</html>