<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>our T our</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="/tourapp/common/css/main.css" />
<!-- 아이콘 api 불러오기-->
<link
	href="https://fonts.googleapis.com/
		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
	rel="stylesheet">

<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<div class="video-background">
					<video autoplay muted loop>
						<source src="/tourapp/images/videoplayback.mp4" type="video/mp4">
						<source src="images/videoplayback2.mp4" type="video/mp4">
					</video>
				</div>
				<!-- Header -->
				<header id="header2">
					<a href="/tourapp/main.do" class="a2"><strong>our T our</strong></a>
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span
								class="label">Instagram</span></a></li>

					</ul>
				</header>

				<!-- Banner -->
				<section id="banner">

					<div class="content2">
						<header>
							<h1 class="mname">"새로운 경험과 추억을 쌓을 여행"</h1>
							<p>일상을 벗어나 새로운 세상을 만나는 여행</p>
						</header>
						<p>여러가지 여행 정보을 공유해보세요!</p>
						<ul class="actions">
							<li><a href="/tourapp/board/list.do" class="button big">커뮤니티 이동하기</a></li>
						</ul>
					</div>
				</section>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>여행자들의 모임</h2>
					</header>
					<div class="features">
						<article>
							<span class="icon fa-paper-plane"></span>
							<div class="content">
								<h3>여행 정보를 공유하세요!</h3>
								<p>여행에 관련한 모든 궁금한 것들을 ourTour에서 물어보세요! </p>
							</div>
						</article>
						<article>
							<span class="icon fa-rocket"></span>
							<div class="content">
								<h3>어떤 여행을 갈지 모르겠다면?</h3>
								<p>ourTour가 제공하는 추천 서비스를 이용해보세요. 원하는 테마와 키워드를 입력하면 원하는 정보를 찾을 수 있습니다!</p>
							</div>
						</article>
						<article>
							<span class="icon fa-rocket"></span>
							<div class="content">
								<h3>혼자 여행가기가 두렵다면?</h3>
								<p>ourTour에서 자신에게 맞는 여행 파트너를 찾아보세요!</p>
							</div>
						</article>
						<article>
							<span class="icon fa-paper-plane"></span>
							<div class="content">
								<h3>여행 고민은 ourTour에서!</h3>
								<p>ourTour가 여러분의 여행을 응원합니다!</p>
							</div>
						</article>
					</div>
				</section>

			</div>
		</div>
		<!-- Sidebar -->
		<jsp:include page="../layout/sidbar.jsp" />


	</div>

	<!-- Scripts -->
	<script src="/tourapp/common/js/index/jquery.min.js"></script>
	<script src="/tourapp/common/js/index/skel.min.js"></script>
	<script src="/tourapp/common/js/index/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/tourapp/common/js/index/main.js"></script>

</body>
</html>