<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// 메뉴 구조
	final int MENU_MON_REG = 1; // 등록
	final int MENU_MON_VIEW = 2; // 조회
	final int MENU_MON_STAT = 3; // 통계
	//
	String menuStr = request.getParameter("menu");
	//	
	int menu = MENU_MON_REG; //MENU_MON_STAT ;//MENU_MON_VIEW; //MENU_MON_REG;  // 메뉴 상태
	if( menuStr != null && !menuStr.isEmpty() ) {
		menu = Integer.parseInt(menuStr);  // ?menu=2
		if( menu > MENU_MON_STAT || menu < MENU_MON_REG ) {
			System.out.println("메뉴 범위 벗어남!!!");
		}
	}
%>    

    <h2>Monster Inventory 서비스</h2>
    
        
    
    <div id='nav'>
    	<ul>
<!--     		<li><a href='#'>몬스터 등록</a></li> -->
<!--     		<li><a href='#'>몬스터 조회</a></li> -->
<!--     		<li><a href='#'>몬스터 통계</a></li> -->
			<li <%= menu == MENU_MON_REG ? "sel": ""%>><a href='monster.jsp?menu=1'>몬스터 등록</a></li>
    		<li <%= menu == MENU_MON_VIEW ? "sel": ""%>><a href='monster.jsp?menu=2'>몬스터 조회</a></li>
    		<li <%= menu == MENU_MON_STAT ? "sel": ""%>><a href='monster.jsp?menu=3'>몬스터 통계</a></li>
    	</ul>
    </div>
    
    <hr noshade="noshade" width="80%" align="center">