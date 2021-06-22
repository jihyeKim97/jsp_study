<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div class='moncard'>
				<h4>플레이어명: <span class='player'>'
					<%= monster.get("player") %>'님</span></h4>
				<ul>
					<li>몬스터 이름: <%= monster.get("mname") %></li>
					<li>몬스터 이미지: <small><%= monster.get("mpic") %></small>
						<img src='<%= monster.get("mpic") %>'
								 alt="<%= monster.get("mname") %>">
					</li>
					<li>몬스터 능력치: <%= monster.get("mabil") %>power</li>
					<li>몬스터 속성: <%= monster.get("mtype") %></li>
					<li>등록 날자시간: <%= monster.get("mdatetime") %>
				</ul>	
			</div>