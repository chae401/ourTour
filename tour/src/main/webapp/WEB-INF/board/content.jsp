
<%@page import="com.ourtour.tourapp.board.BoardFileDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.ourtour.tourapp.reply.ReplyDTO"%>
<%@page import="com.ourtour.tourapp.user.UserDTO"%>
<%@page import="com.ourtour.tourapp.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<link rel="stylesheet" href="/tourapp/common/css/index/main.css" />
<script src="/tourapp/common/js/jquery.min.js"></script>
<script src="/tourapp/common/js/skel.min.js"></script>
<script src="/tourapp/common/js/util.js"></script>
<script src="/tourapp/common/js/main.js"></script>
<link
	href="https://fonts.googleapis.com/
		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/tourapp/common/css/styles.css" rel="stylesheet" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="/tourapp/common/css/index/main.css" />
<!-- 아이콘 api 불러오기-->
<link
	href="https://fonts.googleapis.com/
		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
	rel="stylesheet">
</head>
<body>


	<%
	BoardDTO board = (BoardDTO) request.getAttribute("board");

	UserDTO user = (UserDTO) session.getAttribute("loginUser");

	List<ReplyDTO> replylist = (List<ReplyDTO>) request.getAttribute("replylist");

	List<BoardFileDTO> filelist = (List<BoardFileDTO>) request.getAttribute("filelist");
	%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<h2>
						<a href="/tourapp/main.do" class="logo"><strong>our T
								our</strong></a>
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
						<div class="article_header">
							<!-- 게시판 카테고리 -->
							<h6 style="color: gray;"><%=board.getCategory()%></h6>
							<!-- 게시글 제목 -->
							<h2 id="elements"><%=board.getTitle()%></h2>

							<div class="content_info">
								<!-- 게시자 이미지 -->
								<div class="writer_img" style="float: left">
									<img src="/tourapp/images/6681204.png"
										style="padding: 5px; width: 25px; height: 25px" />
								</div>
								<!-- 게시자 이름 -->
								<div class="writer_info"
									style="float: left; padding: 5px 15px 5px 2px;"><%=board.getUserID()%></div>
								<!-- 게시 날짜 -->
								<div class="date" style="color: lightgray; padding: 5px;"><%=board.getWritedate()%>
								</div>
							</div>
							<%
							if (user != null) {
							%>
							<div class="buttons" align="right">
								<a
									href="/tourapp/board/read.do?boardNo=<%=board.getBoardNo()%>&state=UPDATE"
									style="text-decoration: none;">수정</a> <a
									style="text-decoration: none;">/</a> <a
									href="/tourapp/board/delete.do?boardNo=<%=board.getBoardNo()%>"
									style="text-decoration: none;">삭제</a>
							</div>
							<%
							}
							%>
						</div>
						<hr />
						<article>
							<%
							int size = filelist.size();
							for (int i = 0; i < size; i++) {
								BoardFileDTO file = filelist.get(i);
								if (!file.getOriginalFilename().equals("")) {
							%>
							<a href="#" class="image"><img
								src="/tourapp/upload/<%=file.getStoreFilename()%>" alt="" /></a>
							<%
							}
							}
							%>
							<%=board.getContent()%>
							
						</article>
						<hr />
						<h4>댓글</h4>
						<!-- Comments section-->
						<section class="mb-5" style="padding: 20px;">
							<div class="card bg-light">
								<div class="card-body">
									<!-- Comment form-->
									<form class="mb-4" action="/tourapp/reply/insert.do">
										<%
										if (user != null) {
										%>
										<input type="hidden" type="text" name="userID"
											value="<%=user.getId()%>">
										<%
										}
										%>
										<input type="hidden" type="text" name="boardNo"
											value="<%=board.getBoardNo()%>">
										<textarea class="form-control" rows="3"
											placeholder="Join the discussion and leave a comment!"
											name="text"></textarea>
										<div align="right">
											<button type="submit" class="btn btn-success"
												style="width: 100px; background-color: #ff8080">등록</button>
										</div>
									</form>
									<%
									size = replylist.size();
									for (int i = 0; i < size; i++) {
										ReplyDTO reply = replylist.get(i);
									%>
									<!-- Single comment-->
									<div class="d-flex" style="padding: 18px;">
										<div class="flex-shrink-0">
											<img class="rounded-circle"
												src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
												alt="..." />
										</div>
										<div class="ms-3">
											<div class="fw-bold"><%=reply.getUserID()%></div>
											<div><%=reply.getText()%></div>
											<div align="right" style="color: gray"><%=reply.getWritedate()%></div>

										</div>
									</div>
									<%
									}
									%>
								</div>
							</div>
						</section>

					</div>
				</section>
			</div>
		</div>

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