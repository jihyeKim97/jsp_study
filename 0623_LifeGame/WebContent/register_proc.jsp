<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 파람/예외...
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String birthday = request.getParameter("birthday");
	String birthstone = request.getParameter("birthstone");
	
	// 게임속 플레이어의 스탯 결정 (알고리즘/계산)
	final double DEF_XP = 100.0;
	final double SUCCESS_XP = 200.0;
	final double FAILURE_XP = 10.0;
	//
	double ability; // 능력치
	double xp = DEF_XP; // exp.. 경험치
	int playOrder = 1; // 게임스텝 번호
	//
	ability = birthstone.length() + 
		 Math.random() * name.length(); 
		// 김수환무거북이와두루미..
	
	// 세션 처리 저장
	session.setAttribute("name", name );
	session.setAttribute("birthday", birthday );
	session.setAttribute("birthstone",birthstone);
	session.setAttribute("ability", String.format("%.2f", ability));
	session.setAttribute("xp",  String.format("%.2f", xp));
	session.setAttribute("playOrder", playOrder);
	
	// 이동 (스텝1의 플레이페이지로 리다이렉트)
	response.sendRedirect("game.jsp?step=playing");	
%>