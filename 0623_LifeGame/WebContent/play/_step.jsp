<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div id="status">
 	<h4>'<%= session.getAttribute("name") %>'님이 인생게임 play중... </h4>
 	<ul>
 		<li>생일: <%= session.getAttribute("birthday") %></li>
 		<li>탄생석: <%= session.getAttribute("birthstone") %>
 				<img src="images/<%= session.getAttribute("birthstone") 
 					%>.jpg" width="48px" height="48px">			
 		</li>
 		<li>능력치: <%= session.getAttribute("ability") %>pt</li>
 		<li>경험치: <%= session.getAttribute("xp") %>xp</li>
 	</ul> 	
 </div>
 <% int playOrder = (Integer)
 			session.getAttribute("playOrder"); %>
 <div id="step">
 	<h4> <%= playOrder %>회차 플레이:: </h4>
 	<h4 id="saycast"> 주사위를 던지세요!!
 		<i id="dicecast" class="fas fa-dice-six fa-3x"></i>
 		<button type="button" id="stop">중지</button>
 	</h4>
 	<h4 id="result"></h4>
 	
 	<form method="get" action="step_proc.jsp">
 		<input type="hidden" name="selDice" value="-1">
 		<input type="submit" value="선택된 주사위값을 보내기!">
 	</form>
 </div>
 
 <!-- 
 	https://codepen.io/tameraydin/pen/CADvB 
 	https://codepen.io/Pyremell/pen/eZGGXX
 	https://codepen.io/alvaromontoro/pen/gjWPNW
 	https://codepen.io/gearmobile/pen/mEJwYw
 	
 	https://www.compart.com/en/unicode/U+2680	
 -->
 
 
 