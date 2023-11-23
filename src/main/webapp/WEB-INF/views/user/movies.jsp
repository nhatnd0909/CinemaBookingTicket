<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Movies</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">

</head>

<body>
	<!-- header -->
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="home"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz </a>
				</h1>
				<!-- if logo is image enable this   
							<a class="navbar-brand" href="#home">
								<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
							</a> -->
				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<!-- <span class="navbar-toggler-icon"></span> -->
					<span class="fa icon-expand fa-bars"></span> <span
						class="fa icon-close fa-times"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="home">Trang Chủ</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="movies">Phim</a></li>
						<li class="nav-item"><a class="nav-link" href="about">Thông Tin</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact">Liên Hệ</a></li>
					</ul>

					<!--/search-right-->
					<!--/search-right-->
					<div class="search-right">
						<a href="#search" class="btn search-hny mr-lg-3 mt-lg-0 mt-4"
							title="search">Tìm <span class="fa fa-search ml-3"
							aria-hidden="true"></span></a>
						<!-- search popup -->
						<div id="search" class="pop-overlay">
							<div class="popup">
								<form action="#" method="post" class="search-box">
									<input type="search" placeholder="Search your Keyword"
										name="search" required="required" autofocus="">
									<button type="submit" class="btn">
										<span class="fa fa-search" aria-hidden="true"></span>
									</button>
								</form>
								<div class="browse-items">
									<h3 class="hny-title two mt-md-5 mt-4">Browse all:</h3>
									<ul class="search-items">
										<li><a href="movies">Action</a></li>
										<li><a href="movies">Drama</a></li>
										<li><a href="movies">Family</a></li>
										<li><a href="movies">Thriller</a></li>
										<li><a href="movies">Commedy</a></li>
										<li><a href="movies">Romantic</a></li>
										<li><a href="movies">Tv-Series</a></li>
										<li><a href="movies">Horror</a></li>
										<li><a href="movies">Action</a></li>
										<li><a href="movies">Drama</a></li>
										<li><a href="movies">Family</a></li>
										<li><a href="movies">Thriller</a></li>
										<li><a href="movies">Commedy</a></li>
										<li><a href="movies">Romantic</a></li>
										<li><a href="movies">Tv-Series</a></li>
										<li><a href="movies">Horror</a></li>
									</ul>
								</div>
							</div>
							<a class="close" href="#close">×</a>
						</div>
						<!-- /search popup -->
						<!--/search-right-->
					</div>
					<c:if test="${loggedIn eq 0}">
						<div class="Login_SignUp" id="login"
							style="font-size: 2rem; display: inline-block; position: relative;">
							<!-- <li class="nav-item"> -->
							<a class="nav-link" href="signin"><i
								class="fa fa-user-circle-o"></i></a>
							<!-- </li> -->
						</div>
					</c:if>
					<c:if test="${loggedIn eq 1}">
						<div class="Login_SignUp" id="login"
							style="font-size: 2rem; display: inline-block; position: relative;">
							<!-- <li class="nav-item"> -->
							<a class="nav-link" href="history"><i
								class="fa fa-user-circle-o"></i></a>
							<!-- </li> -->
						</div>
						${loggedInAccount.getName()}
						<div style="padding-left: 15px">
							<a href="logout">Logout</a>
						</div>
					</c:if>

				</div>
				<!-- toggle switch for light and dark theme -->
				<div class="mobile-position">
					<nav class="navigation">
						<div class="theme-switch-wrapper">
							<label class="theme-switch" for="checkbox"> <input
								type="checkbox" id="checkbox">
								<div class="mode-container">
									<i class="gg-sun"></i> <i class="gg-moon"></i>
								</div>
							</label>
						</div>
					</nav>
				</div>
			</div>
		</nav>
	</header>
	<!--/breadcrumbs -->
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
			<div class="container page-wrapper">
				<a href="home">Trang Chủ</a> » <span class="breadcrumb_last"
					aria-current="page">Phim</span>
			</div>
		</nav>
	</div>
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Gần Đây</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="movies">Hiển Thị Tất Cả</a>
							</h4>
						</div>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<c:forEach items="${listLatest}" var="movie">
						<div class="item vhny-grid">
							<div class="box16 mb-0" onclick="location.href='details?name=${movie.name}';">
								<figure>
									<img class="img-fluid" src="assets/images/${movie.image}"
										alt="" style="height: 400px;">
								</figure>
								<a href=".Commando3" data-toggle="modal">
									<div class="box-content">
										<h3 class="title">${movie.name}</h3>
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span> ${movie.duration} min</span> <span
												class="post fa fa-heart text-right"></span>
										</h4>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		</div>
	</section>
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Gần Đây</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="movies">Hiển Thị Tất Cả</a>
							</h4>
						</div>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<c:forEach items="${listLatest}" var="movie">
						<div class="item vhny-grid">
							<div class="box16 mb-0" onclick="location.href='details?name=${movie.name}';">
								<figure>
									<img class="img-fluid" src="assets/images/${movie.image}"
										alt="" style="height: 400px;">
								</figure>
								<a href=".Commando3" data-toggle="modal">
									<div class="box-content">
										<h3 class="title">${movie.name}</h3>
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span> ${movie.duration} min</span> <span
												class="post fa fa-heart text-right"></span>
										</h4>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="button-center text-center mt-3">
				<a href="#" class="btn view-button">Xem Tất Cả<span
					class="fa fa-angle-double-right ml-2" aria-hidden="true"></span></a>
			</div>
		</div>
	</section>

	<section class="w3l-albums py-5" id="projects">
		<div class="container py-lg-4">
			<div class="row">
				<div class="col-lg-12 mx-auto">
					<!--Horizontal Tab-->
					<div id="parentHorizontalTab">
						<ul class="resp-tabs-list hor_1">
							<li>Phim Gần Đây</li>
							<li>Phim Nổi Tiếng</li>
							<div class="clear"></div>
						</ul>
						<div class="resp-tabs-container hor_1">
							<div class="albums-content">
								<div class="row">
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"> <img src="assets/images/m6.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div>
												</a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Long Shot</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m5.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Jumanji</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m4.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Little Women</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m1.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Rocketman</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m2.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Doctor Sleep</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m3.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Knives Out</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/n1.jpg"
													class="img-fluid" alt="author image"> <span
													class="fa fa-play video-icon" aria-hidden="true"></span> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">No Time to
													Die</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/n2.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Mulan</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/n3.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Free Guy</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="albums-content">
								<div class="row">
									<!--/set1-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m1.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Rocketman</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m2.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Doctor Sleep</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m3.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Knives Out</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m7.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Frozen 2</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m8.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Toy Story 4</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m9.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Joker</a>
												<h4>
													<span class="post"><span class="fa fa-clock-o">
													</span> 2 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
												</h4>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--grids-sec2-->
	<!-- footer-66 -->
	<footer class="w3l-footer">
		<section class="footer-inner-main">
			<div class="footer-hny-grids py-5">
				<div class="container py-lg-4">
					<div class="text-txt">
						<div class="right-side">
							<div class="row footer-about">
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="assets/images/banner1.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="assets/images/banner2.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="assets/images/banner3.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="assets/images/banner4.jpg" alt=""></a>
								</div>
							</div>
							<div class="row footer-links">


								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Phim</h6>
									<ul>
										<li><a href="#">Phim Nổi Tiếng </a></li>
										<li><a href="#">Phim Sắp Chiếu</a></li>
										
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Thông Tin Chung</h6>
									<ul>
										<li><a href="home">Trang Chủ</a></li>
										<li><a href="about">Thông Tin</a></li>
										<li><a href="signin">Đăng Nhập</a></li>
										<li><a href="contact">Liên Hệ</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Địa Điểm</h6>
									<ul>
										<li><a href="movies">Phường Hòa Hải,Quận Ngũ Hành Sơn,TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Hải Bắc, Quận Sơn Trà, TP Đà Nẵng</a></li>
										<li><a href="movies">Phường Chính Gián,Quận Thanh Khuê,TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Xuân, TP Tam Kỳ, Quảng Nam</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Bản Tin</h6>
									<form action="#" class="subscribe mb-3" method="post">
										<input type="email" name="email"
											placeholder="Nhập email của bạn tại đây" required="">
										<button>
											<span class="fa fa-envelope-o"></span>
										</button>
									</form>
									<p>Nhập email của bạn và nhận những tin tức, cập nhật mới nhất và ưu đãi đặc biệt từ chúng tôi.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="below-section">
				<div class="container">
					<div class="copyright-footer">
						<div class="columns text-lg-left">
							<p>&copy; 2023 MyShowz. All rights reserved</p>
						</div>

						<ul class="social text-lg-right">
							<li><a href="#facebook"><span class="fa fa-facebook"
									aria-hidden="true"></span></a></li>
							<li><a href="#linkedin"><span class="fa fa-linkedin"
									aria-hidden="true"></span></a></li>
							<li><a href="#twitter"><span class="fa fa-twitter"
									aria-hidden="true"></span></a></li>
							<li><a href="#google"><span class="fa fa-google-plus"
									aria-hidden="true"></span></a></li>

						</ul>
					</div>
				</div>
			</div>
			<!-- move top -->
			<button onclick="topFunction()" id="movetop" title="Go to top">
				<span class="fa fa-arrow-up" aria-hidden="true"></span>
			</button>
			<script>
				// When the user scrolls down 20px from the top of the document, show the button
				window.onscroll = function() {
					scrollFunction()
				};

				function scrollFunction() {
					if (document.body.scrollTop > 20
							|| document.documentElement.scrollTop > 20) {
						document.getElementById("movetop").style.display = "block";
					} else {
						document.getElementById("movetop").style.display = "none";
					}
				}

				// When the user clicks on the button, scroll to the top of the document
				function topFunction() {
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
				}
			</script>
			<!-- /move top -->

		</section>
	</footer>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<!--/theme-change-->
	<script src="assets/js/theme-change.js"></script>
	<script src="assets/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$('.owl-four').owlCarousel({
				loop : true,
				margin : 20,
				nav : false,
				responsiveClass : true,
				autoplay : false,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 1,
						nav : false
					},
					480 : {
						items : 2,
						nav : true
					},
					667 : {
						items : 2,
						nav : true
					},
					1000 : {
						items : 2,
						nav : true
					}
				}
			})
		})
	</script>
	<script>
		$(document).ready(function() {
			$('.owl-two').owlCarousel({
				loop : true,
				margin : 40,
				nav : false,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 1,
						nav : false
					},
					480 : {
						items : 2,
						nav : true
					},
					667 : {
						items : 2,
						margin : 20,
						nav : true
					},
					1000 : {
						items : 3,
						nav : true
					}
				}
			})
		})
	</script>
	<!-- script for owlcarousel -->
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<script src="assets/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//Horizontal Tab
			$('#parentHorizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				tabidentify : 'hor_1', // The tab groups identifier
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
		});
	</script>

	<script src="assets/js/bootstrap.min.js"></script>
</body>

</html>