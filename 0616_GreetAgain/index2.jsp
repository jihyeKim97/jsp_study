<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 인사말 출력 함수 정의 (메소드)
	public String sayGreetingTo(String to, String msg) {
		if( msg == null || msg.isEmpty() ) {
			//msg = msgs[(int)(Math.random()*msgs.length)];
			msg = this.msgs[(int)(Math.random()*msgs.length)];
		}
		String result = "<span class='msg'>"  
				+ to + "님, " + msg 
				+ "</span>";
		return result;
	}

	String msgs[] = {
		"안녕하세요?", "Hello?",  "안녕히 주무셨어요?",
		"Good Morning?", "Nice to meet you!", 
		"Hi, there??", "안녕?"		
	};
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GreetAgain!! 다시 인사하기</title>
<%  // java 코드 영역 (Scriptlet) 
	String name = "엘사"; // 지역변수 local var.
	String msg = "Happy New Summer!";
	
// 	String[] colors = {
// 			"lime", "aqua", "cyan", "yellow",
// 			"orange", "pink", "purple"
// 		};
	String selColor = colors[3];
	System.out.println("selColor -> " + selColor);
%>
<style type="text/css">
	body {
/* 		background-color: lime; */
/*		background-color: <%= selColor %>; */
		background-color: <%= getRandomColor() %>;
	}
	
	span.msg {
		background-color: <%= getRandomColor() %>;
	}
	
	#olaf span {
		background-color: <%= getRandomColor() %>;
	}
</style>
</head>
<body>
	<div id="greet">
		<h2>GreetAgain!! 다시 인사하기</h2>
		<table border="1">
			<tr> 
				<td colspan="2"> 2021년 여름인사!</td> 
			</tr>
			<tr> <td>이름: <%= name %></td> 
				<td></td> </tr>
			<tr> <td>인사말: <%= msg %> </td> 
				<td></td> </tr>
		</table>
		<ul>
			<li><%= this.sayGreetingTo("안나", "잘자요!") %></li>
			<li id="olaf"><%= this.sayGreetingTo("올라프", "") %></li>
			<li><%= sayGreetingTo("스벤", null) %></li>
			
		</ul>
	</div>
</body>
<%!  // 선언부 영역 - 필드, 메소드 정의 영역
	final String[] colors = {
		"lime", "aqua", "cyan", "yellow",
		"orange", "pink", "purple"
	};

	public String getRandomColor() {
		int r = (int)(Math.random()*colors.length);
		return colors[r];
	}
%>
</html>