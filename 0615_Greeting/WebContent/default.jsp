<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Greeting! �λ��ϱ�!!</title>
</head>
<body>
	<div id="greet">
		<H2>Greeting! �λ��ϱ�!!</H2>
		<% 
			String name = "����";
			String msg = "Happy Summer Days!";
		%>
		<hr>
		<h3>
			<% name += " ����"; %>
			���: <%= name %>!!!, <br>
			�޽���: '<b> <%= msg %> </b>'
		</h3>	
		
		<table border="1">	
			<tr> <td colspan="2">
				2021 ���� �ް�!!!
			</td> </tr>
			<tr>
				<td>�̸�:</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>�λ縻:</td>
				<td><%= msg %></td>
			</tr>
		</table>	
	</div>
</body>
</html>