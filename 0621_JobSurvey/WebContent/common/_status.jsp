<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="true" %>

    
<div id="status">
	<h5> 설문 상태: </h5>
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
</div>    