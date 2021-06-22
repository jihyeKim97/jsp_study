<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 계산기 Calculator3</title>
	<link type="text/css" rel="stylesheet" 
	href='css/main.css'>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<div id='header'>
<!-- 		<h2>나의 계산기 Calculator</h2> -->
		<%@ include file="common/_header.jsp"%>
		<!-- include 지시자는 해당 위치에 소스파일로 포함시켜 통합됨 -->
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
					<input type="button" class='bts' 
						id="btn_<%=b%>" onclick
		="<%= bts[b].equals("C") ? 
				"handleClearBtn()" :"handleBtn(this.value)"%>" 
							value='<%= bts[b] %>'>
					<% } %>	
					<br>
					<input type="button" value='=' onclick="submitCal()"
							id="btn_cal" class='bts'>	
							
							
				</div>
			</form>
		</div>
		<div id='history'>
			<ol type='i' id='history_cal'>				
			</ol>
		</div>
	</div>
	<div id='footer'>
<!-- 		&copy;MyCal 2021 -->
		<%@ include file="common/_footer.jsp" %>
	</div>
</body>
</html>