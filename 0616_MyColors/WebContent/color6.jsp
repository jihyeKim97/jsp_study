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
<title>MyColors 페이지 6</title>
<style type="text/css">
	body {
		background-color: darkgray;
	}
	.box {
		color: silver;
		border: 1px dotted silver;
		width: 120px;
		font-size: x-small;
		font-weight: bold;
		text-align: center;
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
		//alert(color);
		console.log(color);
		
		var selColorSpan = 
			document.getElementById('selColor');
		selColorSpan.innerHTML = color;
		selColorSpan.style.backgroundColor = color;
	}
</script>

</head>
<body>
	<h2>MyColors 페이지 6</h2>
	<div id='palette'>
<!-- 	  <form action="report/color_result1.jsp" method="get">  -->
	<form action="report/color_result.jsp" method="get">
	  			<!-- 
	  				HTTP GET 메소드로 전송
	  				action 전송할 타켓 주소 URL 
	  			-->
	  	<label for='theme_name'>테마 이름:</label>
	  	<input type="text" id='theme_name' name="name" size="30" 
	  			placeholder="컬러팔레트 이름 입력" required>	  	
	  	
		<fieldset>
			<legend>::기본 컬러들::</legend>
			<div class="box bgred">
				<input type="checkbox" name='colors' id='cr1' value="FF0000">
				<label for='cr1'><span onclick="showColor('#FF0000')">color: red</span></label>				
			</div>
			
			<div class="box bggreen">
				<input type="checkbox" name='colors' id='cr2' value="00FF00">
				<label for='cr2'><span onclick="showColor('#00FF00')">color: green</span></label>
			</div>
			<div class="box bgblue">
				<input type="checkbox" name='colors' id='cr3' value="0000FF">
				<label for='cr3'><span onclick="showColor('#0000FF')">color: blue</span></label>
			</div>
			<div class="box bgwhite">
				<input type="checkbox" name='colors' id='cr4' value="FFFFFF">
				<label for='cr4'><span onclick="showColor('#FFFFFF')">color: black</span></label>
			</div>
			<div class="box bgblack">
				<input type="checkbox" name='colors' id='cr5' value="000000">
				<label for='cr5'><span onclick="showColor('#000000')">color: white</span></label>
			</div>
<!-- 			<div class="box fgnone"> -->
<!-- 				<input type="checkbox" name='colors' id='cr6' value="FF0000"> -->
<!-- 				<span>color: none</span> -->
<!-- 			</div>		 -->
		</fieldset>
		<fieldset>
			<legend>::랜덤 컬러들::</legend>
			<%
				String bgColor = "#FFFF00";
			%>
			<%				
				for(int i = 1; i <= crCount; i++ ) {
					String rCr = getRandomColor();
					int crId = i + 5;	// 6~
			String chk = "<input type='checkbox' name='colors' "+
					"id='cr"+crId+"' value='"+ rCr +"'>";
			%>
			
<!-- 				<div class="box fgnone"> -->
<!-- 					<span>color: none</span> -->
<!-- 				</div>		 -->
				<%= 
		"<div class='box' "+
		"style='background-color: #"+rCr
			+"'>" + chk +
		"<label for='cr"+crId+"'><span onclick=\"showColor('#"+rCr
				+"')\">color: "+ i +"번 색</span></label></div>" 
				
				%>
			
			<% } %>
		</fieldset>
	</div>
	
	<h3>클릭한 컬러: <span id="selColor">&nbsp;</span></h3>
	
	<label for="crCount">팔레트에서 총컬러 수: </label>
		<input type="text" name="crCount" value="<%= crCount+5 %>" 
				readonly size='2'> <br>
	<input type="reset" value="선택 초기화"> &nbsp;			
	<input type="submit" value='선택한 컬러들을 테마로써 전송'>			
	
	</form>
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
// 		return "#"+ranCr;
		return ranCr;
	}

%>






