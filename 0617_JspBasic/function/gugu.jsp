<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// http://localhost:8088/JspBasic/function/gugu.jsp?dan=5 요청 URL
	String strDan = request.getParameter("dan");
	System.out.println("strDan = "+ strDan);
	if( strDan == null || strDan.isEmpty() ){
		strDan = "2";
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<h3>구구단 페이지</h3>
	
	<div id="gugu">
		<% //int dan = 3; 
			int dan = Integer.parseInt(strDan);
			if( dan >= 2 && dan <= 9 ) {
		%>
		<table border='1'>
			<caption>* <%= dan %>단표</caption>
			<% for(int i = 1; i <= 9; i++) { %>
			<tr>
				<td><%= dan %> x <%= i %></td> 
				<td> = <%= dan * i %></td>
			</tr>
			<% } // for %>
		</table>
		<% } else { // if %>
			<h3> 한국에서는 2 ~ 9 단만 표시!</h3>
		<% } // else %>
	</div>
	
	<a href='../index.jsp'> 메뉴로 돌아가기 </a>
</body>
</html>