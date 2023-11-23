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

					<!--/search-right-->
					<!--/search-right-->

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
								<div class="card">
									<div class="card-body">
										<div class="d-flex flex-column align-items-center text-center">
											<form action="changeavatar" method="post">
												<div class="avatar-upload">
													<div class="avatar-edit">
														<input name="urlimage" type='file' id="imageUpload"
															accept=".png, .jpg, .jpeg" onchange="previewImage()" />
														<label for="imageUpload"></label>
													</div>
													<div class="avatar-preview">
														<img id="imagePreview"
															src="assets/images/${customer.getUrlImage()}"
															alt="Avatar Preview">
													</div>

												</div>
												<div class="mt-3">
													<h4>${customer.getName()}</h4>
													<p class="text-muted font-size-sm">${customer.getAddress()}</p>
													<button id="saveButton" class="btn btn-outline-primary"
														style="display: none;">Save</button>
												</div>
											</form>

										</div>
										<hr class="my-4">
										<ul class="list-group list-group-flush">
											<li
												class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
												<h6 class="mb-0">
													<svg width="20px" height="20px" viewBox="0 0 16 16"
														xmlns="http://www.w3.org/2000/svg">
													<path
															d="m 6 1 c -2.761719 0 -5 2.238281 -5 5 s 2.238281 5 5 5 c 0.832031 -0.003906 1.652344 -0.214844 2.382812 -0.617188 l 0.617188 0.617188 v 2 h 2 v 2 h 4 v -3 l -4.308594 -4.308594 c 0.199219 -0.542968 0.304688 -1.113281 0.308594 -1.691406 c 0 -2.761719 -2.238281 -5 -5 -5 z m -1 3 c 0.550781 0 1 0.449219 1 1 s -0.449219 1 -1 1 s -1 -0.449219 -1 -1 s 0.449219 -1 1 -1 z m 0 0"
															fill="#2e3436" />
												</svg>
													<a href="changepass" class="text-muted font-size-sm">Đổi mật khẩu</a>
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
													<a href="/history" class="text-muted font-size-sm">Lịch sử đặt vé
													</a>
												</h6>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-8">
								<form action="profileUser" method="post">
									<div class="card">
										<div class="card-body">
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Họ và tên</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input name="name" type="text" class="form-control"
														value="${customer.getName()}">
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Email</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input name="email" type="text" class="form-control"
														value="${customer.getAccount().getEmail()}"
														readonly="readonly">
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Giới tính</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<select id="gender" name="gender" class="form-control">
														<option value="${customer.getGender()}">${customer.getGender()}</option>
														<option value="Male">Nam</option>
														<option value="Female">Nữ</option>
													</select>
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Ngày sinh</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input class="form-control" name="dob" type="date"
														id="start" value="${dob}" max="${maxDate}">
												</div>

											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Số điện thoại</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input name="phone" type="text" class="form-control"
														value="${customer.getPhoneNumber()}">
												</div>
											</div>








											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Tỉnh thành</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<select id="city" class="form-control">
														<option value="" selected>Chọn tỉnh thành</option>
													</select>
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Quận huyện</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<select id="district" class="form-control">
														<option value="" selected>Chọn quận huyện</option>
													</select>
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Phường xã</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<select id="ward" class="form-control">
														<option value="" selected>Chọn phường xã</option>
													</select>
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Địa chỉ</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input name="address" class="form-control" type="text">
												</div>
											</div>
											<input name="address2" id="result2" type="text"
												class="form-control" hidden="">
												
											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Địa chỉ</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input type="text" class="form-control"
														value="${customer.getAddress()}" readonly="readonly">
												</div>
											</div>






											<div class="row mb-4">
												<div class="col-sm-3">
													<h6 class="mb-0">Số vé đã đặt</h6>
												</div>
												<div class="col-sm-9 text-secondary">
													<input type="text" class="form-control"
														value="${customer.getTimes()}" readonly="readonly">
												</div>
											</div>
											<div class="row">
												<div class="col-sm-3"></div>
												<div class="col-sm-9 text-secondary">
													<input type="submit" class="btn btn-primary px-4"
														value="Lưu thay đổi">
												</div>
											</div>
										</div>
									</div>
								</form>

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
										<li><a href="movies">Phường Hòa Hải, Quận Ngũ Hành Sơn, TP Đà Nẵng</a></li>
										<li><a href="movies">Phường An Hải Bắc, Quận Sơn Trà, TP Đà Nẵng</a></li>
										<li><a href="movies">Phường Chính Gián, Quận Thanh Khê,TP Đà Nẵng</a></li>
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
	<script>
		function previewImage() {
			var input = document.getElementById('imageUpload');
			var imagePreview = document.getElementById('imagePreview');
			var saveButton = document.getElementById('saveButton');

			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					imagePreview.src = e.target.result; // Sử dụng thuộc tính src cho thẻ img
					saveButton.style.display = 'block';
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
	<script src="assets/js/province.js"></script>
</body>
</html>