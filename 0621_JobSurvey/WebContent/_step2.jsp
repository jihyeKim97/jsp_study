<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 	final String[] scriptLangs = {
// 		"Javascript", "PHP", "Python", "Ruby", "Dart", "Lua"	
// 	}; 	
// 	final String[] complieLangs = {
// 		"Java", "Swift", "C/C++", "Kotlin", "Rust", "Go",
// 		"Objective-C", "C#"
// 	};
// 	final String[] OSs = {
// 		"Windows", "MacOS", "Linux", "UNIX", "Solaris", "RTOS"	
// 	}; 	
// 	final String[] platforms = {
// 		"WWW", "iOS", "Android", "Embeded", "Desktop", 
// 		"Virtual-VMWare(EMC)", "Cloud-MS Azure",
// 		"Cloud-AWS", "Cloud-GCP", "Chrome", "OpenStack"
// 	};
%>
    
<%--     num: <%= request.getParameter("num") %> --%>

<form action="step2_proc.jsp" method="post">
	<fieldset>
	
		<legend>프로그래밍언어 기술:</legend>
	
		<table border='0'>
			<tr>
				<td>스크립트 언어:</td>
				<td>
					<% for(int s=0; s< scriptLangs.length; s++) { %>
						<input type="checkbox" name="slang" 
						 id="slang_<%=s%>" value="<%=s%>">
						 <label for='slang_<%=s%>'><%=scriptLangs[s]%></label>
					<% } %>
				</td>
			</tr>
			<tr>
				<td>컴파일 언어:</td>
				<td>
				<% for(int c=0; c< complieLangs.length; c++) { %>
						<input type="checkbox" name="clang" 
						 id="clang_<%=c%>" value="<%=c%>">
						 <label for='clang_<%=c%>'><%=complieLangs[c]%></label>
					<% } %>
				</td>
			</tr>
		</table>
	
	</fieldset>
	
	<fieldset>
	
		<legend>운영체제/플랫폼 기술:</legend>
		
		<table border='0'>
			<tr>
				<td>운영체제:</td>
				<td>
					<% for(int s=0; s< OSs.length; s++) { %>
						<input type="checkbox" name="os" 
						 id="os_<%=s%>" value="<%=s%>">
						 <label for='os_<%=s%>'><%=OSs[s]%></label>
					<% } %>
				</td>
			</tr>
			<tr>
				<td>플랫폼환경:</td>
				<td>
				<% for(int c=0; c< platforms.length; c++) { %>
						<input type="checkbox" name="platform" 
						 id="platform_<%=c%>" value="<%=c%>">
						 <label for='platform_<%=c%>'><%=platforms[c]%></label>
					<% } %>
				</td>
			</tr>
			
			<%@ include file="common/_resetsubmit.jsp" %>
			
		</table>
	
	</fieldset>
</form>