<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
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
					<a class="navbar-brand" href="/"><span
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

	<div class="container_signup_signin right-panel-active"
		id="container_signup_signin">
		<div class="form-container sign-up-container">
			<form name="sign-up-form" action="signup" method="post"
				onsubmit="return signUpValidateForm()">

				<h2>Tạo tài khoản mới</h2>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
						href="#" class="social"><i class="fab fa-google-plus-g"></i></a> <a
						href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>

				<span style="font-size: 17px" class="text-danger">${mess}</span> 
				<div class="form-group">
					<input name="name" class="form-control" type="text" placeholder="Tên" value="${name}" required="required" />
					<div class="invalid-feedback">Tên không được để trống</div>
				  </div>
				  <div class="form-group">
					<input name="email" class="form-control" type="email" placeholder="Email" value="${email}" required="required"/>
					<div class="invalid-feedback">Email không được để trống</div>
				  </div>
				  <div class="form-group password-container" >
					<input name="password" type="password"
					  class="form-control"
					  placeholder="Mật khẩu"
					  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
					  title="Mật khẩu phải có ít nhất 8 ký tự, bao gồm ít nhất 1 chữ hoa, 1 chữ thường và 1 ký tự đặc biệt"
					  required="required" />
					<div class="invalid-feedback">Mật khẩu không được để trống</div>
					<i class="toggle-password fa fa-solid fa-eye" onclick="togglePassword(this)"></i>
				  </div>
				  <div class="form-group password-container">
					<input name="rePassword" type="password"
					  class="form-control"
					  placeholder="Nhập lại mật khẩu"
					  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
					  title="Mật khẩu nhập lại phải khớp"
					  required="required" />
					<div class="invalid-feedback">Re-Password không được để trống</div>
					<i class="toggle-password fa fa-solid fa-eye" onclick="togglePassword(this)"></i>
				  </div>
				  
				<button>Đăng Kí</button>

			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Chào mừng </h1>
					<h1>trở lại!</h1>
					<p>Đã có tài khoản? Đăng nhập và tiếp tục những trải nghiệm tuyệt vời của chúng tôi.</p>
					<a href="/signin"><button class="ghost" id="signIn">Đăng nhập</button></a>
					
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

	<script type="text/javascript" src="assets/js/sign-up.js"></script>

</body>

</html>