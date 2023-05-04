
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
<link rel="stylesheet" href="/tourapp/common/css/index/main.css" />
<script src="/tourapp/common/js/jquery.min.js"></script>
<script src="/tourapp/common/js/skel.min.js"></script>
<script src="/tourapp/common/js/util.js"></script>
<script src="/tourapp/common/js/main.js"></script>
<link href="https://fonts.googleapis.com/
		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
		rel="stylesheet">
</head>
<body>

	

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<h2>
						<a href="index.html" class="logo"><strong>our T our</strong></a>
					</h2>
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
					<div class="content">
						<h2>자유게시판</h2>
						<table >
						<thead>
							<tr>
								<th>글 번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성날짜</th>
								<th>조회수</th>
								<th>좋아요</th>
							</tr>
							</thead>
						
							
						
						</table>
					</div>
				</section>
			</div>
		</div>

		<div id="sidebar">
			<div class="inner">
				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<nav id="menu">
					<header class="major2">
						<h2>
							<a href="/html/login.html">로그인</a>
						</h2>
					</header>
					<header class="major">
						<h2>메뉴</h2>
					</header>
					<ul>
						<li><a href="/tourapp/board/list.do">자유게시판</a></li>
						<li><a href="generic.html">여행후기</a></li>
						<li><a href="elements.html">여행질문</a></li>
						<li><a href="#">여행메이트구인</a></li>
					</ul>
				</nav>

				<section>
					<header class="major">
						<h2>Contact</h2>
					</header>
					<p>사이트 이용중 문의사항이 있다면 연락주세요.</p>
					<ul class="contact">
						<li class="fa-envelope-o"><a href="#">information@abc.abc</a></li>
						<li class="fa-phone">(02) 123-4567</li>
					</ul>
				</section>

				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>
	</div>

</body>
</html>