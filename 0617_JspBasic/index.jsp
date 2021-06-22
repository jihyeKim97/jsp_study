<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Basic</title>
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
	<h2>JSP Basic</h2>
	<div id="gugu_menu">
		<ol>
			<li> HTTP GET 통신요청 :: 
			<a href='./function/gugu.jsp'>기본 고정 2단 구구단</a></li>
			<li> HTTP GET 통신요청 (dan 파람포함):: 
			<a href='./function/gugu.jsp?dan=3'>고정 3단파람 구구단</a></li>
			<li> HTTP GET 통신요청 (dan 파람포함, js이벤트):: 
			<a href='#' onclick="showGugu(4)">고정 4단 JS인자 구구단</a></li>
		</ol>
	</div>
</body>
</html>