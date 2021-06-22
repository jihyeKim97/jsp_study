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
			margin: 0px auto;
		}
		
		div#result {
/* 			width: 100%; */
			width: 400px;
			height: 80px;
			border: 2px dotted green;
			padding: 20px;
		}
	</style>
	<script type="text/javascript">
		function selImage(ran) { // 1~3 ==> 0~2
			var result = ''; // null
			var msgs = ['미국 조류: 새가 부리가 아주 귀엽네..', 
				'화산재가 날아가는 아주 무서운 재해..', 
				'전쟁이 싫어요.. 폭탄 안됩니다..'];
			
			result = "image sel 결과: " + msgs[ran-1];
			console.log(result);
			alert(result);
		}
		
		function showDetail(ran) { // 1~3 ==> '0'~2
			var result = ''; // null
			var msgs = ['미국 조류: 새가 부리가 아주 귀엽네..', 
				'화산재가 날아가는 아주 무서운 재해..', 
				'전쟁이 싫어요.. 폭탄 안됩니다..'];
			
			result = "image sel 결과: " + msgs[ran-1];
			console.log(result);
// 			alert(result); // ctrl+shitf+c 주석토글키
			var resultDiv = document.getElementById('result');
			resultDiv.innerHTML = "<p>" + result + '</p>';
		}
	</script>
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
		<ul>
			<li><img 
			src="./img/Toni_kestrel_phyllis_tseng_wbf.jpg.webp" 
							alt='미국 조류' onclick="showDetail(1)"> </li>
			<li><img 
			src="./img/Vertical_eruption_at_Pinatubo,_1991.jpg.webp" 
							alt='화산 폭발' onclick="showDetail(2)"></li>
			<li><img 
			src="./img/B-29s_June_1944.jpg.webp" 
							alt='폭격기 전쟁' onclick="showDetail(3)"></li>
		</ul>
		
		<div id='result'></div>
		
		<% } else if (ran == 1) { %>
		<img 
			src="./img/Toni_kestrel_phyllis_tseng_wbf.jpg.webp" 
						alt='미국 조류' onclick="selImage(1)">
		<% } else if(ran == 2) { %>
		<img 
			src="./img/Vertical_eruption_at_Pinatubo,_1991.jpg.webp" 
						alt='화산 폭발' onclick="selImage(2)">
		<% } else if(ran == 3) { %>
		<img 
			src="./img/B-29s_June_1944.jpg.webp" 
						alt='폭격기 전쟁' onclick="selImage(3)">				
		<% } else { %>
			<h4> 잘못된 ran 럭키번호! </h4>
		<% } %>							
		
	</div>
	<div id="footer">
		&copy;WikiNews 1.0
	</div>
</body>
</html>