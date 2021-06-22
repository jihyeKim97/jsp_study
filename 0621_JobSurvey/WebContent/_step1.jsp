<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <form method="get" action="step1_proc.jsp"> -->
<form method="post" action="step1_proc.jsp">
	<fieldset>
		<legend>지원자의 인적사항</legend>		
		<table border="1">
			<tr>
				<td><label for='name'>이름:</label> </td>
				<td> <input type="text" id="name" name='name'
					placeholder="실명 입력" size='20' required>
				</td>
			</tr>
			
			<tr>
				<td><label for='age'>나이:</label> </td>
				<td> <input type="number" id="age" name='age'
					min='19' max='40' value='27' size='2' required>
				</td>
			</tr>
			
			<tr>
				<td> <label for="gender">성별: </label> </td>
				<td>
					<input type="radio" id="female" name="gender"
						value="f" checked> 
					<label for='female'>여성</label> &nbsp;&nbsp; 
					<input type="radio" id="male" name="gender"
						value="m"> 
					<label for='male'>남성</label> 	
				</td>
			</tr>	
			<tr>
				<td> <label for='address'>주소:</label></td>
				<td>
					<textarea rows="4" cols="20" 
					 id="address" name="address"
					 placeholder="도로명 주소입력"></textarea>
				</td>
			</tr>
			
			<!-- 기술수준 자가체크 -->
			<%@ include file="./common/_selfcheck.jsp" %>
			<!-- 리셋 서브밋 버튼... -->
			<%@ include file="./common/_resetsubmit.jsp"  %>
			
		</table>
		
	</fieldset>

</form>