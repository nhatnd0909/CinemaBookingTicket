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
<title>Home</title>

<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/profileuser.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
</style>
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
						<li class="nav-item"><a class="nav-link" href="movies">Phim</a>
						</li>

						<li class="nav-item active"><a class="nav-link" href="about">Thông Tin</a></li>

						<li class="nav-item"><a class="nav-link" href="contact">Liên Hệ</a></li>
					</ul>
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

	<!--grids-sec1-->
	<section class="w3l-grids">
		<div class="grids-main py-5">
			<div class="container py-lg-3">
				<div class="headerhny-title"></div>
				<div class="container">
					<div class="main-body">
						<div class="row">
							<div class="col-lg-4">
								<div class="card" style="height: 100%;">
									<div class="card-body">
										<div class="d-flex flex-column align-items-center text-center">
											<div class="avatar-upload">
												<div class="avatar-preview">
													<img id="imagePreview"
														src="assets/images/${customer.getUrlImage()}"
														alt="Avatar Preview">
												</div>
											</div>
											<div class="mt-3">
												<h4>${loggedInAccount.getName()}</h4>
												<!-- <p class="text-secondary mb-1">Full Stack Developer</p> -->
												<p class="text-muted font-size-sm">${loggedInAccount.getAddress()}</p>
												<!-- <button class="btn btn-primary">Follow</button>
												<button class="btn btn-outline-primary">Message</button> -->
											</div>
										</div>
										<hr class="my-4">
										<ul class="list-group list-group-flush">
											<li
												class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
												<h6 class="mb-0">
													<svg version="1.1" id="Capa_1"
														xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														width="20px" height="20px" viewBox="0 0 20 20"
														style="enable-background: new 0 0 45.532 45.532;"
														xml:space="preserve">
														<g>
														<path
															d="M10 0.001C4.478 0.001 0 4.478 0 10s4.478 9.999 10 9.999c5.523 0 10 -4.477 10 -9.999S15.523 0.001 10 0.001zm0 2.99a3.308 3.308 0 1 1 0.001 6.615A3.308 3.308 0 0 1 10 2.991zm-0.003 14.395a7.339 7.339 0 0 1 -4.779 -1.763 1.409 1.409 0 0 1 -0.495 -1.072A3.336 3.336 0 0 1 8.075 11.217h3.848a3.331 3.331 0 0 1 3.347 3.335 1.406 1.406 0 0 1 -0.494 1.071 7.337 7.337 0 0 1 -4.779 1.763z" /></g></svg>
													<a href="profileUser" class="text-muted font-size-sm">
														Hồ sơ</a>
												</h6>
											</li>
											<li
												class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
												<h6 class="mb-0">
													<svg width="20px" height="20px" viewBox="0 0 1.44 1.44"
														fill="none" xmlns="http://www.w3.org/2000/svg">
														<path width="48" height="48" fill="white"
															fill-opacity="0.01" d="M0 0H1.44V1.44H0V0z" />
														<path d="M0.175 0.202V0.42h0.218" stroke="#000000"
															stroke-width="0.12" stroke-linecap="round"
															stroke-linejoin="round" />
													<path
															d="M0.12 0.72c0 0.331 0.269 0.6 0.6 0.6v0c0.331 0 0.6 -0.269 0.6 -0.6S1.051 0.12 0.72 0.12c-0.222 0 -0.416 0.121 -0.52 0.3"
															stroke="#000000" stroke-width="0.12"
															stroke-linecap="round" stroke-linejoin="round" />
													<path d="m0.72 0.36 0 0.36 0.254 0.254" stroke="#000000"
															stroke-width="0.12" stroke-linecap="round"
															stroke-linejoin="round" />
												</svg>
													<a href="#" class="text-muted font-size-sm"> Lịch sử đặt vé</a>
												</h6>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-8">
								<div class="card">
									<div class="card-body">
										<table class="table table-striped text-muted font-size-sm "
											id="myTable">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên Phim</th>
													<th scope="col">Giờ Chiếu</th>
													<th scope="col">Ngày đặt</th>
													<th scope="col">Xem vé</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${listTicket}" var="ticket">
													<tr>
														<th scope="row">${ticket.ticketID}</th>
														<td>${ticket.getShow().getMovie().getName()}</td>
														<td>${ticket.getShow().getStartTime()}</td>
														<td><script>
															// Hàm để định dạng lại ngày
															function formatDate(
																	inputDate) {
																var date = new Date(
																		inputDate);
																var formattedDate = date
																		.toLocaleDateString('en-GB'); // Đặt ngôn ngữ theo yêu cầu của bạn
																document
																		.write(formattedDate);
															}

															// Sử dụng hàm formatDate với giá trị từ JSP
															var ticketDate = "${ticket.getShow().getDayTime()}";
															formatDate(ticketDate);
														</script></td>
														<td style="text-align: center;"><a
															href="history1?idTicket=${ticket.ticketID}">
																<i class="fa fa-eye"></i>
														</a></td>
													</tr>
												</c:forEach>


											</tbody>
										</table>
										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-end" id="pagination">
												<c:if test="${currentPage > 1}">
													<li class="page-item"><a class="page-link" href="?page=${currentPage - 1}">Trang trước</a></li>
												</c:if>
												
												<c:forEach begin="1" end="${totalPages}" varStatus="loop">
													<li class="page-item ${loop.index == currentPage ? 'active' : ''}">
														<a class="page-link" href="?page=${loop.index}">${loop.index}</a>
													</li>
												</c:forEach>
										
												<c:if test="${currentPage < totalPages}">
													<li class="page-item"><a class="page-link" href="?page=${currentPage + 1}">Trang sau</a></li>
												</c:if>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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
	<!-- responsive tabs -->
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
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#imagePreview').css('background-image',
							'url(' + e.target.result + ')');
					$('#imagePreview').hide();
					$('#imagePreview').fadeIn(650);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#imageUpload").change(function() {
			readURL(this);
		});
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>