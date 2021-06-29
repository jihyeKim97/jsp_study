<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
// https://ko.wikipedia.org/wiki/%ED%83%84%EC%83%9D%EC%84%9D
	final String[] BIRTHSTONE = { // 1월 => 12월, 영문이름 이미지파일명
	 "가넷(garnet)", "애머시스트(amethyst)",
	 "아쿠아마린(aquamarine)", "다이아몬드(diamond)",
	 "에메랄드(emerald)",	"진주(pearl)",
	 "루비(ruby)", "페리도트(peridot)",
	 "사파이어(sapphire)","오팔(opal)",
	 "토파즈(topaz)", "터콰이즈(turquoise)" 
 	};
 %>
 	<%
 		String msg = request.getParameter("msg");
 		String pName = request.getParameter("pName");
 	%>
 
 	
 	<div id="ready">
 		<h4>뱀주사위/게임오브라이프 인생게임 플레이어 등록::</h4>
 		<form action="register_proc.jsp" method="post">
 			<label for="name">플레이어 이름:</label>
 			<input type="text" id="name" name="name" 
 				placeholder="플레이어 실명 입력" size="30" 				
 				<%= pName != null && !pName.isEmpty() ?
 					 " value='"+pName+"'": ""%> 			
 					 	
 				> <br>
 			
 			<label for="birthday">플레이어 생년월일:</label>
 			<input type="date" id="birthday" name="birthday">	<br>
 			
 			<label for="birthstone">플레이어 탄생석:</label>
 			<select id='birthstone' name='birthstone'>
 				<option value='none' selected>모름</option>
 				<% for(int b=0; b< BIRTHSTONE.length;b++) { %>
 					<% String enBS = BIRTHSTONE[b]
 							.split("\\(")[1].split("\\)")[0];
 						//  split() 정규식 인자..						
 					%> 				
 					<option value='<%= enBS %>'>
 						<%=(b + 1)+ "월 " +BIRTHSTONE[b]%></option>
 				<% } %>
 			</select> <br>
 			
 			<div id="bsshow">
 				<img id="bsImage" 
 					src="https://via.placeholder.com/100/0000FF/FFFF00" 
 					width="100px" height="100px"
 					alt="none">
 				<b id="bsName">none</b>
 			</div>
 				
 			<input type="submit" value="인생게임 시작!!">	
 		</form>	
 	
 	</div>