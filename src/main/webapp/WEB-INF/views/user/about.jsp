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
<title>About</title>

<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css">

<link rel="stylesheet" type="text/css"
	href="assets/css/style-starter.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">

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
						<li class="nav-item"><a class="nav-link" href="home">Trang
								Chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="movies">Phim</a>
						</li>

						<li class="nav-item active"><a class="nav-link" href="about">Thông
								Tin</a></li>

						<li class="nav-item"><a class="nav-link" href="contact">Liên
								Hệ</a></li>
					</ul>

					<!--/search-right-->
					<!--/search-right-->
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
	<!--/breadcrumbs -->
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
			<div class="container page-wrapper">
				<a href="home">Trang Chủ</a> » <span class="breadcrumb_last"
					aria-current="page">Thông Tin</span>
			</div>
		</nav>
	</div>
	<!-- /about-->
	<div class="w3l-ab-grids py-5">

		<div class="container py-lg-4">
			<div class="row ab-grids-sec align-items-center">
				<div class="col-lg-6 ab-right">
					<img class="img-fluid" src="assets/images/rap.jpg">
				</div>
				<div class="col-lg-6 ab-left pl-lg-4 mt-lg-0 mt-5">
					<h3 class="hny-title">My Showz Entertainment</h3>
					<p class="mt-3">Nơi Kết Nối Niềm Đam Mê và Sáng Tạo! Chúng tôi
						là một công ty giải trí phim với sứ mệnh mang đến cho khán giả
						những trải nghiệm giải trí không giới hạn. Với đội ngũ 7 thành
						viên tài năng và đam mê về phim ảnh, nghệ thuật và việc tạo ra
						những câu chuyện đáng nhớ luôn nằm trong trái tim mọi dự án.</p>
				</div>
			</div>

			<div class="w3l-counter-stats-info text-center">
				<div class="stats_left">
					<div class="counter_grid">
						<div class="icon_info">
							<p class="counter">${totalMovie}</p>
							<h4>Phim</h4>

						</div>
					</div>
				</div>
				<div class="stats_left">
					<div class="counter_grid">
						<div class="icon_info">
							<p class="counter">${totalTheater}</p>
							<h4>Rạp Chiếu</h4>
						</div>
					</div>
				</div>
				<div class="stats_left">
					<div class="counter_grid">
						<div class="icon_info">
							<p class="counter">${totalEmployee}</p>
							<h4>Đội Ngũ Nhân Viên</h4>

						</div>
					</div>
				</div>
				<div class="stats_left">
					<div class="counter_grid">
						<div class="icon_info">
							<p class="counter">${totalUser}</p>
							<h4>No. of Users</h4>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- **************** -->
	<!-- Image Slider for MEET US Section-->
	<div class="swiper-container"
		style="background-color: var(--theme-bg);">
		<h1 id="swiper-container-h1">Đội Ngũ Thành Lập</h1>
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/check1.jpg"
						style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-1">
						Nguyễn Duyên<br>
					</h3>
					<div class="p-sm">
						<a href=""><i class="fa fa-facebook"></i></a> <a
							href="https://www.instagram.com/ng.dye/"><i
							class="fa fa-instagram"></i></a> <a href="https://github.com/Dyn2012"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/phuong.jpg"
						style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-2">
						Mai Phương<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/maiphuong.le.3781995"><i
							class="fa fa-facebook"></i></a> <a
							href="https://www.instagram.com/lephuong_liuliu/"><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/Sharvil24600"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/hieu.jpg" style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-3">
						Nguyễn Hiếu<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/NTH.1.07"><i
							class="fa fa-facebook"></i></a> <a href="..."><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/harshmange44"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/toan.jpg" style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-4">
						Đình Toàn<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/toan30032003"><i
							class="fa fa-facebook"></i></a> <a href="..."><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/YugamsinhChavda"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/nhat.jpg" style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-4">
						Đình Nhật<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/nhatnd99"><i
							class="fa fa-facebook"></i></a> <a href="..."><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/YugamsinhChavda"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/thien.jpg"
						style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-4">
						Phạm Thiện<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/profile.php?id=100007678456458"><i
							class="fa fa-facebook"></i></a> <a href="..."><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/YugamsinhChavda"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="imgBx">
					<img src="assets/images/quang.png"
						style="width: 100%; height: 100%">
				</div>
				<div class="details">
					<h3 id="details-h3-4">
						Xuân Quang<br>
					</h3>
					<div class="p-sm">
						<a href="https://www.facebook.com/profile.php?id=100046837189100"><i
							class="fa fa-facebook"></i></a> <a
							href="https://www.instagram.com/yugamsinh_chavda/"><i
							class="fa fa-instagram"></i></a> <a
							href="https://github.com/YugamsinhChavda"><i
							class="fa fa-github"></i></a>
					</div>
				</div>

			</div>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination"></div>
	</div>

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
										<li><a href="#">Phim Xu Hướng</a></li>
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
											placeholder="Nhập email của bạn tại đây" required="">
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
			<!-- copyright -->
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
	<!-- stats -->
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.countup.js"></script>
	<script type="text/javascript" src='assets/js/swiper.min.js'></script>
	<script>
		$('.counter').countUp();
	</script>
	<!--/theme-change-->
	<script src="assets/js/theme-change.js"></script>
	<script>
		const toggleSwitch = document
				.querySelector('.theme-switch input[type="checkbox"]');
		const currentTheme = localStorage.getItem('theme');

		if (currentTheme) {
			document.documentElement.setAttribute('data-theme', currentTheme);

			switchTextColor(currentTheme);

			if (currentTheme === 'dark') {
				toggleSwitch.checked = true;
			}
		}

		function switchTextColor(currTheme) {

			if (currTheme === 'light') {
				document.getElementById("swiper-container-h1").style.color = 'black';
				document.getElementById("details-h3-1").style.color = 'black';
				document.getElementById("details-h3-2").style.color = 'black';
				document.getElementById("details-h3-3").style.color = 'black';
				document.getElementById("details-h3-4").style.color = 'black';
				document.getElementById("details-h3-5").style.color = 'black';
				document.getElementById("details-h3-6").style.color = 'black';
			} else {
				document.getElementById("swiper-container-h1").style.color = 'white';
				document.getElementById("details-h3-1").style.color = 'white';
				document.getElementById("details-h3-2").style.color = 'white';
				document.getElementById("details-h3-3").style.color = 'white';
				document.getElementById("details-h3-4").style.color = 'white';
				document.getElementById("details-h3-5").style.color = 'white';
				document.getElementById("details-h3-6").style.color = 'white';
			}
		}
		toggleSwitch.addEventListener('change', switchTheme, false);
	</script>
	<script src="assets/js/owl.carousel.js"></script>
	<!-- script for banner slider-->
	<script>
		$(document).ready(function() {
			$('.owl-team').owlCarousel({
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
						items : 4,
						nav : true
					}
				}
			})
		})
	</script>


	<script>
		var swiper = new Swiper('.swiper-container', {
			effect : 'coverflow',
			grabCursor : true,
			centeredSlides : true,
			slidesPerView : 'auto',
			coverflowEffect : {
				rotate : 50,
				stretch : 0,
				depth : 100,
				modifier : 1,
				slideShadows : true,
			},
			pagination : {
				el : '.swiper-pagination',
			},
		});
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
						items : 6,
						nav : true
					}
				}
			})
		})
	</script>
	<!-- for tesimonials carousel slider -->
	<script>
		$(document).ready(function() {
			$(".owl-clients").owlCarousel({
				loop : true,
				margin : 40,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1,
						nav : true
					},
					736 : {
						items : 2,
						nav : false
					},
					1000 : {
						items : 3,
						nav : true,
						loop : false
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
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>