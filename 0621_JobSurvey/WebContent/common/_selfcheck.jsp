<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%
   
   	 final String[] SELF_LEVELS = {
   		"전혀없음", "초급", "초중급", "중급",
   		"고급", "수석(아키텍쳐)급"   			 
   	 };
   
   %>
   
   <tr>
   		<td><label for='selfcheck'>IT 경험수준 자가체크:</label></td>
   		<td>
   			<select id='selfcheck' name='selfcheck'>
   				<% for(int i = 0; i < SELF_LEVELS.length; i++ ) { %>
   					<option <%= i == 1 ? "selected": "" %> 
   						value="scl<%=i%>">   					
   					<%= SELF_LEVELS[i] %></option>
   				<% } %>
   			</select>
   		</td>
   </tr>