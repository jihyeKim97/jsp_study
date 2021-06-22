<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 계산기 Calculator</title>
	<link type="text/css" rel="stylesheet" 
	href='css/main.css'>
</head>
<body>
	<div id='header'>
		<h2>나의 계산기 Calculator</h2>
	</div>
	<div id='main'>
		<div id="cal">
			<% String[] bts = {
				"C", "0", ".", "+",
				"7", "8", "9", "-", 
				"4", "5", "6", "x", 
				"1", "2", "3", "÷" // ㄷ + 한자
			}; %>
			<form>
				<div id="display">
					<input type="text" readonly id="LCD" 
						size="12" placeholder="zero" value="1234" 
						name="lcd">
				</div>
				<div id='keypad'>
					<% for(int b = 0; b < 16; b++ ) { %>
<%-- 					<% if( b % 4 == 0 ) { %> --%>
<!-- 						<br> -->
<%-- 					<% } %> --%>
						<% if( b % 4 == 0 ) out.print("<br>"); %>
					<input type="button" class='bts' id="btn_<%=b%>" onclick=""
							value='<%= bts[b] %>'>
					<% } %>	
					<br>
					<input type="button" value='=' 
							id="btn_cal" class='bts'>	
				</div>
			</form>
		</div>
		<div id='history'>
		
		</div>
	</div>
	<div id='footer'>
		&copy;MyCal 2021
	</div>
</body>
</html>