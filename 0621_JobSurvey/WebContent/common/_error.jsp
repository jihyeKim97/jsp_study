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
		case "30":
			errMsg = "기술수준 입력 에러: 각 파트별 1개 이상 선택 요! - code: 30";
			break;
		case "40":
			errMsg = "복지문화 건의사항 입력 부재 - code: 40";
			break;
		case "43":
			errMsg = "약관 동의 하지 않았습니다. - code: 43";
			break;	
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