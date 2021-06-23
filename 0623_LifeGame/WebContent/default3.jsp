<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery Test3</title>

<style type="text/css">
	div {
		width: 400px;
		border: 1px solid blue;
	}
	.title {
		font-size: xx-large; border-bottom: 3px double black;
	}
</style>

<!-- https://jquery.com/download/ 구글 CDN 방식 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript">
		// jQuery의 선택자는 CSS와 동일
		//$('.sub_title'); // class로 선택자..
		
		// 3
		$('#ncbtn').click(function() {
			var ncName = $('#newcome').val();
			var ncDesc = $('#ncdesc').val();
			//alert(ncName + ", " + ncDesc);
			
			var newLI = "<li style='display:none'> <span class='sub_title'>"+ncName+"</span>"
				+ "<p style='display:none'>"
				+ ncDesc + " </p> </li>";
			console.log("신규회사 LI 추가 : " + newLI );
// 			$('div#company_list ul').prepend(newLI); // 앞
			$('div#company_list ul').append(newLI); //뒤
// 			$('div#company_list ul li:last').css('display','block');
// 			$('div#company_list ul li:last').delay(2000).fadeIn(1000);
			$('div#company_list ul li:last').show(1000);
			
		});
		
		// 2
		$('#gcbtn').click(function() {
// 			alert("#gcbtn");
			//$('#good-company');
			// document.getElementById('good-company');
			var gcVal = $('#good-company').val();
				// input[type=text].value
			console.log(gcVal);
			//
			$('.sub_title').mousemove(function() {
				var st = $(this).text(); // span.textContent
				
				if( gcVal == st ) {				
					$(this).css('color', 'red');
				} else {
					$(this).css('color', 'black');
				}
			});
		});
		
		// 1
		// 다 수개의 공통 클래스를 가진 모든 요소에
		// 클릭이벤트 처리 핸들러 등록
		$('.sub_title').click(function() {
			$("li p").fadeIn(2000); // 2000ms간 서서히 나타남.
			$('li p').css('background-color', 'yellow');
			console.log(".sub_title click 이벤트: "
					+ $('.sub_title').text() ); // 다나옴.. SamsungLGGoogle..					
		});
		
		$('p').click(function() {
			// this는 여기서 이벤트가 발생한 특정 객체 자신을 의미
			$(this).css('background-color', 'white');
			$(this).fadeOut(2000); // 2초가 서서히 사라짐..
		});
			
		
		$(document).ready(function() {
			// 문서가 onload시(웹페이지 메모리 로딩 DOM이 모두 완료되면..)
			// 그 때부터 시작되는 스크립트 코드
			$("body").css('background-color','cyan');
// 			$("input").focus(function() {
// 				$(this).css('background-color','yellow');
// 			});
// 			$("input").blur(function() {
// 				$(this).css('background-color','white');
// 			});
			var oldColor;
			$('input[type=button]').focus(function() {
				oldColor = $(this).css('background-color');
				$(this).css('background-color','green');
			});
			$('input[type=button]').blur(function() {
				$(this).css('background-color',oldColor);
			});
			
			$('#ncbtn').click(function() {
				var ncName = $('#newcome').val();
				var ncDesc = $('#ncdesc').val();
				
				var newLI = "<li style='display:none'> <span class='sub_title'>"+ncName+"</span>"
					+ "<p style='display:none'>"
					+ ncDesc + " </p> </li>";
				console.log("신규회사 LI 추가 : " + newLI );
				$('div#company_list ul').append(newLI); 
				$('div#company_list ul li:last').show(1000);
				
			}); // ncbtn.click
			
			
		});
		
		
		
	</script>

</head>
<body>
	<div id="block1">
		<h2 class="title">IT 회사 종류 리스트</h2>
		<div id="company_list">
			<ul>
				<li> <span class="sub_title">Samsung</span>
					<p style="display: none;">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue gravida ante, id dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus at, semper sed enim. Donec vitae auctor neque. Quisque lectus ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper justo in augue congue pellentesque. Quisque bibendum ultricies ante, sed imperdiet ante maximus in. Duis porta mi egestas pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium, ipsum posuere convallis blandit, magna quam egestas nulla, quis euismod ex elit id dui.
					</p>
				</li>
				<li> <span class="sub_title">LG</span>
					<p style="display: none;">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue gravida ante, id dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus at, semper sed enim. Donec vitae auctor neque. Quisque lectus ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper justo in augue congue pellentesque. Quisque bibendum ultricies ante, sed imperdiet ante maximus in. Duis porta mi egestas pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium, ipsum posuere convallis blandit, magna quam egestas nulla, quis euismod ex elit id dui.
					</p>
				</li>
				<li> <span class="sub_title">Google</span>
					<p style="display: none;">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue gravida ante, id dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus at, semper sed enim. Donec vitae auctor neque. Quisque lectus ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper justo in augue congue pellentesque. Quisque bibendum ultricies ante, sed imperdiet ante maximus in. Duis porta mi egestas pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium, ipsum posuere convallis blandit, magna quam egestas nulla, quis euismod ex elit id dui.
					</p>
				</li>
				<li>Naver</li>
				<li>Kakao</li>
			</ul>
		</div>
	</div>
	<div id="block2">
		<form>
			<label for="good-company">좋은 회사:</label>
			<input type="text" id="good-company" 
			name="good-company"  size="40" 
			 placeholder="좋은 회사 이름 입력" >
			<input id="gcbtn" type='button' value="선택!">
		</form>	
	</div>
	<div id="block3">
		<form>
			<label for="newcome">신생 회사:</label>
			<input type="text" id="newcome" 
			name="newcome"  size="40" 
			 placeholder="신규 회사 이름 입력" >
			<textarea rows="4" cols="30" id="ncdesc" 
				name="ncdesc" placeholder="회사 소개문 입력" 
				></textarea>			 
			<input id="ncbtn" type='button' value="추가!">
		</form>
	</div>
	

	
</body>
</html>