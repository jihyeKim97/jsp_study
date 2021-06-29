<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	final double DEF_XP = 100.0;
	final double SUCCESS_XP = 200.0;
	final double FAILURE_XP = 10.0;

	// 게임로직
	int dice = Integer.parseInt(
			request.getParameter("selDice"))+1; // 1 ~ 6
	String birthStone = (String)session.getAttribute("birthstone");		
	int sign = (dice+birthStone.length()) % 2 == 1 ? +1: -1;		
	int playOrder = (int)session.getAttribute("playOrder");	 		
	double ability = Double.parseDouble(
			(String)session.getAttribute("ability"));
	double oldXp = Double.parseDouble(
			(String)session.getAttribute("xp"));
	double playGetXp = dice * sign * (Math.random()*ability) 
				* birthStone.length();
	double newXp = oldXp + playGetXp;
	
	application.log(playOrder + "회차 게임중... " +
			((dice+birthStone.length()) % 2 == 1 ? "이득 " : "손실 ")
			+ " pt: " + playGetXp);
	application.log(playOrder + "회차까지 총 누적경험치 xp:" + newXp); 
	//
	session.setAttribute("xp", String.format("%.2f", newXp));
	session.setAttribute("playGetXp", playGetXp);
		
	// 판단로직
   if( newXp < FAILURE_XP ) {
		// 인생게임 끝: 실패...
		request.setAttribute("msg", "실패!! xp: " + newXp);		
%>
	<jsp:forward page="play/failure.jsp"/>
<% } else if( newXp >= SUCCESS_XP ) {
		request.setAttribute("msg", "성공~~!! xp: " + newXp);
		// 인생 게임 끝: 성공...
%>
	<jsp:forward page="play/success.jsp"/>
<% } else { 
		// 인생게임 지속... 다음회차 게임 playing...	
		//playOrder++;
		session.setAttribute("playOrder", ++playOrder);
		response.sendRedirect("game.jsp?step=playing");
   }
%>


