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
<link rel="stylesheet" href="/tourapp/common/css/profile.css" />

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
						<a href="/tourapp/signup.do">로그인</a>
						<%}else{ %>
						
						<a href="/tourapp/main.do"><%= loginUser.getName() %></a><br>
						<a href="/tourapp/view/profile" style="font-size: 18px;">회원정보</a>
						<br>
						<a href="/tourapp/logout.do" style="font-size: 18px;">로그아웃</a>
												
						<%} %>

					</h2>
				</header>
				<header class="major">
					<h2>메뉴</h2>
				</header>
				<div>
					<ul>
							<li>커뮤니티
							<ul>
								<li><a href="/tourapp/board/list.do">자유게시판</a></li>
								<li><a href="/tourapp/board/list1.do">여행후기</a></li>
								<li><a href="/tourapp/board/list2.do">여행질문</a></li>
							</ul>
						</li>
						<li><a href="/tourapp/recommend">여행 추천</a></li>
					</ul>
				</div>
			</nav>

		</div>
	</div>
</body>
</html>