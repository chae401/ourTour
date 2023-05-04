<%@page import="com.ourtour.tourapp.board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<link rel="stylesheet" href="/tourapp/common/css/main.css" />
<script src="/tourapp/common/js/jquery.min.js"></script>
<script src="/tourapp/common/js/skel.min.js"></script>
<script src="/tourapp/common/js/util.js"></script>
<script src="/tourapp/common/js/main.js"></script>
<link
	href="https://fonts.googleapis.com/
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
					<a href="/tourapp/main.do" class="logo" style="color:#f56a6a"><strong>our T our</strong></a>
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span
								class="label">Instagram</span></a></li>

					</ul>
				</header>

				<%
				ArrayList<BoardDTO> boardlist = (ArrayList<BoardDTO>) request.getAttribute("boardlist");
				%>
				<section id="banner" style="padding: 20px;">
					<div class="content">
						<h2><span>자유게시판</span></h2>
						<div align="right">
						<button  style="width: 100px; background-color: #ff8080" type="button" onclick="location.href='/tourapp/board/write';">글쓰기</button>
						</div>
						<hr/>
						<table class="table">
							<thead>
								<tr>
									<th>글 번호</th>
									<th style="width:500px;">제목</th>
									<th>작성자</th>
									<th>작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<%
								int size = boardlist.size();
								for (int i = 0; i < size; i++) {
									BoardDTO board = boardlist.get(i);
								%>
								<tr>
									<td><%=board.getBoardNo()%></td>
									<td style="width:500px;"><a
										href="/tourapp/board/read.do?boardNo=<%=board.getBoardNo() %>&state=READ"><%=board.getTitle()%></a></td>
									<td><%=board.getUserID()%></td>
									<td><%=board.getWritedate()%></td>
								</tr>


								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</section>
			</div>
		</div>
		<!-- Sidebar -->
		<jsp:include page="../layout/sidbar.jsp" />
	</div>


</body>
</html>