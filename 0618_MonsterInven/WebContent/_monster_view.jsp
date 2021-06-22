<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>몬스터 조회::</h3>
	
	<!--
	    이클립스 내장 서버 (tomcat) 임시 경로
	C:\dev2021\jsp_ws\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
	 
	 -->
	
	<% 
		HashMap<String,String> monster 
				= (HashMap<String,String>)
				application.getAttribute("지우.피카추");
	
	String player = monster.get("player");
	String mname = monster.get("mname");
	String mpic = monster.get("mpic");
	String mabil = monster.get("mabil");
	String mtype = monster.get("mtype");
	String mdatetime = monster.get("mdatetime");
	 %>
		<h4>플레이어명: <span class='player'>'
			<%= player %>'님</span></h4>
		<ul>
			<li>몬스터 이름: <%= mname %></li>
			<li>몬스터 이미지: <small><%= mpic %></small>
				<img src='<%= mpic %>' alt="<%= mname %>">
			</li>
			<li>몬스터 능력치: <%= mabil %>power</li>
			<li>몬스터 속성: <%= mtype %></li>
			<li>등록 날자시간: <%= mdatetime %>
		</ul>
		
	<% 
		monster 
				= (HashMap<String,String>)
				application.getAttribute("지우.꼬부기");
	
	player = monster.get("player");
	mname = monster.get("mname");
	mpic = monster.get("mpic");
	mabil = monster.get("mabil");
	mtype = monster.get("mtype");
	mdatetime = monster.get("mdatetime");
	 %>
		<h4>플레이어명: <span class='player'>'
			<%= player %>'님</span></h4>
		<ul>
			<li>몬스터 이름: <%= mname %></li>
			<li>몬스터 이미지: <small><%= mpic %></small>
				<img src='<%= mpic %>' alt="<%= mname %>">
			</li>
			<li>몬스터 능력치: <%= mabil %>power</li>
			<li>몬스터 속성: <%= mtype %></li>
			<li>등록 날자시간: <%= mdatetime %>
		</ul>	
		
		
		
	<% 
		monster 
				= (HashMap<String,String>)
				application.getAttribute("이슬.별가사리");
	
	player = monster.get("player");
	mname = monster.get("mname");
	mpic = monster.get("mpic");
	mabil = monster.get("mabil");
	mtype = monster.get("mtype");
	mdatetime = monster.get("mdatetime");
	 %>
		<h4>플레이어명: <span class='player'>'
			<%= player %>'님</span></h4>
		<ul>
			<li>몬스터 이름: <%= mname %></li>
			<li>몬스터 이미지: <small><%= mpic %></small>
				<img src='<%= mpic %>' alt="<%= mname %>">
			</li>
			<li>몬스터 능력치: <%= mabil %>power</li>
			<li>몬스터 속성: <%= mtype %></li>
			<li>등록 날자시간: <%= mdatetime %>
		</ul>		