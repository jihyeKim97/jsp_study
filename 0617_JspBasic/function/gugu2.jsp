<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.StringBuffer" %>
<%
	// http://localhost:8088/JspBasic/function/gugu.jsp?dan=5 요청 URL
	String strDan = request.getParameter("dan");
	System.out.println("strDan = "+ strDan);
	if( strDan == null || strDan.isEmpty() ){
		strDan = "2";
	}
	// http://localhost:8088/JspBasic/function/gugu.jsp?dan=5&range=o 
	String strRange = request.getParameter("range"); // range파람 있으면 OK		
	//boolean bRange = true; // false는 단독 구구단 표
	boolean bRange = strRange != null; // ? true: false; 
				// false는 단독 구구단 표
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단2</title>

<style type="text/css">
	div.dantable {
		width: 200px;
		border: 1px dotted black;
		padding: 10px;
		margin: 20px 10px;
		display: inline-block;
	}
	table {
		width: 120px;
		margin: 5px auto;
	}
	caption {
		text-align: center;
		font-size: large;
		font-weight: bolder;
		margin-bottom: 5px;
		text-decoration: underline;
	}
</style>

</head>
<body>
	<h3>구구단2 페이지</h3>
	<% 	int dan = Integer.parseInt(strDan);	 %>
	<div id="gugu">
		<% if( bRange ) { %>
			<h3> 범위 구구단 표들 :: </h3>
<%-- 			<% for(int j = 2; j <= 9; j++) { %> --%>
				<% for(int j = 2; j <= dan; j++) { %>
				<%= showGuguTable(j) %>
			<% } // j %>
		<% } else { // bRange %>
			<h3> 독립 구구단 표하나 :: </h3>
			<% //int dan = 3; 
// 				int dan = Integer.parseInt(strDan);
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
		<%} // bRange %>	
	</div>
	
	<a href='../index2.jsp'> 메뉴로 돌아가기 </a>
</body>
</html>

<%! 
	public String showGuguTable(int dan) {
		StringBuffer sb = new StringBuffer();
		sb.append("<div class='dantable'>");
		sb.append("<table border='1'>");
		sb.append("<caption>* "+ dan+" 단표</caption>");
		for(int i = 1; i <= 9; i++) { 
			sb.append("<tr> <td> " + dan +" x "+ i +" </td> "); 
			sb.append("<td> = " + (dan * i) +" </td> </tr>");
		}  
		sb.append("</table> </div>");
		return sb.toString();
// 		<div class='dantable'>
// 		<table border='1'>
// 		<caption>* dan 단표</caption>
// 		for(int i = 1; i <= 9; i++) { 
// 		<tr>
// 			<td> dan  x  i </td> 
// 			<td> = dan * i </td>
// 		</tr>
// 		}  
// 		</table>
// 		</div>
	}
%>