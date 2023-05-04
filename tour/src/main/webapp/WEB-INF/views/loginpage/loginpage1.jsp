<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 / 회원가입 폼 템플릿</title>
<link rel="stylesheet" href="/tourapp/common/css/loginstyle.css">
</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="/tourapp/insert.do" method="post">
				<h1>회원가입</h1>

				<span>등록을 위해 귀하의 개인정보를 입력하십시오</span> 
				<input type = "text" name="userId" placeholder="id" />
				<input type = "password" name="pass" placeholder="Pass" />
				<input type = "text" name="name" placeholder="Name" /> 
				<input type = "text" name="email" placeholder="Email" />
				<input type = "text" name="usertel" placeholder="Tel"/>
				<button>가입하기</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="/tourapp/login.do" method="post">
				<h1>로그인</h1>

				<span>로그인을 위해 입력해주세요</span> 
				<input type="text" placeholder="id" name="id" required/> 
				<input type="password" placeholder="pass" name="pass" required/> 
				<a href="#">비밀번호 찾기</a>
				<button>로그인</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>다시 오셨군요!</h1>
					<p>여행자들과 정보공유를 하시려면 로그인하세요!</p>
					<button class="ghost" id="signIn">로그인</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>가입성공!</h1>
					<p>이제 로그인하고 저희와 함께 여행을 시작하세요</p>
					<button class="ghost" id="signUp">회원가입</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	const signUpButton = document.getElementById('signUp');
	const signInButton = document.getElementById('signIn');
	const container = document.getElementById('container');

	signUpButton.addEventListener('click', () => {
	  container.classList.add("right-panel-active");
	});

	signInButton.addEventListener('click', () => {
	  container.classList.remove("right-panel-active");
	});
	
	/* $(document).ready(function() {
		let message = "[[${msg}]]";
		if (message != "") {
			alert(message);
		} else {
			
		}
	}) */
    </script>
</body>
</html>
