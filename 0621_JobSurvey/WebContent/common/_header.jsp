<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% int currentStep = 1;  

	String[] stepTitles = {
		"", "인적사항", "기술수준", "직무/포지션",
		"연봉/복지", "확인 및 제출"
	};
	
	// step=? 파람 처리 
	String step = request.getParameter("step");
	if( step != null && step.isEmpty() != true ) {
		int temp = Integer.parseInt(step);
		if( temp >= 1 && temp < stepTitles.length )
			currentStep = temp;
		else {
			System.out.println(">> 잘못된 step 접근: " + temp);
			application.log(">> 잘못된 step 접근: " + temp);
				// tomcat 서버에 로그파일로 기록한다.
		}
	}
%>

    <h2> 직업 설문 조사 전문서비스 </h2>

<%@ include file="_error.jsp" %>    
    
<%@ include file="_status.jsp" %>    
    
<h3>
	STEP <%= currentStep %>: 
	<ins><%= stepTitles[currentStep] %></ins>
</h3>    