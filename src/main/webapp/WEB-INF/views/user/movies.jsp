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
						<li class="nav-item"><a class="nav-link" href="home">Home</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="movies">Movies</a></li>
						<li class="nav-item"><a class="nav-link" href="about">About</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
					</ul>

					<!--/search-right-->
					<!--/search-right-->
					<div class="search-right">
						<a href="#search" class="btn search-hny mr-lg-3 mt-lg-0 mt-4"
							title="search">Search <span class="fa fa-search ml-3"
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
				<a href="home">Home</a> » <span class="breadcrumb_last"
					aria-current="page">movies</span>
			</div>
		</nav>
	</div>
	<!--/movies -->
	<!--grids-sec1-->
	<section class="w3l-grids">
		<div class="grids-main py-4">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<h3 class="hny-title">Popular Movies</h3>
				</div>
				<div class="owl-four owl-carousel owl-theme">
					<div class="item vhny-grid">
						<div class="box16">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner1.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">${listPopular.get(0).getName()}</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> ${listPopular.get(0).getDuration()} min </span> <span
											class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner2.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">${listPopular.get(1).getName()}</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> ${listPopular.get(1).getDuration()} min </span> <span
											class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner3.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">${listPopular.get(2).getName()}</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> ${listPopular.get(2).getDuration()} min </span> <span
											class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner4.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">${listPopular.get(3).getName()}</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> ${listPopular.get(3).getDuration()} min </span> <span
											class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--grids-sec1-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Latest Movies</h3>
						</div>
						<div class="headerhny-right text-lg-right">
							<h4>
								<a class="show-title" href="movies">Show all</a>
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
										alt="">
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
				<!-- ***********************************Adults Section ************************************** -->
				<div class="w3l-title-grids">
					<div class="headerhny-left">
						<h3 class="hny-title">Adults</h3>
					</div>
					<div class="headerhny-right text-lg-right">
						<h4>
							<a class="show-title" href="movies">Show all</a>
						</h4>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/m1.jpg" alt="">
							</figure>
							<a href=".Rocketman" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Rocketman</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 1min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>

					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/m2.jpg" alt="">
							</figure>
							<a href=".Doctorsleep" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Doctor Sleep</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 32min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/ks1.png" alt="">
							</figure>
							<a href=".kabir" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Kabir Singh</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 52min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/m9.jpg" alt="">
							</figure>
							<a href=".Joker" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Joker</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 2min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
				</div>
				<!-- ***********************************kids Section ************************************** -->
				<div class="w3l-title-grids">
					<div class="headerhny-left">
						<h3 class="hny-title">Kids</h3>
					</div>
					<div class="headerhny-right text-lg-right">
						<h4>
							<a class="show-title" href="movies">Show all</a>
						</h4>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/tzp.png" alt="">
							</figure>
							<a href=".tzp" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Taare Zameen Par</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 44min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/cp.png" alt="">
							</figure>
							<a href=".Chillarparty" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Chillar Party</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 59min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/ganesha.png" alt="">
							</figure>
							<a href=".ganesha" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Ganesha</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 3 Hr 10min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/m8.jpg" alt="">
							</figure>
							<a href=".Toystory" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Toy Story 4</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 59min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>

				</div>
				<!-- ***********************************Gujarati Section ************************************** -->
				<div class="w3l-title-grids">
					<div class="headerhny-left">
						<h3 class="hny-title">Gujarati</h3>
					</div>
					<div class="headerhny-right text-lg-right">
						<h4>
							<a class="show-title" href="movies">Show all</a>
						</h4>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/gk.png" alt="">
							</figure>
							<a href=".gk" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Golkeri</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 8min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/gujjubhai.jpeg" alt="">
							</figure>
							<a href=".gujjubhai" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Gujjubhai : The Great</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 25min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/Thaijase.png" alt="">
							</figure>
							<a href=".thaijase" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Thai Jashe</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 35min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16 mb-0" onclick="location.href='details.html';">
							<figure>
								<img class="img-fluid" src="assets/images/reva.png" alt="">
							</figure>
							<a href=".Reva" data-toggle="modal">
								<div class="box-content">
									<h3 class="title">Reva</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 2 Hr 38min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div>
							</a>
						</div>
					</div>

				</div>

			</div>
			<div class="button-center text-center mt-3">
				<a href="#" class="btn view-button">View all <span
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
							<li>Recent Movies</li>
							<li>Popular Movies</li>
							<li>Trend Movies</li>
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
							<div class="albums-content">
								<div class="row">
									<!--/set3-->
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
									<!--/set3-->
									<div class="col-lg-4 new-relise-gd mt-lg-0 mt-0">
										<div class="slider-info">
											<div class="img-circle">
												<a href="movies"><img src="assets/images/m10.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">Alita</a>
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
												<a href="movies"><img src="assets/images/m11.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">The Lego</a>
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
												<a href="movies"><img src="assets/images/m12.jpg"
													class="img-fluid" alt="author image">
													<div class="overlay-icon">

														<span class="fa fa-play video-icon" aria-hidden="true"></span>
													</div> </a>
											</div>
											<div class="message">
												<p>English</p>
												<a class="author-book-title" href="movies">The Hustle</a>
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
									<h6>Movies</h6>
									<ul>
										<li><a href="#">Movies</a></li>
										<li><a href="#">Videos</a></li>
										<li><a href="#">English Movies</a></li>
										<li><a href="#">Tailor</a></li>
										<li><a href="#">Upcoming Movies</a></li>
										<li><a href="contact">Contact Us</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Information</h6>
									<ul>
										<li><a href="home">Home</a></li>
										<li><a href="about">About</a></li>
										<li><a href="#">Tv Series</a></li>
										<li><a href="#">Blogs</a></li>
										<li><a href="signin">Login</a></li>
										<li><a href="contact">Contact</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Locations</h6>
									<ul>
										<li><a href="movies">Asia</a></li>
										<li><a href="movies">France</a></li>
										<li><a href="movies">Taiwan</a></li>
										<li><a href="movies">United States</a></li>
										<li><a href="movies">Korea</a></li>
										<li><a href="movies">United Kingdom</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Newsletter</h6>
									<form action="#" class="subscribe mb-3" method="post">
										<input type="email" name="email"
											placeholder="Your Email Address" required="">
										<button>
											<span class="fa fa-envelope-o"></span>
										</button>
									</form>
									<p>Enter your email and receive the latest news, updates
										and special offers from us.</p>
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
							<p>&copy; 2021 MyShowz. All rights reserved</p>
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