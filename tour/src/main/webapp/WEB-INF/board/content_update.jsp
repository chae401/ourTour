 
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
</head>
<body>


	<%
	BoardDTO board = (BoardDTO) request.getAttribute("board");
	%>
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
				<h2>게시글 수정하기</h2>
				<hr />
				<form class="form-horizontal style-form"
					action="/tourapp/board/update.do" method="post"
					enctype="multipart/form-data">
					<div class="form-group"
						style="padding: 10px; border: 1px solid #eff2f7;">
						<input type="hidden" type="text" name="userID"
						value="<%=board.getUserID()%>">
						<input type="hidden" type="text" name="boardNo"
						value="<%= board.getBoardNo()%>">
						
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">게시글 유형</label>

							<div class="col-sm-5">
								<select name="category" class="form-control">
									<option value="자유게시판">자유게시판</option>
									<option value="후기게시판">여행후기</option>
									<option value="질문게시판">질문게시판</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">Title</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="title"
									value="<%=board.getTitle()%>"> <span
									class="help-block"> </span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea id="content"
									style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
									rows=15 name="content"><%=board.getContent()%></textarea>

							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="files" class="control-label">파일1</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="files" placeholder="파일선택" multiple="multiple">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="title" class="control-label">파일2</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="title" placeholder="파일선택">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-lg-4 text-center">
								<div class="col-lg-2 text-center" style="float: left">
									<button type="submit" class="btn btn-success"
										style="width: 100px; background-color: #0ea006">등록</button>
								</div>
								<div class="col-lg-2 text-center">
									<button type="reset" class="btn btn-default"
										style="width: 100px; background-color: #9a9a9a">취소</button>
								</div>
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>

		<jsp:include page="../layout/sidbar.jsp" />

	</div>

</body>
</html>