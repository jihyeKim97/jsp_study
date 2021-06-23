<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function finalSubmit() {
		document.location.href = "final_step.jsp"
	}
</script>
    
<% String username = (String)session.getAttribute("name"); %>

<h3> <ins><%= username %></ins>님의 직업설문 참여 및 
	OO기업 입사지원 연동에 감사합니다.</h3>
	
	<div style="text-align: right;">
		<input type="button" value="설문 내역 확인 및 최종 제출!!!"
			onclick="finalSubmit()">
	</div>
	    
  <hr width="60%">
  
  ** <a href="survey.jsp?step=1&re=1">수정 및 확인을 위해 첫 단계로 가기!</a>	    