<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	final String[] positions = {
		"모름","기획자", "UI/UX 디자이너",
		"프론트엔드 개발자", "백엔드 server개발자", 
		"백엔드 DB개발자", "데스크탑 개발자", 
		"모바일 앱 개발자", "기술 마케터", 
		"기술 세일즈", "QA 테스터"
	};
%>    
<form method="post" action="step3_proc.jsp">
	<fieldset>
		<legend>직무/포지션을 선택하세요!</legend>
		
		<table border='0'>
			<tr> 
				<th rowspan="<%=positions.length+1%>">
				 희망 직무: </th>
			</tr>
			<% for(int p =0; p < positions.length; p++) { %>
			<tr> <td>
				<input type="radio" name="position" 
				id="position_<%=p%>" value="<%=p%>" 
				 <%= p == 4 ? " checked": "" %> >
				 <label for="position_<%=p%>">
				 	<%= positions[p] %>
				 </label>
				 </td>
			</tr>			
			<% } %>
			<%@ include file="common/_resetsubmit.jsp" %>
		</table>
	</fieldset>	
</form>