<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monster Inventory 서비스</title>
<!-- 	<link rel="" type="" href="">  -->
	<style type="text/css">
		@import url("css/main.css");
	</style>
</head>
<body>
	<div id='header'>
		<%@ include file="common/_header.jsp" %>
	</div>
	<div id='main'>
		<!-- 몬스터 등록,조회,통계 -->
		<% if( menu == MENU_MON_REG ) { %>
			<%@ include file="_monster_reg.jsp" %>
		<% } else if( menu == MENU_MON_VIEW ) { %>	
			<%@ include file="_monster_view2.jsp" %>
		<% } else if( menu == MENU_MON_STAT ) { %>	
			<%@ include file="_monster_stat.jsp" %>
		<% } else { %>
			<h3> <%= menu %>번 메뉴에 대응하는 페이지가 없음! </h3>		
		<% } %>	
		
	</div>
	<div id='footer'>
		<%@ include file="common/_footer.jsp" %>	
	</div>
</body>
</html>