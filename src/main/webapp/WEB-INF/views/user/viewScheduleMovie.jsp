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
<title>Rạp Phim</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/view-schedule-movie.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
</style>
<body>
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="#"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz</a>
				</h1>
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
								<a class="dropdown-item" href="view-schedule-movie?theater=${theater.name}">${theater.name}</a>
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
	<div class="container mt-3">
		<div class="col-md-12">
			<div class="showtimes">
				<div class="btn-group btn-block showtime-dates mb-3" id="dates">
					<a class="btn btn-light text-muted date active"
						data-date="" onclick="myFunction(1)"> ${currentDate}
						<br> <span class="small text-nowrap" id="dayOfWeek1"></span>
					</a> <a class="btn btn-light text-muted date" data-date=""
						onclick="myFunction(2)"> ${tomorow} 
						<br> <span class="small text-nowrap" id="dayOfWeek2"></span>
					</a> <a class="btn btn-light text-muted date" data-date=""
						onclick="myFunction(3)"> ${nextDate} 
						<br> <span class="small text-nowrap" id="dayOfWeek3"></span>
					</a> <a class="btn btn-light text-muted date" data-date=""
						onclick="myFunction(4)"> ${futureDate3Days}
						 <br> <span class="small text-nowrap" id="dayOfWeek4"></span>
					</a> <a class="btn btn-light text-muted date" data-date=""
						onclick="myFunction(4)"> ${futureDate4Days}
						 <br> <span class="small text-nowrap" id="dayOfWeek5"></span>
					</a>
					<!--                     <a class="btn btn-light text-muted date" data-date="2023-11-25" onclick="myFunction(4)">
                        25/11
                        <br><span class="small text-nowrap">Th 7</span>
                    </a> -->
				</div>
				<!-- end schedule -->
				<!--  -->
				<div class="alert alert-warning mb-3">
					<i class="fa-solid fa-circle-info"></i> Nhấn vào suất chiếu để tiến
					hành mua vé
				</div>
				<!--  -->
				<div class="show-currentDate">
					<c:forEach items="${listMovie}" var="movie">
						<div class="card card-sm mb-3">
							<div class="card-body">
								<div class="row">
									<div class="col-3 col-sm-2">
										<a href="/phim/yeu-lai-vo-ngau/"> <img
											src="assets/images/${movie.image}" alt="Yêu Lại Vợ Ngầu"
											class="rounded img-fluid">
										</a>
									</div>
									<div class="col ml-n2">
										<h4 class="card-title mb-1 name">
											<a href="/phim/yeu-lai-vo-ngau/"> ${movie.name} </a>
										</h4>

										<p class="card-text small text-muted mb-0">
											${movie.duration} phút· <a href="/video/18158/"
												data-toggle="modal" data-target="#videoModal"
												data-video-id="18158" data-video-url="MPSIeZaf6eo"
												data-remote="false">Trailer</a>
										</p>

										<div class="mt-2">
											<div class="mb-1">
												<label class="small mb-2 font-weight-bold d-block text-dark">
													2D Phụ Đề Việt </label>
												<!-- disabled -->
												<c:forEach items="${listShowCurentDate}" var="show">
													<c:if test="${show.movie.name eq movie.name}">
														<a
															href="ticketBooking?movie=${movie.name}&theater=${show.getTheaterRoom().getTheater().getName()}&roomID=${show.getTheaterRoom().getRoomID()}&showID=${show.getShowID()}"
															class="btn btn-sm btn-showtime btn-outline-dark is-ticketing is-show-price">
															<span class="time">${show.startTime}</span> <span
															class="amenity price"></span>
														</a>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="show-tomorowDate" style="display: none">
					<c:forEach items="${listMovie}" var="movie">
						<div class="card card-sm mb-3">
							<div class="card-body">
								<div class="row">
									<div class="col-3 col-sm-2">
										<a href="/phim/yeu-lai-vo-ngau/"> <img
											src="assets/images/${movie.image}" alt="Yêu Lại Vợ Ngầu"
											class="rounded img-fluid">
										</a>
									</div>
									<div class="col ml-n2">
										<h4 class="card-title mb-1 name">
											<a href="/phim/yeu-lai-vo-ngau/"> ${movie.name} </a>
										</h4>

										<p class="card-text small text-muted mb-0">
											${movie.duration} phút· <a href="/video/18158/"
												data-toggle="modal" data-target="#videoModal"
												data-video-id="18158" data-video-url="MPSIeZaf6eo"
												data-remote="false">Trailer</a>
										</p>

										<div class="mt-2">
											<div class="mb-1">
												<label class="small mb-2 font-weight-bold d-block text-dark">
													2D Phụ Đề Việt </label>
												<!-- disabled -->
												<c:forEach items="${listShowTomorowDate}" var="show">
													<c:if test="${show.movie.name eq movie.name}">
														<a
															href="ticketBooking?movie=${movie.name}&theater=${show.getTheaterRoom().getTheater().getName()}&roomID=${show.getTheaterRoom().getRoomID()}&showID=${show.getShowID()}"
															class="btn btn-sm btn-showtime btn-outline-dark is-ticketing is-show-price">
															<span class="time">${show.startTime}</span> <span
															class="amenity price"></span>
														</a>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="show-nextDate" style="display: none">
					<c:forEach items="${listMovie}" var="movie">
						<div class="card card-sm mb-3">
							<div class="card-body">
								<div class="row">
									<div class="col-3 col-sm-2">
										<a href="/phim/yeu-lai-vo-ngau/"> <img
											src="assets/images/${movie.image}" alt="Yêu Lại Vợ Ngầu"
											class="rounded img-fluid">
										</a>
									</div>
									<div class="col ml-n2">
										<h4 class="card-title mb-1 name">
											<a href="/phim/yeu-lai-vo-ngau/"> ${movie.name} </a>
										</h4>

										<p class="card-text small text-muted mb-0">
											${movie.duration} phút· <a href="/video/18158/"
												data-toggle="modal" data-target="#videoModal"
												data-video-id="18158" data-video-url="MPSIeZaf6eo"
												data-remote="false">Trailer</a>
										</p>

										<div class="mt-2">
											<div class="mb-1">
												<label class="small mb-2 font-weight-bold d-block text-dark">
													2D Phụ Đề Việt </label>
												<!-- disabled -->
												<c:forEach items="${listShowNextDate}" var="show">
													<c:if test="${show.movie.name eq movie.name}">
														<a
															href="ticketBooking?movie=${movie.name}&theater=${show.getTheaterRoom().getTheater().getName()}&roomID=${show.getTheaterRoom().getRoomID()}&showID=${show.getShowID()}"
															class="btn btn-sm btn-showtime btn-outline-dark is-ticketing is-show-price">
															<span class="time">${show.startTime}</span> <span
															class="amenity price"></span>
														</a>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="show-wait" style="display: none">Hiện tại rạp phim
					của chúng tôi chưa ra suất chiếu mới. Vui lòng đợi vài ngày tới !!!</div>
			</div>
		</div>
	</div>
	<!-- footer -->
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
										<li><a href="index.html">Trang Chủ</a></li>
										<li><a href="about.html">Thông Tin</a></li>
										<li><a href="sign_in.html">Đăng Nhập</a></li>
										<li><a href="Contact_Us.html">Liên Hệ</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-sm-6 sub-two-right mt-5">
									<h6>Địa Điểm</h6>
									<ul>
										<li><a href="movies">Phường Hòa Hải,Quận Ngũ Hành
												Sơn,TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Hải Bắc, Quận Sơn Trà,
												TP Đà Nẵng</a></li>
										<li><a href="movies">Phường Chính Gián,Quận Thanh
												Khuê,TP Đà Nẵng</a></li>
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
				var currentDate = new Date();
				var tomorrow = new Date();
				tomorrow.setDate(currentDate.getDate() + 1);
				var nextDate = new Date();
				nextDate.setDate(currentDate.getDate() + 2);
				var futureDate3Days = new Date();
				futureDate3Days.setDate(currentDate.getDate() + 3);
				var futureDate4Days = new Date();
				futureDate4Days.setDate(currentDate.getDate() + 4);
				var daysOfWeek = ["Chủ Nhật", "Thứ Hai", "Thứ Ba", "Thứ Tư", "Thứ Năm", "Thứ Sáu", "Thứ Bảy"];
				document.getElementById("dayOfWeek1").innerHTML = daysOfWeek[currentDate.getDay()];
				document.getElementById("dayOfWeek2").innerHTML = daysOfWeek[tomorrow.getDay()];
				document.getElementById("dayOfWeek3").innerHTML = daysOfWeek[nextDate.getDay()];
				document.getElementById("dayOfWeek4").innerHTML = daysOfWeek[futureDate3Days.getDay()];
				document.getElementById("dayOfWeek5").innerHTML = daysOfWeek[futureDate4Days.getDay()];
			</script>
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
	<script>
		let prevId = 1;

		function myFunction(id) {
			if (prevId !== id) {
				let prevElement = document.querySelector('.btn[data-date="'
						+ document.getElementById('dates')
								.getElementsByTagName('a')[prevId - 1]
								.getAttribute('data-date') + '"]');
				if (prevElement) {
					prevElement.classList.remove('active');
				}
			}

			// Add 'active' class to the clicked element
			let currentElement = document.querySelector('.btn[data-date="'
					+ document.getElementById('dates')
							.getElementsByTagName('a')[id - 1]
							.getAttribute('data-date') + '"]');
			if (currentElement) {
				currentElement.classList.add('active');
			}
			// document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
			// document.getElementById(id).style.background = "#df0e62";
			prevId = id;
			// Hide all sections
			document.querySelector('.show-currentDate').style.display = 'none';
			document.querySelector('.show-tomorowDate').style.display = 'none';
			document.querySelector('.show-nextDate').style.display = 'none';
			document.querySelector('.show-wait').style.display = 'none';

			if (id === 1) {
				document.querySelector('.show-currentDate').style.display = 'block';
			} else if (id === 2) {
				document.querySelector('.show-tomorowDate').style.display = 'block';
			} else if (id === 3) {
				document.querySelector('.show-nextDate').style.display = 'block';
			} else if (id === 4) {
				document.querySelector('.show-wait').style.display = 'block';
			}

		}
	</script>
	<script src="assets/js/jquery-1.9.1.min.js"></script>
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
	<!--/theme-change-->
	<script src="assets/js/theme-change.js"></script>
	<script src="assets/js/owl.carousel.js"></script>
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
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
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

	<script src="assets/js/bootstrap.min.js"></script>

</body>

</html>