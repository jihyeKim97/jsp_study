<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 쿠키 처리 -->

<%
	// 쿠키 파일 생성 동시에 데이터 저장...
	Cookie ck1 = 
	   new Cookie("name", (String)(session.getAttribute("name")));
	Cookie ck2 = 
		new Cookie("birthday", (String)(session.getAttribute("birthday")));
	Cookie ck3 = 
			new Cookie("birthstone", (String)(session.getAttribute("birthstone")));
	Cookie ck4 = 
			new Cookie("ability", (String)(session.getAttribute("ability")));
	Cookie ck5 = 
			new Cookie("xp", (String)(session.getAttribute("xp")));
	Cookie ck6 = 
			new Cookie("playOrder", 
					"num" + (int)(session.getAttribute("playOrder")));
	//
	Cookie[] cks = { ck1, ck2, ck3, ck4, ck5, ck6 };
	for( Cookie ck : cks ) {
		//ck.setMaxAge(60*60);// 초단위.. 1시간동안 유효한 쿠키 파일 생성..
// 		ck.setMaxAge(60*60*24);// 초단위.. 하루동안 유효한 쿠키 파일 생성..
		ck.setMaxAge(60*60*24*30);// 초단위.. 한달동안 유효한 쿠키 파일 생성..
		//ck.setMaxAge(60*60*24*365);// 초단위.. 1년동안 유효한 쿠키 파일 생성..
		// 쿠키 활용 예:   로그인 이름 유지.. 공지사항 팝업 그만보기...
		//   잠시동안 장바구니 담았던 내역,  최근 클릭한 사진, 페이지들..
		response.addCookie(ck); // 쿠키는 서버에서 최초 생성되어서...
		// 응답이 갈때 같이 동봉되어 클라이언트로 전송됨...
	}
	
	// C:\Users\User\AppData\Local\Microsoft\Windows\INetCache
	// chrome://settings/cookies/detail?site=localhost
	
%>




