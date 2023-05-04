<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sidebar</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/tourapp/common/css/main.css" />
<script src="/tourapp/common/js/jquery.min.js"></script>
<script src="/tourapp/common/js/skel.min.js"></script>
<script src="/tourapp/common/js/util.js"></script>
<script src="/tourapp/common/js/main.js"></script>
</head>
<body>
	<div id="sidebar">
		<div class="inner">
			<!-- Search -->
			<section id="search" class="alt">
				<form method="post" action="#">
					<input type="text" name="query" id="query" placeholder="Search" />
				</form>
			</section>

			<nav id="menu">
				<header class="major">
					<h2>메뉴</h2>
				</header>
				<ul>
					<li><a href="index.html">자유게시판</a></li>
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
		</div>
	</div>

</body>
</html>