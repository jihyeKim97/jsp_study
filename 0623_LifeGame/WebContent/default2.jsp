<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery Test2</title>

<style type="text/css">
div {
	padding: 30px;
	border: 1px solid blue;
}

.title {
	font-size: xx-large;
	text-align: center;
	border-bottom: 3px double black;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div id="block1">
		<h2 class="title">IT 회사 종류 리스트</h2>
		<div id="company_list">
			<ul>
				<li><span class="sub_title">Samsung</span>
					<p style="display: none;">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Donec congue gravida ante, id
						dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus
						at, semper sed enim. Donec vitae auctor neque. Quisque lectus
						ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper
						justo in augue congue pellentesque. Quisque bibendum ultricies
						ante, sed imperdiet ante maximus in. Duis porta mi egestas
						pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium,
						ipsum posuere convallis blandit, magna quam egestas nulla, quis
						euismod ex elit id dui.</p></li>
				<li><span class="sub_title">LG</span>
					<p style="display: none;">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Donec congue gravida ante, id
						dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus
						at, semper sed enim. Donec vitae auctor neque. Quisque lectus
						ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper
						justo in augue congue pellentesque. Quisque bibendum ultricies
						ante, sed imperdiet ante maximus in. Duis porta mi egestas
						pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium,
						ipsum posuere convallis blandit, magna quam egestas nulla, quis
						euismod ex elit id dui.</p></li>
				<li><span class="sub_title">Google</span>
					<p style="display: none;">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Donec congue gravida ante, id
						dignissim sapien. Pellentesque elit lacus, vestibulum et dapibus
						at, semper sed enim. Donec vitae auctor neque. Quisque lectus
						ante, laoreet id leo non, pulvinar efficitur nisl. Duis semper
						justo in augue congue pellentesque. Quisque bibendum ultricies
						ante, sed imperdiet ante maximus in. Duis porta mi egestas
						pharetra lobortis. Vestibulum non venenatis quam. Nulla pretium,
						ipsum posuere convallis blandit, magna quam egestas nulla, quis
						euismod ex elit id dui.</p></li>
			</ul>
		</div>
	</div>
	<div id="block2">
		<form>
			<label for="good-company">좋은 회사:</label> <input type="text"
				id="good-company" name="good-company" size="40"
				placeholder="좋은 회사 이름 입력"> <input id="gcbtn" type='button'
				value="선택!">
		</form>
	</div>
	<div id="block3">
		<form>
			<label for="newcome">신생 회사:</label> <input type="text" id="newcome"
				name="newcome" size="40" placeholder="신규 회사 이름 입력">
			<textarea rows="4" cols="30" id="ncdesc" name="ncdesc"
				placeholder="회사 소개문 입력"></textarea>
			<input id="ncbtn" type='button' value="추가!">
		</form>
	</div>

	<script type="text/javascript">
		$('#ncbtn')
				.click(
						function() {
							var ncName = $('#newcome').val();
							var ncDesc = $('#ncdesc').val();
							//alert(ncName + ", " + ncDesc);

							var newLI = "<li style='display:none'> <span class='sub_title'>"
									+ ncName
									+ "</span>"
									+ "<p style='display:none'>"
									+ ncDesc
									+ " </p> </li>";
							console.log("신규회사 LI 추가 : " + newLI);
							// $('div#company_list ul').prepend(newLI); // 앞
							$('div#company_list ul').append(newLI); //뒤
							$('div#company_list ul li:last').show(1000);
						});

		$('#gcbtn').click(function() {
			var gcVal = $('#good-company').val();
			// input[type=text].value
			console.log(gcVal);
			$('.sub_title').mousemove(function() {
				var st = $(this).text(); // span.textContent

				if (gcVal == st) {
					$(this).css('color', 'red');
				} else {
					$(this).css('color', 'black');
				}
			});
		});

		// 다 수개의 공통 클래스를 가진 모든 요소에
		// 클릭이벤트 처리 핸들러 등록
		$('.sub_title').click(function() {
			$("li p").fadeIn(2000);
			$('li p').css('background-color', 'yellow');
			console.log(".sub_title click 이벤트: " + $('.sub_title').text());
		});

		$('p').click(function() {
			// this는 여기서 이벤트가 발생한 특정 객체 자신을 의미
			$(this).css('background-color', 'white');
			$(this).fadeOut(2000);
		});
	</script>

</body>
</html>