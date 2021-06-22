<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap, java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// post 전송 파람 추출 인코딩 설정
	request.setCharacterEncoding("UTF-8");

	String player = request.getParameter("player");
	String mname = request.getParameter("mname");
	String mpic = request.getParameter("mpic");
	int mabil = 0;
	String mabilStr = request.getParameter("mabil");
	if( mabilStr != null && !mabilStr.isEmpty() ) 
		mabil = Integer.parseInt(mabilStr);
	String mtype = request.getParameter("mtype");


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monster Inventory 서비스: 등록결과</title>
	<style type="text/css">
		@import url("css/main.css");
	</style>
</head>
<body>
<!-- http://localhost:8088/MonsterInven/reg_proc.jsp?player=%EC%9B%85%EC%9D%B4&mname=%EC%9E%89%EC%96%B4%ED%82%B9&mpic=https%3A%2F%2Fdata1.pokemonkorea.co.kr%2Fnewdata%2Fpokedex%2Ffull%2F012901.png&mabil=35&mtype=water -->
	<div id='header'>
		<%@ include file="common/_header.jsp" %>
	</div>
	<div id='main'>
		<h3>Monster 등록결과</h3>
		
		<h4>플레이어명: <span class='player'>'<%= player %>'님</span></h4>
		<ul>
			<li>몬스터 이름: <%= mname %></li>
			<li>몬스터 이미지: <small><%= mpic %></small>
				<img src='<%= mpic %>' alt="<%= mname %>">
			</li>
			<li>몬스터 능력치: <%= mabil %>power</li>
			<li>몬스터 속성: <%= mtype %></li>
		</ul>
		
	</div>

	<%
		// application 등록
		HashMap<String,String> monster = new HashMap<>();
		monster.put("player", player);
		monster.put("mname", mname);
		monster.put("mpic", mpic);
		monster.put("mabil", String.valueOf(mabil));
		monster.put("mtype", mtype);
		monster.put("mdatetime", new Date().toString()); // 등록 시간
		//
		String key = player + "." + mname; // "지우.피카추" 키
		application.setAttribute(key, monster); // 등록
		System.out.println("신규 등록한 키: " + key);
		System.out.println("신규 등록한 몬스터: " );
		Set<String> ks = monster.keySet();
		for( String k : ks) {
			System.out.println(k + " => " + monster.get(k));
		}
	%>
	
	
	<div id='footer'>
		<%@ include file="common/_footer.jsp" %>	
	</div>
</body>
</html>