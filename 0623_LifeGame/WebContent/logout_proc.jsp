<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    	String name = request.getParameter("name");
    	String quit = request.getParameter("quit");
    	String msg = "";
    	if( name != null && quit != null ) {
    		// 세션 로그아웃...
    		application.log(">> 로그아웃: SessionID: " + session.getId() + 
    			" / " + new Date());
 		// 정보: >> 로그아웃: SessionID: 97C1D9C3F28A37AECFB0FA14564F3A8A / Fri Jun 25 10:43:46 KST 2021
 				// 32자리 16진법..
    		session.invalidate(); // 세션 무효화 실행 (초기화..)
    		// name 님이 quit방식으로 로그아웃 했음..
    		msg = "logout";
    	} else {
    		msg = "error";
    	}
    	
    	// 로그인? 첫 페이지? 이동
    	response.sendRedirect("game.jsp?step=ready&msg="+msg+"&quit="+quit);		
    %>