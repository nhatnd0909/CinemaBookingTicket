<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div class="container_signup_signin" id="container_signup_signin">
		<form name="verify" action="verify" method="post"
			onsubmit="return signUpValidateForm()">
			<h2>Xác nhận Email</h2>
			<p>Để tăng cường bảo mật, vui lòng nhập mã gồm 6 ký tự được gửi đến email của bạn.</p>
			${mess} <input name="code" type="text" placeholder="Nhập mã" value="" />
			<p>
				<a href='#'>Gửi lại mã</a>
			</p>
			<button>Xác nhận</button>
		</form>
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

	<script src="assets/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="assets/js/sign-in.js"></script>

</body>

</html>