<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="true" %>

<style>
	details {
		border: 1px dashed green;
		background-color: lime;
		width: 400px;
		margin-bottom: 10px;
	}
</style>
    
<div id="status">
	<h5> 설문 상태: </h5>
	
	<details <%= currentStep-1 == 1 ? "open": "" %>>
		<summary>I. 인적사항 상태:</summary>
	<ul>
		<li> name: <%= session.getAttribute("name") %> </li>
		<li> age: <%= session.getAttribute("age") %> </li>
		<li> gender: 
			<% if( session.getAttribute("gender") != null ) { %>
				<%= ((String)(session.getAttribute("gender"))) 
						.equals("f") ? "여성": "남성" %> 
			<% } %> </li>
		<li> address: <%= session.getAttribute("address") %> </li>
		<li> selfcheck: <%= session.getAttribute("selfcheck") %> </li>
	</ul>
	</details>
	
	<details <%= currentStep-1 == 2 ? "open": "" %>>
		<summary>II. 기술수준 상태:</summary>
<%
	final String[] scriptLangs = {
		"Javascript", "PHP", "Python", "Ruby", "Dart", "Lua"	
	}; 	
	final String[] complieLangs = {
		"Java", "Swift", "C/C++", "Kotlin", "Rust", "Go",
		"Objective-C", "C#"
	};
	final String[] OSs = {
		"Windows", "MacOS", "Linux", "UNIX", "Solaris", "RTOS"	
	}; 	
	final String[] platforms = {
		"WWW", "iOS", "Android", "Embeded", "Desktop", 
		"Virtual-VMWare(EMC)", "Cloud-MS Azure",
		"Cloud-AWS", "Cloud-GCP", "Chrome", "OpenStack"
	};
	
	// 세션에 입력한 기술 키들..
	String techKeys[] = {"slang", "clang","os", "platform"};
	String techTitles[] = {
			"스크립트 언어", "컴파일 언어", "운영체제",
			"플랫폼(가상/클라우드/네이티브)"
	};
	String[][] techElements = { 
				// 1차원배열을 요소로하는 배열 == 2차원 배열 
		scriptLangs, complieLangs, OSs, platforms	
	};
%>		
		
	<ul type="square">
		<% for( int t = 0; t < techKeys.length; t++ ) { %>
		<% String[] techValues = {}; //new String[0];// {}; // 공배열 
			if( session.getAttribute(techKeys[t]) != null ) {
				techValues = 
				 (String[])session.getAttribute(techKeys[t]);
			}
		%>
		<li> <%= techTitles[t] %> 
			<ol type='i'>
				<% for(String tech: techValues) { 
					int nval = Integer.parseInt(tech); %>
<%-- 					<li><%= tech %></li> --%>
					<li><%= techElements[t][nval] %></li>
				<% } %>
			</ol>
		</li>		
		<% } // t for %>
	</ul>
	</details>
	
	<details <%= currentStep-1 == 3 ? "open": "" %>>
		<summary>III. 직무/포지션 상태:</summary>
		<ul>
			<li>희망 포지션:
			 <%= session.getAttribute("position") %></li>
		</ul>
	</details>
	
	<%	HashMap<String, String> salaryMap = new HashMap<>();
		salaryMap.put("min", "~$20,000");
		salaryMap.put("s1", "$20,000~$30,000");
		salaryMap.put("s2", "$30,000~$50,000");
		salaryMap.put("s3", "$50,000~$100,000");
		salaryMap.put("max","$100,000~");
		String skey = "dummy";
		if( session.getAttribute("salary") != null ) {
			skey = (String)session.getAttribute("salary");
		}
	 %>	
	<details <%= currentStep-1 == 4 ? "open": "" %>>
		<summary>IV. 연봉/복지문화 상태:</summary>
		<ul>
			<li>희망 연봉대: <%= salaryMap.getOrDefault(skey, "모름") %> </li>
			<li>희망 복지: 
				<textarea rows="4" cols="20" readonly="readonly"><%=
				session.getAttribute("welfare") %></textarea></li>
		</ul>
	</details>			
		
</div>    