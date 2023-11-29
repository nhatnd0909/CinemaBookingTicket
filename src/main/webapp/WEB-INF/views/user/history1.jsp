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
<link rel="stylesheet" href="assets/css/history.css">
<link
	href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
	rel="stylesheet">
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
				<div class="row" id="downloadImage" >
					<div class="left">
						<div class="col-lg-5 mb-4 mb-lg-0">
							<img
								src="assets/images/${ticket.getShow().getMovie().getImage()}"
								alt="..." width="240px">
						</div>
						<div class="ticket-info">
							<p class="date">
								<span
									class="display-26 text-secondary me-2 font-weight-600">Ngày
										Chiếu:</span> <script>
											function formatDate(
													inputDate) {
												var date = new Date(
														inputDate);
												var formattedDate = date
														.toLocaleDateString('en-GB');
												document
														.write(formattedDate);
											}
											var ticketDate = "${ticket.getShow().getDayTime()}";
											formatDate(ticketDate);
										</script>
							</p>
							<div class="show-name">
								<h2>${ticket.getShow().getMovie().getName()}</h2>
							</div>
							<div class="time">
								<p>Phòng chiếu:</span>${ticket.getShow().getTheaterRoom().getTheater().getName()}- ${ticket.getShow().getTheaterRoom().getName()}</p>
							</div>									
							<div class="time">
								<p>Giờ Chiếu:</span> ${ticket.getShow().getStartTime()} -${ticket.getShow().getEndTime()}</p>
							</div>
							<div class="time">
								<p>Dịch vụ:
									 <c:forEach items="${listOder}" var="order">
										<li class="mb-2 mb-xl-3 display-28">
											${order.getAmount()} ${order.getService().getName()}
											size ${order.getService().getSize()}
										</li>
									</c:forEach>
								</p>
							</div>
							<div class="tagline">
								<p>Ghế: <span>${ticket.getListSeat()}</span></p>
							</div>
							<p class="location"><span></span>
								<span class="separator"><i class="fa-solid fa-cross"></i></span><span></span>
							</p>
						</div>
					</div>
					<div class="right">
						<p class="admit-one">
							<span>ADMIT ONE</span>
							<span>ADMIT ONE</span>
							<span>ADMIT ONE</span>
						</p>
						<div class="right-info-container">
							<div class="show-name">
								<h1>${ticket.getShow().getMovie().getName()}</h1>
							</div>
							<div class="time">
								<p><span
									class="display-26 text-secondary me-2 font-weight-600">Ngày
										Chiếu</span> <script>
											function formatDate(
													inputDate) {
												var date = new Date(
														inputDate);
												var formattedDate = date
														.toLocaleDateString('en-GB');
												document
														.write(formattedDate);
											}
											var ticketDate = "${ticket.getShow().getDayTime()}";
											formatDate(ticketDate);
										</script></p>
								<p>${ticket.getShow().getStartTime()} -${ticket.getShow().getEndTime()}</p>
							</div>
							<div class="barcode" id="qrcode-container">
							</div>
							<p class="ticket-number">
								#${ticket.ticketID}
							</p>
							<div class="submitbutton">
								<button type="button" class="btn btn-primary" onclick="downloadImage()">Download Image</button>
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
</body>
<!-- Thêm thư viện qrcode.js từ CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<script>
    function generateQRCode(ticketData, elementId) {
        var qrCode = new QRCode(document.getElementById(elementId), {
			text: JSON.stringify(ticketData),
            width: 128,
            height: 128
        });
    }
	var ticketData = {
        ticketID: "${ticket.ticketID}",
        movieName: "${ticket.getShow().getMovie().getName()}",
        showDate: "2023-01-01",
		showService: "${ticket.getListSeat()}"
    };
    document.addEventListener("DOMContentLoaded", function () {
        generateQRCode(ticketData, 'qrcode-container');
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script>
    function downloadImage() {
        var container = document.querySelector('#downloadImage');
        html2canvas(container).then(function (canvas) {
            // Convert canvas to data URL
            var imageData = canvas.toDataURL("image/png");
            var link = document.createElement('a');
            link.href = imageData;
            link.download = 'downloaded_image.png';
            link.click();
        });
    }
</script>

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
</html>