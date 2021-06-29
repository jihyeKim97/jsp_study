<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery Test1</title>

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
	</div>
	<div id="block3">
	</div>
	
	<script type="text/javascript">
		// jQuery의 선택자는 CSS와 동일
		//$('.sub_title'); // class로 선택자..
		// 다 수개의 공통 클래스를 가진 모든 요소에
		// 클릭이벤트 처리 핸들러 등록
		$('.sub_title').click(function() {
			//$('li p').css('display', 'block'); // none -> block 속성변화
			$("li p").fadeIn(2000); // 2000ms간 서서히 나타남.
			$('li p').css('background-color', 'yellow');
			console.log(".sub_title click 이벤트: "
					+ $('.sub_title').text() ); // 다나옴.. SamsungLGGoogle..					
		});
		
		$('p').click(function() {
			// this는 여기서 이벤트가 발생한 특정 객체 자신을 의미
			$(this).css('background-color', 'white');
// 			$(this).css('display', 'none');
// 			$(this).css('visibility', 'hidden');
			$(this).fadeOut(2000); // 2초가 서서히 사라짐..
		});
			
	</script>
	
</body>
</html>