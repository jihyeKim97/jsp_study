<%@page import="java.util.Enumeration"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>몬스터 통계::</h3>
<% 
		// 플레이어 명수 통계
		// 플레이어 별 몬스터 개수 통계
		// 총 등록 몬스터 개수 통계
		
	HashMap<String,Integer> statMap = new HashMap<>();
		// 플레이어 명 => 등록한 회수  (일종의 Map을 카운터로 사용하는 것)
				
	Enumeration<String> keys = application.getAttributeNames();
		// org., javax. 제외하고...
	while( keys.hasMoreElements() ) {
		String key = keys.nextElement();
		if( !key.startsWith("org.") && !key.startsWith("javax.") ) {
			System.out.println("등록된 포획: " + key);
			String player = key.split("\\.")[0]; // 정규식이자 이중 escape
				// "지우.피카츄" =>> { "지우", "피카츄" }
			if( statMap.containsKey(player) == false) {	
				statMap.put(player, 1); // 최초 발견 카운트 추가
			} else {
				// 이미 통계가 있네..
				int oldCount = statMap.get(player); // autounboxing
				statMap.put(player, ++oldCount); 
					// 기존 발견 카운트 증가 후 갱신 
			}
		}
	}
		
%>	

<div id="stat">
	<B> 통계 결과: </B>
	<h5> 몬스터를 하나라도 등록한 플레이어의 총 명수: 
			<%= statMap.size() %>명 </h5>	
	<table>
		<tr> <th> 플레이어 이름 </th>  <th> 등록한 몬스터 수 </th> </tr>
		<% int monTotal = 0; int i = 0; %>
		<% for( String pName : statMap.keySet() ) { %>
			<% i++; %>
			<tr class='<%= i % 2 == 0 ? "even": "odd" %>'> 
				<td> '<%= pName %>'님</td>  
				<td>  <%= statMap.get(pName) %> 마리</td> 
			</tr>
			<% monTotal += statMap.get(pName); %>
		<% } %>		
		<tr> 
			<td colspan="2">
				전체 몬스터 등록 개수: <%= monTotal %> 마리 
			</td>
		</tr>
	</table>		
</div>




