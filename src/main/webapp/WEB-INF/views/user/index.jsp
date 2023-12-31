<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>HomePage</title>

<link rel="stylesheet" href="/assets/css/style-starter.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
</head>
<style>
a.btn.dropdown-toggle {
	background: none;
	text-transform: capitalize;
	font-size: 16px;
	font-weight: 600;
	display: block;
	line-height: 28px;
	padding: 0 15px;
	color: var(--theme-title);
}

a.btn.dropdown-toggle:hover {
	color: #DF0E62
}
</style>
<body>
	<!-- header -->
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="#"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz</a>
				</h1>
				<!-- if logo is image enable this   
						<a class="navbar-brand" href="#">
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
						<li class="nav-item active"><a class="nav-link" href="#">Trang
								Chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="movies">Phim</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about">Thông
								Tin</a></li>


						<li class="nav-item"><a class="nav-link" href="contact">Liên
								Hệ</a></li>
					</ul>

					<!--/search-right-->
					<!--/search-right-->
					<!-- Example single danger button -->
					<div class="dropdown">
						<a class="btn dropdown-toggle" href="#" role="button"
							data-toggle="dropdown" aria-expanded="false"
							style="font-size: 16px; font-weight: 600; line-height: 28px; text-transform: capitalize; padding: 0 15px;">
							Rạp</a>
						<div class="dropdown-menu">
							<c:forEach items="${listTheater}" var="theater">
								<a class="dropdown-item"
									href="view-schedule-movie?theater=${theater.name}">${theater.name}</a>
							</c:forEach>
						</div>
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
							<a href="/logout">Đăng xuất</a>
						</div>
					</c:if>
					<c:if test="${loggedIn eq 2}">
						<div class="Login_SignUp"
							style="font-size: 2rem; display: inline-block; position: relative;">
							<!-- <li class="nav-item"> -->
							<a class="nav-link" href="employee/Dashboard"><i
								class="fa fa-user-circle-o"></i></a>
							<!-- </li> -->
						</div>
						Employee
						<div style="padding-left: 15px">
							<a href="logout">Đăng xuất</a>
						</div>
					</c:if>
					<c:if test="${loggedIn eq 3}">
						<div class="Login_SignUp"
							style="font-size: 2rem; display: inline-block; position: relative;">
							<!-- <li class="nav-item"> -->
							<a class="nav-link" href="adminDashboard"><i
								class="fa fa-user-circle-o"></i></a>
							<!-- </li> -->
						</div>
						Admin
						<div style="padding-left: 15px">
							<a href="logout">Đăng xuất</a>
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
	<!-- main-slider -->
	<section class="w3l-main-slider position-relative" id="home">
		<div class="companies20-content">
			<div class="owl-one owl-carousel owl-theme">
				<div class="item">
					<li>
						<div class="slider-info banner-view bg bg2">
							<div class="banner-info">
								<h3>Latest movies Trailers</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Xem đoạn giới thiệu</h6>
								</a>
								<div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/358205676"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top1 bg bg2">
							<div class="banner-info">
								<h3>Latest Online movies</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog2" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Xem đoạn giới thiệu</h6>
								</a>
								<div id="small-dialog2" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/395376850"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top2 bg bg2">
							<div class="banner-info">
								<h3>Latest movies Trailers</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog3" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Xem đoạn giới thiệu</h6>
								</a>
								<div id="small-dialog3" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/389969665"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top3 bg bg2">
							<div class="banner-info">
								<h3>Latest Online moviess</h3>
								<p>
									Lorem ipsum dolor sit amet consectetur adipisicing elit.<span
										class="over-para"> Consequuntur hic odio voluptatem
										tenetur consequatur.</span>
								</p>
								<a href="#small-dialog4" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Xem đoạn giới thiệu</h6>
								</a>
								<div id="small-dialog4" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/323491174"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
			</div>
		</div>
	</section>
	<!-- main-slider -->
	<!--grids-sec1-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Phim Phổ Biến</h3>
						</div>
					</div>
				</div>
				<div class="w3l-populohny-grids">
					<c:forEach items="${popularMovies}" var="movie">
						<div class="item vhny-grid">
							<div class="box16">
								<a href="details?name=${movie.name}">
									<figure>
										<img class="img-fluid" src="/assets/images/${movie.image}"
											alt="" style="height: 350px">
									</figure>
									<div class="box-content">
										<h3 class="title">${movie.name}</h3>
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span> ${movie.duration} Min</span> <span
												class="post fa fa-heart text-right"></span>
										</h4>
									</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!--//grids-sec1-->
	<!--grids-sec2-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
				<div class="headerhny-title">
					<div class="w3l-title-grids">
						<div class="headerhny-left">
							<h3 class="hny-title">Mới Phát Hành</h3>
						</div>
					</div>
				</div>

				<div class="owl-three owl-carousel owl-theme">
					<c:forEach items="${allMovies}" var="allMovies">
						<div class="item vhny-grid">
							<div class="box16 mb-0">
								<a href="movies">
									<figure>
										<img class="img-fluid" src="/assets/images/${allMovies.image}"
											alt="" style="height: 300px">
									</figure>
									<div class="box-content">
										<h4>
											<span class="post"><span class="fa fa-clock-o">
											</span>${allMovies.duration} </span> <span
												class="post fa fa-heart text-right"></span>
										</h4>
									</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
								</a>
							</div>
							<h3>
								<a class="title-gd" href="details?name=${allMovies.name}">${allMovies.name}</a>
							</h3>
							<p>Thể loại: ${allMovies.getGenre().getGenreName()}</p>
							<div class="button-center text-center mt-4">
								<a href="movies" class="btn watch-button">Đặt vé ngay</a>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>

		</div>
	</section>
	<!--grids-sec2-->
	<!--mid-slider -->
	<section class="w3l-mid-slider position-relative">
		<div class="companies20-content">
			<div class="owl-mid owl-carousel owl-theme">
				<div class="item">
					<li>
						<div class="slider-info mid-view bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Comedy</span>
									<h3>Jumanji: The Next Level</h3>
									<p>2019 ‧ Comedy/Action ‧ 2h 3m</p>
									<a class="watch" href="movies"><span class="fa fa-play"
										aria-hidden="true"></span> Xem đoạn giới thiệu</a>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info mid-view mid-top1 bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Adventure</span>
									<h3>Dolittle</h3>
									<p>2020 ‧ Family/Adventure ‧ 1h 41m</p>
									<a class="watch" href="movies"><span class="fa fa-play"
										aria-hidden="true"></span> Xem đoạn giới thiệu</a>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info mid-view mid-top2 bg bg2">
							<div class="container">
								<div class="mid-info">
									<span class="sub-text">Action</span>
									<h3>Bad Boys for Life</h3>
									<p>2020 ‧ Comedy/Action ‧ 2h 4m</p>
									<a class="watch" href="movies"><span class="fa fa-play"
										aria-hidden="true"></span> Xem đoạn giới thiệu</a>
								</div>
							</div>
						</div>
					</li>
				</div>
			</div>
		</div>
	</section>
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
										src="/assets/images/banner1.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="/assets/images/banner2.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="/assets/images/banner3.jpg" alt=""></a>
								</div>
								<div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
									<a href="movies"><img class="img-fluid"
										src="/assets/images/banner4.jpg" alt=""></a>
								</div>
							</div>
							<div class="row footer-links">


								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Phim</h6>
									<ul>
										<li><a href="#">Phim Xu Hướng</a></li>
										<li><a href="#">Phim Nổi Tiếng </a></li>
										<li><a href="#">Phim Sắp Chiếu</a></li>

									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Thông Tin Chung</h6>
									<ul>
										<li><a href="index.html">Trang Chủ</a></li>
										<li><a href="about.html">Thông Tin</a></li>
										<li><a href="sign_in.html">Đăng Nhập</a></li>
										<li><a href="Contact_Us.html">Liên Hệ</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Địa Điểm</h6>
									<ul>
										<li><a href="movies">Phường Hòa Hải, Quận Ngũ Hành
												Sơn, TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Hải Bắc, Quận Sơn Trà,
												TP Đà Nẵng</a></li>
										<li><a href="movies">Phường Chính Gián, Quận Thanh
												Khê,TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Xuân, TP Tam Kỳ, Quảng
												Nam</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Bản Tin</h6>
									<form action="#" class="subscribe mb-3" method="post">
										<input type="email" name="email"
											placeholder="Your Email Address" required="">
										<button>
											<span class="fa fa-envelope-o"></span>
										</button>
									</form>
									<p>Nhập email của bạn và nhận những tin tức, cập nhật mới
										nhất và ưu đãi đặc biệt từ chúng tôi.</p>

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
	<!-- responsive tabs -->
	<script src="/assets/js/jquery-1.9.1.min.js"></script>
	<script src="/assets/js/easyResponsiveTabs.js"></script>
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
	<!--/theme-change-->
	<script src="/assets/js/theme-change.js"></script>
	<script src="/assets/js/owl.carousel.js"></script>
	<!-- script for banner slider-->
	<script>
		$(document).ready(function() {
			$('.owl-one').owlCarousel({
				stagePadding : 280,
				loop : true,
				margin : 20,
				nav : true,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 1,
						stagePadding : 40,
						nav : false
					},
					480 : {
						items : 1,
						stagePadding : 60,
						nav : true
					},
					667 : {
						items : 1,
						stagePadding : 80,
						nav : true
					},
					1000 : {
						items : 1,
						nav : true
					}
				}
			})
		})
	</script>
	<script>
		$(document).ready(function() {
			$('.owl-three').owlCarousel({
				loop : true,
				margin : 20,
				nav : false,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 2,
						nav : false
					},
					480 : {
						items : 2,
						nav : true
					},
					667 : {
						items : 3,
						nav : true
					},
					1000 : {
						items : 5,
						nav : true
					}
				}
			})
		})
	</script>
	<script>
		$(document).ready(function() {
			$('.owl-mid').owlCarousel({
				loop : true,
				margin : 0,
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
						items : 1,
						nav : false
					},
					667 : {
						items : 1,
						nav : true
					},
					1000 : {
						items : 1,
						nav : true
					}
				}
			})
		})
	</script>
	<!-- script for owlcarousel -->
	<script src="/assets/js/jquery.magnific-popup.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : 'auto',

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

			$('.popup-with-move-anim').magnificPopup({
				type : 'inline',

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : 'auto',

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-slide-bottom'
			});
		});
	</script>
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
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			// Lặp qua tất cả các phần tử có class 'title-gd'
			var movieTitles = document.querySelectorAll('.title-gd');

			movieTitles.forEach(function(titleElement) {
				var titleText = titleElement.innerText;

				var charCount = titleText.length;

				console.log("Title text:", titleText);
				console.log("Character count:", charCount);

				if (charCount < 31) {
					titleElement.innerHTML = '<span class="line1">' + titleText
							+ '</span><br><span class="line2">&nbsp;</span>';
				}
			});
		});
	</script>
	<script src="/assets/js/bootstrap.min.js"></script>
</body>

</html>