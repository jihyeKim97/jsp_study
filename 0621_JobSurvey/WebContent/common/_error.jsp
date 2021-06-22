<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String errorCode = request.getParameter("errorCode"); %>

<% if( errorCode != null && !errorCode.isEmpty()) { %>
	<style>
		.error {
			border: 2px dotted red;
			background-color: pink;
			padding: 20px;
		}
	</style>
	
	<% String errMsg = ""; 
		switch(errorCode) { 
		case "10":
			errMsg = "인적사항 입력 에러: 주소없음! - code: 10";
			break;
		case "20":
			errMsg = "인적사항 입력 에러: 이름없음! - code: 20";
			break;
		case "x3":
			;
		default:
			errMsg = "처리 못하는 에러";
			break;
	   }
	%>
	
	<div class="error">
		<h2>에러!! 
			<small><%= errMsg %></small></h2> 
	</div>
<% } %>    