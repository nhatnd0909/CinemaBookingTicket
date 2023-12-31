<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signin</title>
<link rel="stylesheet" type="text/css"
	href="assets/css/as-alert-message.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/style-starter.css">
<link rel="stylesheet" type="text/css" href="assets/css/sign-in.css">
</head>

<body>
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="home"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz </a>
				</h1>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				</div>
				<div class="Login_SignUp" id="login"
					style="font-size: 2rem; display: inline-block; position: relative;">
					<!-- <li class="nav-item"> -->
					<a class="nav-link" href="signin"><i
						class="fa fa-user-circle-o"></i></a>
					<!-- </li> -->
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

	<div class="container_signup_signin" id="container_signup_signin">
		<div class="form-container sign-in-container">
			<form name="signin" method="post" style="color: var(--theme-title);"
				action="#" onsubmit="return signInValidateForm()">
				<h1>Đăng nhập</h1>
				<div class="social-container">
					<a href="#" class="social" style="color: var(--theme-title);"><i
						class="fab fa-facebook-f"></i></a> <a href="#" class="social"
						style="color: var(--theme-title);"><i
						class="fab fa-google-plus-g"></i></a> <a href="#" class="social"
						style="color: var(--theme-title);"><i
						class="fab fa-linkedin-in"></i></a>
				</div>
				<span style="font-size: 17px" class="text-danger">${mess}</span> 
				<div class="form-group">
					<input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email" name="email" value="${email}" required="required">
					<div class="invalid-feedback">Email không được để trống</div>
				  </div>
				<div class="form-group password-container">
					<input type="password" class="form-control" placeholder="Mật khẩu" name="password" required="required">
					<div class="invalid-feedback">Mật khẩu không được để trống</div>
					<i class="toggle-password fa fa-solid fa-eye" onclick="togglePassword(this)"></i>
				</div>
				  
					  
				<a href="forgotpassword">Quên mật khẩu?</a>
				<button>Đăng Nhập</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<h1>Chào mừng bạn!</h1>
					<p>Đăng kí và đặt vé ngay!!!</p>
					<a href="/signup"><button class="ghost" id="signUp">Đăng Kí</button></a>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/as-alert-message.min.js"></script>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<!--/theme-change-->
	<script src="assets/js/theme-change.js"></script>
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

	<script type="text/javascript" src="assets/js/sign-in.js"></script>

</body>

</html>