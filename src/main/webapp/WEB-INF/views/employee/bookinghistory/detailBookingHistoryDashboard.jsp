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
<title>Corona Booking History</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/profileuser.css">

<link rel="stylesheet" href="/admin_assets/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="/admin_assets/assets/images/favicon.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-ezmkAbl8XqHbOV5e6FmBc8XjbpYumGWWdS3IfeFos5PQsLYLXvj3fcMGJNHpR7Xf" crossorigin="anonymous">

</head>

<style>
.icon-log {
	font-size: 26px;
	color: #fff;
	text-shadow: 2px 2px 0 var(--theme-rose), 4px 4px 0 var(--theme-rose);
	padding-right: 5px;
}

.navbar-brand {
	color: #fff;
}

.col-lg-10 {
	margin-left: 100px;
}

.col-lg-5.mb-4.mb-lg-0 img {
	width: 90%;
}

.col-lg-7.px-xl-10 {
	font-size: 30px;
}
</style>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="navbar-brand" href="#"><span
					class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz</a> <a
					class="sidebar-brand brand-logo-mini" href="adminDashboard"><img
					src="admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle "
									src="/admin_assets/assets/images/faces/face15.jpg" alt="">
								<span class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 font-weight-normal">Nhân Viên</h5>
							</div>
						</div>
						<a href="#" id="profile-dropdown" data-toggle="dropdown"><i
							class="mdi mdi-dots-vertical"></i></a>
						<div
							class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
							aria-labelledby="profile-dropdown">
							<a href="/employee/profile" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-settings text-primary"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Cài Đặt
										Tài Khoản</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="/employee/changepassword"
								class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword  text-info"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Thay
										Đổi Mật Khẩu</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
						</div>
					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link">Chuyển
						hướng</span></li>

				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/Dashboard"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Bảng Điều Khiển</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/service"> <span class="menu-icon"> <i
							class="mdi mdi-cash-usd"></i>
					</span> <span class="menu-title">Dịch Vụ</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/show"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Lịch chiếu</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/bookinghistory"> <span class="menu-icon">
							<i class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Lịch Sử Đặt Vé </span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/contact"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Liên hệ </span>
				</a></li>
			</ul>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar p-0 fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<a class="navbar-brand brand-logo-mini" href="adminDashboard"><img
						src="/admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
				</div>
				<div
					class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav w-100">
						<li class="nav-item w-100"></li>
					</ul>
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item dropdown"><a
							class="nav-link count-indicator dropdown-toggle"
							id="messageDropdown" href="#" data-toggle="dropdown"
							aria-expanded="false"> <i class="mdi mdi-email"></i> <span
								class="count bg-success"></span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="messageDropdown">
								<h6 class="p-3 mb-0">Messages</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="/admin_assets/assets/images/faces/face4.jpg"
											alt="image" class="rounded-circle profile-pic">
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Mark send you a
											message</p>
										<p class="text-muted mb-0">1 Minutes ago</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="/admin_assets/assets/images/faces/face2.jpg"
											alt="image" class="rounded-circle profile-pic">
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Cregh send you a
											message</p>
										<p class="text-muted mb-0">15 Minutes ago</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="/admin_assets/assets/images/faces/face3.jpg"
											alt="image" class="rounded-circle profile-pic">
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Profile picture
											updated</p>
										<p class="text-muted mb-0">18 Minutes ago</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">4 new messages</p>
							</div></li>
						<li class="nav-item dropdown border-left"><a
							class="nav-link count-indicator dropdown-toggle"
							id="notificationDropdown" href="#" data-toggle="dropdown"> <i
								class="mdi mdi-bell"></i> <span class="count bg-danger"></span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="notificationDropdown">
								<h6 class="p-3 mb-0">Notifications</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-calendar text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Event today</p>
										<p class="text-muted ellipsis mb-0">Just a reminder that
											you have an event today</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-settings text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Settings</p>
										<p class="text-muted ellipsis mb-0">Update dashboard</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-link-variant text-warning"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Launch Admin</p>
										<p class="text-muted ellipsis mb-0">New admin wow!</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">See all notifications</p>
							</div></li>
						<li class="nav-item dropdown"><a class="nav-link"
							id="profileDropdown" href="#" data-toggle="dropdown">
								<div class="navbar-profile">
									<img class="img-xs rounded-circle"
										src="/admin_assets/assets/images/faces/face15.jpg" alt="">
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Nhân
										Viên</p>
									<i class="mdi mdi-menu-down d-none d-sm-block"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="profileDropdown">
								<h6 class="p-3 mb-0">Hồ Sơ</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-settings text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Cài Đặt</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-logout text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Đăng Xuất</p>
									</div>
								</a>
							</div></li>
					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-format-line-spacing"></span>
					</button>
				</div>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-10">
							<div class="card">
								<div class="col-lg-12 mb-4 mb-sm-5">
									<div class="card card-style1 border-0">
										<div><a href="/employee/bookinghistory"><i class=" fa fas fa-arrow-left"></i></a></div>
										<div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
											<div class="row align-items-center">
												<div class="col-lg-5 mb-4 mb-lg-0">
													<img
														src="/assets/images/${ticket.getShow().getMovie().getImage()}"
														alt="..." width="240px">
												</div>
												<div class="col-lg-7 px-xl-10">
													<div class="title-container">
														<h3 class="title-text">${ticket.getShow().getMovie().getName()}</h3>
														<%-- <h3 class="title-text">${ticket.getShow().getMovie().getName()}</h3> --%>
													</div>
													<ul class="list-unstyled mb-1-9">
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Phòng
																chiếu:</span>
															${ticket.getShow().getTheaterRoom().getTheater().getName()}
															- ${ticket.getShow().getTheaterRoom().getName()}</li>
														<%-- ${ticket.getShow().getTheaterRoom().getTheater().getName()}
															- ${ticket.getShow().getTheaterRoom().getName()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Giờ
																Chiếu:</span> ${ticket.getShow().getStartTime()}</li>
														<%-- ${ticket.getShow().getStartTime()} -
															${ticket.getShow().getEndTime()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Ngày
																Chiếu:</span> ${ticket.getShow().getDayTime()}</li>

														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Ghế</span>
															${ticket.getListSeat()}</li>
														<%-- 	${ticket.getListSeat()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Thời
																lượng:</span> ${ticket.getShow().getMovie().getDuration()}
															phút</li>
														<%-- ${ticket.getShow().getMovie().getDuration()}
															phút</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Dịch
																vụ</span></li>
														<c:forEach var="order" items="${listOrder}">
															<li class="mb-2 mb-xl-3 display-28">${order.getAmount()}
																${order.getService().getName()}
																${order.getService().getSize()}</li>
														</c:forEach>
													</ul>

													<ul class="social-icon-style1 list-unstyled mb-0 ps-0">
														<li><a href="#!"><i class="ti-twitter-alt"></i></a></li>
														<li><a href="#!"><i class="ti-facebook"></i></a></li>
														<li><a href="#!"><i class="ti-pinterest"></i></a></li>
														<li><a href="#!"><i class="ti-instagram"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="/admin_assets/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="/admin_assets/assets/vendors/chart.js/Chart.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/progressbar.js/progressbar.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="/admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/admin_assets/assets/js/off-canvas.js"></script>
	<script src="/admin_assets/assets/js/hoverable-collapse.js"></script>
	<script src="/admin_assets/assets/js/misc.js"></script>
	<script src="/admin_assets/assets/js/settings.js"></script>
	<script src="/admin_assets/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="/admin_assets/assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->
</body>

</html>