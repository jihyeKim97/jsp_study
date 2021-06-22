<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>몬스터 조회::</h3>
	
	<!--
	    이클립스 내장 서버 (tomcat) 임시 경로
	C:\dev2021\jsp_ws\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
	 
	 -->

	<form action="view_proc.jsp" method="post">
<!-- 		<input type="text" name="menu" value="2" readonly  -->
<!-- 			style='visibility: hidden'> -->
		<input type='hidden' name="menu" value="2">
		<table border="1">
			<tr>  <td>플레이어명:</td> 
					<td><input type="text" id="player" 
					name="player" placeholder="플레이어명:" size='24'> </td>  </tr>
			<tr>  <td>몬스터: </td> <td><input type="text" id="mname" 
					name="mname" placeholder="몬스터명:" size='24'> </td>  </tr>
			<tr>  <td colspan="2">
				<input type="submit" value='몬스터 조회'>
			</td>  </tr>
		</table>
	</form>
	
	
	