<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int crCount = 6;
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyColors 페이지 1</title>
<style type="text/css">
	body {
		background-color: darkgray;
	}
	.box {
		color: silver;
		border: 1px dotted silver;
		width: 120px;
		min-height: 40px;
		box-sizing: border-box;
		padding: 10px;
		margin: 10px; 
		display: inline-block;
	}
	.bgred { background-color: red; }
	.bggreen { background-color: green; }
	.bgblue { background-color: blue; }
	.bgwhite { background-color: white; }
	.bgblack { background-color: black; }
	.fgnone { color: white; }
	
</style>
</head>
<body>
	<h2>MyColors 페이지 1</h2>
	<div id='palette'>
		<fieldset>
			<legend>::기본 컬러들::</legend>
			<div class="box bgred"><span>color: red</span></div>
			<div class="box bggreen"><span>color: green</span></div>
			<div class="box bgblue"><span>color: blue</span></div>
			<div class="box bgwhite"><span>color: black</span></div>
			<div class="box bgblack"><span>color: white</span></div>
			<div class="box fgnone"><span>color: none</span></div>		
		</fieldset>
		<fieldset>
			<legend>::랜덤 컬러들::</legend>
			<%
				String bgColor = "#FFFF00";
			%>
			<%
				for(int i = 1; i <= crCount; i++ ) {
			%>
			
<!-- 				<div class="box fgnone"> -->
<!-- 					<span>color: none</span> -->
<!-- 				</div>		 -->
				<%= 
		"<div class='box' "+
		"style='background-color:"+bgColor+"'>" + 
		"<span>color: "+ i +"번 색</span></div>" 
				
				%>
			
			<% } %>
		</fieldset>
	</div>
	
	
</body>
</html>

<%! 
	public String getRandomColor() {
		return "";
	}

%>