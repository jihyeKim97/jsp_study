<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String strCrCount = request.getParameter("color"); // "20" "10"
	System.out.println("param:: strCrCount = " + strCrCount );
	int crCount = 6; // 랜덤 컬러개수
	if( strCrCount != null && !strCrCount.isEmpty() ) {
		crCount = Integer.parseInt(strCrCount);
		// "20" "10" => 20 10
		// http://localhost:8088/MyColors/color3.jsp?color=8
		// http://localhost:8088/MyColors/color3.jsp?color=100
		// HTTP get 파라미터 처리
		// http://localhost:8088/MyColors/color3.jsp?color=AAA
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyColors 페이지 3</title>
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

<script type="text/javascript">
	function showColor(color) {
		alert(color);
		console.log(color);
	}
</script>

</head>
<body>
	<h2>MyColors 페이지 3</h2>
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
					String rCr = getRandomColor();
			%>
			
<!-- 				<div class="box fgnone"> -->
<!-- 					<span>color: none</span> -->
<!-- 				</div>		 -->
				<%= 
		"<div class='box' "+
		"style='background-color:"+rCr
			+"'>" + 
		"<span onclick=\"showColor('"+rCr
				+"')\">color: "+ i +"번 색</span></div>" 
				
				%>
			
			<% } %>
		</fieldset>
	</div>
	
	
</body>
</html>

<%! 
	public String getRandomColor() {
		String ranCr = "";
		final int MAX = 256;
		int r, g, b;
		r = (int)(Math.random()*MAX); // 0 ~ 255
		String red = Integer.toHexString(r).toUpperCase();
							// 255 -> "FF"
		// 0 ~ 15 -> "0" ~ "F" => "00" ~ "0F"
		if( red.length() == 1 ) red = "0"+red;
		g = (int)(Math.random()*MAX); // 0 ~ 255
		String green = Integer.toHexString(g).toUpperCase();
		if( green.length() == 1 ) green = "0"+green;
		b = (int)(Math.random()*MAX); // 0 ~ 255
		String blue = Integer.toHexString(b).toUpperCase();
		if( blue.length() == 1 ) blue = "0"+blue;
		
		ranCr = red + green + blue;
		System.out.println("0x"+ranCr);
		return "#"+ranCr;
	}

%>






