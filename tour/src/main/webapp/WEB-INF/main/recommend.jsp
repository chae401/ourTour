<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="/common/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/tourapp/common/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="/common/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/common/css/ie8.css" /><![endif]-->
		
		<!--추천 여행지 이미지-->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

		<!--추천-->
		<link rel="icon" href="/tourapp/images/favicon.png">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/bootstrap.min.css">
		<!-- animate CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/animate.css">
		<!-- owl carousel CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/owl.carousel.min.css">
		<!-- themify CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/themify-icons.css">
		<!-- flaticon CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/flaticon.css">
		<!-- fontawesome CSS -->
		<link rel="stylesheet" href="/tourapp/common/fontawesome/css/all.min.css">
		<!-- magnific CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/magnific-popup.css">
		<link rel="stylesheet" href="/tourapp/common/css/gijgo.min.css">
		<!-- niceselect CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/nice-select.css">
		<!-- slick CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/slick.css">
		<!-- style CSS -->
		<link rel="stylesheet" href="/tourapp/common/css/style.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
		<script type="text/javascript">
		
			$(document).ready(function(){
				let today = new Date();
				let month = today.getMonth()+1;
				if(month>=3 && month<=5){
					$("#season").css({"background-image":"url(/tourapp/images/spring.jpg)"});
				}else if(month>=6 && month<=8){
					$("#season").css({"background-image":"url(/tourapp/images/summer.jpg)"});
				}else if(month>=9 && month<=11){
					$("#season").css({"background-image":"url(/tourapp/images/autumn.jpg)"});
				}else{
					$("#season").css({"background-image":"url(/tourapp/images/winter.jpg)"});
				}

				$("#pick").on("click", function(){
					var offset = $("#view_image").offset();
					$('html').animate({scrollTop : offset.top}, 400);
				});
				
			});
			
			function chk_form(){
				if(document.getElementById("content").value==''){
					alert("카테고리를 선택해주세요");
					return false;
				}
				if(document.getElementById("keyword").value==''){
					alert("키워드를 입력해주세요");
					return false;
				}
				document.getElementById("recommend_keyword").submit();
			}
		</script>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- banner part start-->
								<section class="banner_part" id="season">
									<div class="container">
										<div class="row align-items-center justify-content-center">
											<div class="col-lg-10">
												<div class="banner_text text-center">
													<div class="banner_text_iner">
														<p style="color:#fff; font-size:3.5em; font-weight: 900;"> our T our</p>
														<br/>
														<p>Let’s start your journey with us, your dream will come true</p>
														<a href="#" class="btn_1" id="pick">Today's pick</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							<!-- banner part start-->
						
							<!-- booking part start-->
								<section class="booking_part" style="border: none;">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<div class="booking_content">
													<div class="tab-content" id="myTabContent">
														<div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
															<div class="booking_form">
																<form action="/tourapp/recommend.do" id="recommend_keyword">
																	<div class="form-row">
																		<div class="form_colum">
																			<select name="content" class="nc_select" id="content">
																				<option selected>Choose content </option>
																				<!-- (12:관광지, 14:문화시설, 15:축제공연행사, 25:여행코스, 28:레포츠, 32:숙박, 38:쇼핑, 39:음식점) -->
																				<option value="12">관광지</option>
																				<option value="14">문화시설</option>
																				<option value="15">축제공연행사</option>
																				<option value="25">여행코스</option>
																				<option value="28">레포츠</option>
																				<option value="32">숙박</option>
																				<option value="38">쇼핑</option>
																				<option value="39">음식점</option>
																				<!-- <option value="경기">경기</option>
																				<option value="강원">강원</option>
																				<option value="충청북도">충청북도</option>
																				<option value="충청남도">충청남도</option>
																				<option value="전라북도">전라북도</option>
																				<option value="전라남도">전라남도</option>
																				<option value="경상북도">경상북도</option>
																				<option value="경상남도">경상남도</option> -->
																				
																			</select>
																		</div>
																		<div class="form_colum" style="width:65%">
																			<input name="keyword" id="keyword" placeholder="   Search the keywords" style="width:630px; height:50px">
																		</div>
																		<div class="form_btn">
																			<a onclick="return chk_form()" class="btn_1">search</a>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							<!-- Header part end-->
						
							<!--top place start-->
								<section class="top_place section_padding" id="view_image">
									<div class="container">
										<!-- <div class="row justify-content-center">
											<div class="col-xl-6">
												<div class="section_tittle text-center">
													 <h2>Top Places to visit</h2>
													<p>Waters make fish every without firmament saw had. Morning air subdue. Our. Air very one. Whales grass is fish whales winged.</p>
												</div>
											</div>
										</div> -->

										<style type="text/css">
											.travel_image{
												height:300px;
												width :510px
											}
										</style>
										
										<% Map<String, Map> items = (Map<String, Map>)request.getAttribute("items"); %>
										
										<div class="row">
											<% if(items!=null){
												for (Map.Entry<String, Map> entry : items.entrySet()){
													Map<String, String> item = items.get(entry.getKey());%>
													<div class="col-lg-4 col-md-4">
														<div class="single_place">
															<div class="card" style="width:325px; height:325px">
																<img class="card-img-top" src="<%=item.get("image") %>" alt="Card image" style="width:100%">
																<div class="card-body">
																  <h4 class="card-title"><%=item.get("title") %></h4>
																  <p class="card-text"><%=item.get("addr") %></p>
																  <!-- <a href="#" class="btn btn-primary">view more</a> -->
																</div>
															  </div>
														</div>
													</div>
												<%} 
											}%>
											
			
										</div>
										<!-- <div style="text-align : center;">
											<a href="#" class="btn_1 text-cnter">Discover more</a>
										</div> -->
									</div>
								</section>
							<!--top place end-->
						</div>
					</div>

				
			

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="index.html">Homepage</a></li>
										<li><a href="generic.html">Generic</a></li>
										<li><a href="elements.html">Elements</a></li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Etiam Dolore</a></li>
										<li><a href="#">Adipiscing</a></li>
										<li>
											<span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul>
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="/tourapp/images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/tourapp/images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="/tourapp/images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
										<li class="fa-phone">(000) 000-0000</li>
										<li class="fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/common/js/jquery.min.js"></script>
			<script src="/common/js/skel.min.js"></script>
			<script src="/common/js/util.js"></script>
			<!--[if lte IE 8]><script src="/common/js/ie/respond.min.js"></script><![endif]-->
			<script src="/common/js/main.js"></script>

	</body>
</html>