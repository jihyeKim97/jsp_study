<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
div {
	border: 1px solid;
	padding: 30px;
}

.title {
	text-align: center;
	font-size: xx-large;
	border-bottom: 3px double;
	font-size: xx-large;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<body>
	<div class="block1">
		<h2 class="title">IT 회사 종류 리스트</h2>
		<div class="company_list">
			<ul>
				<li><span class="sub_title">Samsung</span>
					<p style="display: none">t is a long established fact that a
						reader will be distracted by the readable content of a page when
						looking at its layout. The point of using Lorem Ipsum is that it
						has a more-or-less normal distribution of letters, as opposed to
						using 'Content here, content here', making it look like readable
						English. Many desktop publishing packages and web page editors now
						use Lorem Ipsum as their default model text, and a search for
						'lorem ipsum' will uncover many web sites still in their infancy.
						Various versions have evolved over the years, sometimes by
						accident, sometimes on purpose (injected humour and the like).</p></li>
				<li><span class="sub_title">LG</span>
					<p style="display: none">t is a long established fact that a
						reader will be distracted by the readable content of a page when
						looking at its layout. The point of using Lorem Ipsum is that it
						has a more-or-less normal distribution of letters, as opposed to
						using 'Content here, content here', making it look like readable
						English. Many desktop publishing packages and web page editors now
						use Lorem Ipsum as their default model text, and a search for
						'lorem ipsum' will uncover many web sites still in their infancy.
						Various versions have evolved over the years, sometimes by
						accident, sometimes on purpose (injected humour and the like).</p></li>
				<li><span class="sub_title">Google</span>
					<p style="display: none">t is a long established fact that a
						reader will be distracted by the readable content of a page when
						looking at its layout. The point of using Lorem Ipsum is that it
						has a more-or-less normal distribution of letters, as opposed to
						using 'Content here, content here', making it look like readable
						English. Many desktop publishing packages and web page editors now
						use Lorem Ipsum as their default model text, and a search for
						'lorem ipsum' will uncover many web sites still in their infancy.
						Various versions have evolved over the years, sometimes by
						accident, sometimes on purpose (injected humour and the like).</p></li>
				<li><span class="sub_title">naver</span>
					<p style="display: none">t is a long established fact that a
						reader will be distracted by the readable content of a page when
						looking at its layout. The point of using Lorem Ipsum is that it
						has a more-or-less normal distribution of letters, as opposed to
						using 'Content here, content here', making it look like readable
						English. Many desktop publishing packages and web page editors now
						use Lorem Ipsum as their default model text, and a search for
						'lorem ipsum' will uncover many web sites still in their infancy.
						Various versions have evolved over the years, sometimes by
						accident, sometimes on purpose (injected humour and the like).</p></li>
			</ul>
		</div>
	</div>
	<div class="block2"></div>
	<div class="block3"></div>

	<script type="text/javascript">
		$('.sub_title').click(function() {
			// $('li p').css('display', 'block');
			$("li p").fadeIn(2000);
			$("li p").css('background', 'yellow');

			$('p').click(function() {
				// this는 여기 이벤트가 발생한 특정 객체 자기 자신을 의미
				$(this).css('background', 'white');
				$(this).fadeOut(2000);
			});
		});
	</script>
</body>
</html>