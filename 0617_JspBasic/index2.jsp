<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Basic2</title>
	<script type="text/javascript">
		function showGugu(dan) {
			console.log("서버할 요청할 dan => " + dan);
			var tDan = (dan == undefined) ? 2: dan;
			var url = 'function/gugu.jsp?dan='+tDan;
			//location.replace(url);
			location.href = url;
		}
	</script>
</head>
<body>
	<h2>JSP Basic2</h2>
	<div id="gugu_menu">
		<ol>
			<li> HTTP GET 통신요청 :: 
			<a href='./function/gugu.jsp'>기본 고정 2단 구구단</a></li>
			<li> HTTP GET 통신요청 (dan 파람포함):: 
			<a href='./function/gugu.jsp?dan=3'>고정 3단파람 구구단</a></li>
			<li> HTTP GET 통신요청 (dan 파람포함, js이벤트):: 
			<a href='#' onclick="showGugu(4)">고정 4단 JS인자 구구단</a></li>
			
			<li> HTTP GET 통신요청 (dan 파람포함, form submit이벤트)::
				<form action="./function/gugu2.jsp" method="get">
					<label for='dansu'>단수: </label> 
					<input type="number" min='2' max='19' id='dansu' 
					 name='dan'	value='5'>단
						<input type="checkbox" id="dan_range" 
							name='range' value='o'>
						<label for='dan_range'> ~dan까지 범위로 표시</label>	
						
					<br> <input type="submit" value="구구단 범위로 보여줘!">	
				</form>
			</li>
			<li> 
				<script type="text/javascript">
					function showGuguRange() {
						var danInput = document.getElementById('dansu');
						var dan = danInput.value;
						console.log("서버할 요청할 dan => " + dan);
						var tDan = (dan == undefined) ? 2: dan;
						
						var dan_range = document.getElementById('dan_range');
						console.log( dan_range );
// 						var url = 'function/gugu2.jsp?dan='+tDan;
						//location.replace(url);
						var url = 'function/gugu2.jsp?dan='
								+tDan + 
							(dan_range.checked == true ? 
									"&range="+dan_range.value : '');
						location.href = url;
					}
				</script>
				HTTP GET 통신요청 (dan 파람포함, js 추출한 가변파람들)::
				<a href='#' onclick="showGuguRange()">js 추출 파람까지 구구단</a>
			</li>
		</ol>
	</div>
</body>
</html>