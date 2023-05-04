<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/tourapp/common/css/index/main2.css" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<section class="py-5 my-5">
					<div class="container">
						<div class="bg-white shadow rounded-lg d-block d-sm-flex">
							<div class="profile-tab-nav border-right" style="width:300px;">
								<div class="p-4">
								
									<div class="img-circle text-center mb-3">
										<img src="/tourapp/images/6681204.png" alt="Image" class="shadow" style="width:70px; height:70px;">
									</div> 
								<%@page import="com.ourtour.tourapp.user.*"%>
									
								<% UserDTO loginUser = (UserDTO)session.getAttribute("loginUser"); %>
								<%if(loginUser==null){ %>
								<% }else{ %>
										<h4 class="text-center"><%= loginUser.getName() %></h4>
								<%} %>
								</div>
								<div class="nav flex-column nav-pills" id="v-pills-tab"
									role="tablist" aria-orientation="vertical">
									<a class="nav-link active" id="account-tab" data-toggle="pill"
										href="#account" role="tab" aria-controls="account"
										aria-selected="true"> <i
										class="fa fa-home text-center mr-1"></i> 회원정보
									</a> <a class="nav-link" id="password-tab" data-toggle="pill"
										href="#password" role="tab" aria-controls="password"
										aria-selected="false"> <i
										class="fa fa-key text-center mr-1"></i> 비밀번호 변경
									</a>
								</div>
							</div>
							<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
								<div class="tab-pane fade show active" id="account"
									role="tabpanel" aria-labelledby="account-tab">
									<form action="/tourapp/update.do" method="post">
									<h3 class="mb-4">회원정보</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>ID</label> <input type="text"
													name = "id" class="form-control" value="<%= loginUser.getId()%>" readonly>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>이름</label> <input type="text"
													name = "name" class="form-control" value="<%=loginUser.getName()%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>이메일</label> <input type="text" class="form-control"
													name = "email" value="<%= loginUser.getEmail() %>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>전화번호</label> <input type="text"
													name = "usertel"class="form-control" value="<%=loginUser.getUsertel()%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>성별</label> <input type="text"
													name = "gender" class="form-control" value="<%=loginUser.getGender()%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>가입일</label> <input type="text"
													class="form-control" value="<%=loginUser.getBirth()%>" readonly>
													
											</div>
										</div>

									</div>
									<div>
										<button class="btn btn-primary">Update</button>
									</div>
								</form>
									
								</div>
								<div class="tab-pane fade" id="password" role="tabpanel"
									aria-labelledby="password-tab">
									<h3 class="mb-4">비밀번호 변경</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>기존 비밀번호</label> <input type="password"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label">새로운 비밀번호</label> <input type="password"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ</label> <input type="hidden"
													class="form-control">
											</div>
										</div>
									</div>
									<div>
										<button class="btn btn-primary">Update</button>
										<button class="btn btn-light">Cancel</button>
									</div>
								</div>
								<div class="tab-pane fade" id="security" role="tabpanel"
									aria-labelledby="security-tab">
									<h3 class="mb-4">Security Settings</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Login</label> <input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Two-factor auth</label> <input type="text"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="recovery"> <label class="form-check-label"
														for="recovery"> Recovery </label>
												</div>
											</div>
										</div>
									</div>
									<div>
										<button class="btn btn-primary">Update</button>
										<button class="btn btn-light">Cancel</button>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<jsp:include page="/WEB-INF/layout/sidbar.jsp" />
		<!-- Scripts -->
	</div>
	
					<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>