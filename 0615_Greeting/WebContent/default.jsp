<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Greeting! 인사하기!!</title>
</head>
<body>
	<div id="greet">
		<H2>Greeting! 인사하기!!</H2>
		<% 
			String name = "엘사";
			String msg = "Happy Summer Days!";
		%>
		<hr>
		<h3>
			<% name += " 공주"; %>
			대상: <%= name %>!!!, <br>
			메시지: '<b> <%= msg %> </b>'
		</h3>	
		
		<table border="1">	
			<tr> <td colspan="2">
				2021 여름 휴가!!!
			</td> </tr>
			<tr>
				<td>이름:</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>인사말:</td>
				<td><%= msg %></td>
			</tr>
		</table>	
	</div>
</body>
</html>