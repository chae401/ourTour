<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<link rel="stylesheet" href="/tourapp/common/css/index/main.css" />

</head>
<body>
	<!-- Sidebar -->
	<div id="sidebar">
		<div class="inner">
			<!-- Menu -->
			<nav id="menu">
				<header class="major2">
					<h2>
						<%@page import="com.ourtour.tourapp.user.*"%>

						<% UserDTO loginUser = (UserDTO)session.getAttribute("loginUser"); %>
						<%if(loginUser==null){ %>
						<a href="/tourapp/userlogin">로그인</a>
						<%}else{ %>
						
						<a href="/tourapp/main.do"><%= loginUser.getName() %></a><br>
						<a href="/tourapp/profile" style="font-size: 18px;">회원정보</a>
						<br>
						<a href="/tourapp/logout.do" style="font-size: 18px;">로그아웃</a>
												
						<%} %>

					</h2>
				</header>
				<header class="major">
					<h2>메뉴</h2>
				</header>
				<ul>
					<li><a href="/tourapp/main.do">메인메뉴</a></li>
					<li><a href="/tourapp/board/list.do">자유게시판</a></li>
					<li><a href="/tourapp/board/list1.do">여행후기</a></li>
					<li><a href="/tourapp/board/list2.do">여행질문</a></li>
					<li><a href="#">여행메이트구인</a></li>
				</ul>
			</nav>

			<!-- Section -->
<!-- 			<section>
				<header class="major">
					<h2>추천 여행지</h2>
				</header>
				<div class="mini-posts">
					<article>
						<a href="#" class="image"><img src="/tourapp/images/pic07.jpg"
							alt="" /></a>
						<p>안면도여행 당일 코스로 즐기기 해안가로 드라이브 여햄낙조와 힐링을 느껴보세요</p>
					</article>
					<article>
						<a href="#" class="image"><img src="/tourapp/images/pic08.jpg"
							alt="" /></a>
						<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
							dolore aliquam.</p>
					</article>
					<article>
						<a href="#" class="image"><img src="/tourapp/images/pic09.jpg"
							alt="" /></a>
						<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
							dolore aliquam.</p>
					</article>
				</div>
				<ul class="actions">
					<li><a href="#" class="button">More</a></li>
				</ul>
			</section> -->
		</div>
	</div>
</body>
</html>