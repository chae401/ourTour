<%@page import="com.ourtour.tourapp.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="stylesheet" href="/tourapp/common/css/main.css" /> -->
<script src="/tourapp/common/js/jquery.min.js"></script>
<script src="/tourapp/common/js/skel.min.js"></script>
<script src="/tourapp/common/js/util.js"></script>
<script src="/tourapp/common/js/main.js"></script>
</head>
<body>
	<%
	UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
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
				<h2>
					게시글 작성하기
				</h2>
				<hr>
				<form class="form-horizontal style-form"
					action="/tourapp/board/insert.do" method="post"
					enctype="multipart/form-data">
					<div class="form-group" style="border: 1px solid #eff2f7;">
						<div class="form-group">
							<label style="font-size: 13pt;"
								class="col-sm-2 col-sm-2 control-label">작성자</label>
							<div class="col-sm-10">
								<%
								if (loginUser == null) {
								%>
								<input type="text" name="userID"
									value="로그인 후 이용하면 더욱 편리하게 서비스를 이용할 수 있습니다.">
								<%
								} else {
								%>
								<input type="text" name="userID" value="<%=loginUser.getId()%>">
								<%
								}
								%>
							</div>
						</div>
						<div class="form-group">
							<label style="font-size: 13pt;"
								class="col-sm-2 col-sm-2 control-label">게시글 유형</label>

							<div class="col-sm-5">
								<select name="category" class="form-control">
									<option value="자유게시판">자유게시판</option>
									<option value="후기게시판">여행후기</option>
									<option value="질문게시판">질문게시판</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label style="font-size: 13pt;"
								class="col-sm-2 col-sm-2 control-label">제목</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="title"> <span
									class="help-block"> </span>
							</div>
						</div>
						<div class="form-group">
							<label style="font-size: 13pt;"
								class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea id="content"
									style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
									rows=15 name="content"></textarea>

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
							<div align="center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; background-color: #ff8080">등록</button>
								<button type="reset" class="btn btn-default"
									style="width: 100px; background-color: #9a9a9a">취소</button>
							</div>
							<!-- <div class="col-lg-4 text-center"></div>
							<div class="col-lg-2 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; background-color: #0ea006">등록</button>
							</div>
							<div class="col-lg-2 text-center">
								<button type="reset" class="btn btn-default"
									style="width: 100px; background-color: #9a9a9a">취소</button>
							</div> -->

						</div>
					</div>
				</form>
				<div class="row mt">

					<div class="col-lg-12">

						<div class="form-panel">

							<!-- <form class="form-horizontal style-form"
								action="/tourapp/board/insert.do" method="post"
								enctype="multipart/form-data">
								<div class="form-group" style="border: 1px solid #eff2f7;">
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">작성자</label>
										<div class="col-sm-10">
											<input type="text" name="userID">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">게시글 유형</label>

										<div class="col-sm-5">
											<select name="category" class="form-control">
												<option value="자유">자유게시판</option>
												<option value="여행후기">여행후기</option>
												<option value="질문">질문게시판</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">제목</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="title">
											<span class="help-block"> </span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">내용</label>
										<div class="col-sm-8">
											<textarea id="content"
												style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
												rows=15 name="content"></textarea>

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
										<div class="col-lg-4 text-center"></div>
										<div class="col-lg-2 text-center">
											<button type="submit" class="btn btn-success"
												style="width: 100px; background-color: #0ea006">등록</button>
										</div>
										<div class="col-lg-2 text-center">
											<button type="reset" class="btn btn-default"
												style="width: 100px; background-color: #9a9a9a">취소</button>
										</div>

									</div>
								</div>
							</form> -->
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Sidebar -->
		<jsp:include page="../layout/sidbar.jsp" />
	</div>


</body>
</html>
