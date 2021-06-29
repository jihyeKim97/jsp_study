<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%
	// 세션 시간...
	if( session.isNew() ) {
		session.setMaxInactiveInterval(60*10); // 초단위..  10분
		application.log(">> new 세션: SessionID: " + session.getId() + 
    			" / " + System.currentTimeMillis());
	}
// 정보: >> new 세션: SessionID: 0793B9A73AB5339E278A286955DAB601 / 1624587317015

	// 초기파람
	String projName = application.getInitParameter("projName");
	String projVer = application.getInitParameter("projVer");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= projName %></title>

<!-- 폰트어썸 icons
	https://fontawesome.com/v5/cheatsheet
	https://cdnjs.com/libraries/font-awesome
 -->
<link type="text/css" rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css">
<link type="text/css" rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/solid.min.css">	

<!-- https://jquery.com/download/ 구글 CDN 방식 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	var dieFaces = [
		"&#x2680;","&#x2681;","&#x2682;",
		"&#x2683;","&#x2684;","&#x2685;"	
	];

	function castRandomDice() {
		var ran = Math.floor(Math.random() * 6); //0~5
		console.log( ran );
		//$('#result').text("랜덤 주사위 수: " + ran);
// 		$('#result').text("랜덤 주사위 심볼: " + dieFaces[ran]);
		$('#result').html(
			"<b>랜덤 주사위 심볼:</b>"+
			"<span style='font-size: xx-large'> " 
				+ dieFaces[ran] 
						+"</span>");
		$("#result span").css('color','pink');
		//
		$("input[name='selDice']").val(ran); // hidden
	}	
	
	var stopwatch; // undefined
	function rollingDice() {
		stopwatch = setInterval(castRandomDice, 250);//500); 
			// 0.5초마다 castRandomDice() 주기 호출
	}

	$(document).ready(function() {
		// 주사위 던지기 등 처리
		// https://www.compart.com/en/unicode/U+2680 주사위 문자
		
		$('#dicecast').click(function() {
			rollingDice(); 
		});
		$('#stop').click(function() {
			console.log("stopped..");
			clearInterval(stopwatch); // 반복 주기호출 중지..
		});
		
		$('#dicecast').hover(function() {// enter
			$(this).css("color", "blue");
			$(this).addClass("fa-spin");
			$("#saycast").css("color", "blue");
		},function() { // leave
			$(this).css("color", "black");
			$(this).removeClass("fa-spin");
			$("#saycast").css("color", "black");
		});
		
		
		// 포커스 처리
		$('input,select').focus(function() {
			$(this).css('background-color', 'yellow');
		});
		$('input,select').blur(function() {
			$(this).css('background-color', 'transparent');
		});
		
		// 탄생석 처리
		$('#birthstone').change(function() {
			//alert($(this).val());
			var bsName = $(this).val(); // 탄생석 영문이름
			$("#bsName").text(bsName +' 탄생석');
			if(bsName == 'none') {
				$("#bsImage").attr('src',"https://via.placeholder.com/100/0000FF/FFFF00");
				$("#bsImage").attr('alt', 'none');
			} else {
				$("#bsImage").attr('src', "images/"
						+bsName+".jpg");
				$("#bsImage").attr('alt', bsName);
			}
		}); // select-option 선택변화 이벤트 처리
	});



	<%
		// 재시작 등 처리...
		String msg = request.getParameter("msg");
		String pName = "";
		if( msg != null && !msg.isEmpty() ) {
			if( msg.equals("replay") ) { 
				pName = request.getParameter("name");
			%>
				alert("'<%=pName%>'님으로 인생게임 재시작!!!");
		  <%} else if( msg.equals("logout")) {
				out.println( "alert('" + 
				request.getParameter("quit") 
					+"모드로 로그아웃 성공!');" );  
		    } else { // error..
		    	out.println("alert('관리자 연락!!!');");
		    }
		}
	%>
</script>
</head>
<body>
	<div id="header">
		<h2> <i class="fas fa-star-of-life fa-3x fa-spin"></i>
		<%= projName %></h2>
		<hr noshade>
	</div>	
	<div id="main">	
		<!-- ready 페이지에서 인생게임시작준비... 
				이후 step 페이지를 순환반복 -->
		<%  String step = request.getParameter("step");
			if( step == null || step.isEmpty() ) step = "ready";					
			String mainPath = ""; 
			// game.jsp?step=ready
			// game.jsp?step=playing
			switch(step) {
				case "ready": mainPath = "_ready.jsp";
					break;
				case "playing": mainPath = "_step.jsp";
					break;
				default: 	;	
			}
		%>		
		<jsp:include page='<%= "play/"+ mainPath %>'>
			<jsp:param value="<%=msg%>" name="msg"/>
			<jsp:param value="<%=pName%>" name="pName"/>
		</jsp:include>
	</div>
	<div id="footer">
		<hr>
		<b> &copy;<%= projName.substring(0, 8)
			+ " - " + projVer %>  </b>
	</div>
</body>
</html>
