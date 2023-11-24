<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>MyShowz</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="admin_assets/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="admin_assets/assets/vendors/css/vendor.bundle.base.css" />
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet"
	href="admin_assets/assets/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet"
	href="admin_assets/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.css" />
<link rel="stylesheet"
	href="admin_assets/assets/vendors/owl-carousel-2/owl.theme.default.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="admin_assets/assets/css/style.css" />
<!-- End layout styles -->
<link rel="shortcut icon" href="admin_assets/assets/images/favicon.png" />
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
								<img class="img-xs rounded-circle"
									src="admin_assets/assets/images/faces/face15.jpg" alt="" /> <span
									class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 font-weight-normal">Quản Trị Viên</h5>
							</div>
						</div>
						<a href="#" id="profile-dropdown" data-toggle="dropdown"><i
							class="mdi mdi-dots-vertical"></i></a>
						<div
							class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
							aria-labelledby="profile-dropdown">
							<a href="/adminDashboard/profile"
								class="dropdown-item preview-item">
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
							<a href="/adminDashboard/changepassword"
								class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword text-info"></i>
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
					href="adminDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Bảng Điều Khiển</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="revenue"> <span class="menu-icon"> <i
							class="mdi mdi-cash-usd"></i>
					</span> <span class="menu-title">Quản Lý Doanh Thu</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="movieDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Quản Lý Phim</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="customerDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Quản Lý Khách Hàng</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="employeeDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Quản Lý Nhân Viên</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/theaterDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Quản Lý Rạp</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/rankDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Quản Lý Thứ Hạng</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/genreDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Quản Lý Thể Loại</span>
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
						src="admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
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
										<img src="admin_assets/assets/images/faces/face4.jpg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Mark send you a
											message</p>
										<p class="text-muted mb-0">1 phút trước</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="admin_assets/assets/images/faces/face2.jpg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Cregh send you a
											message</p>
										<p class="text-muted mb-0">15 phút trước</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="admin_assets/assets/images/faces/face3.jpg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Profile picture
											updated</p>
										<p class="text-muted mb-0">18 phút trước</p>
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
										src="admin_assets/assets/images/faces/face15.jpg" alt="" />
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Quản
										Trị Viên</p>
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
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0" id="moneyMonth">${totalByMonth}VND</h3>
												<!-- <p class="text-success ml-2 mb-0 font-weight-medium">
													+3.5%</p> -->
											</div>
										</div>
										<!-- <div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div> -->
									</div>
									<h6 class="text-muted font-weight-normal">Tổng doanh thu
										tháng ${currentMonth}</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">${totalMovies}phim</h3>
												<!-- 												<p class="text-success ml-2 mb-0 font-weight-medium">
													+11%</p> -->
											</div>
										</div>
										<!-- <div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div> -->
									</div>
									<h6 class="text-muted font-weight-normal">Số lượng phim</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">${totalCustomer}ngườidùng</h3>
												<!-- <p class="text-danger ml-2 mb-0 font-weight-medium">
													-2.4%</p> -->
											</div>
										</div>
										<!-- <div class="col-3">
											<div class="icon icon-box-danger">
												<span class="mdi mdi-arrow-bottom-left icon-item"></span>
											</div>
										</div> -->
									</div>
									<h6 class="text-muted font-weight-normal">Số lượng người
										dùng</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">${totalTickets}vé</h3>
												<!-- 												<p class="text-success ml-2 mb-0 font-weight-medium">
													+3.5%</p> -->
											</div>
										</div>
										<!-- 										<div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div> -->
									</div>
									<h6 class="text-muted font-weight-normal">Tổng vé đã đặt
										tháng ${currentMonth}</h6>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Thanh toán trực tuyến</h4>
									<canvas id="transaction-history" class="transaction-chart"></canvas>
									<div
										class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
										<div class="text-md-center text-xl-left">
											<h6 class="mb-1">Thanh toán qua Paypal</h6>
											<p class="text-muted mb-0">07 Jan 2019, 09:12AM</p>
										</div>
										<div
											class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
											<h6 class="font-weight-bold mb-0">$236</h6>
										</div>
									</div>
									<div
										class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
										<div class="text-md-center text-xl-left">
											<h6 class="mb-1">Thanh toán qua VNPay</h6>
											<p class="text-muted mb-0">07 Jan 2019, 09:12AM</p>
										</div>
										<div
											class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
											<h6 class="font-weight-bold mb-0">$593</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-row justify-content-between">
										<h3 class="card-title mb-1">Rạp chiếu</h3>
										<h4 class="card-title mb-1">Doanh thu</h4>
									</div>
									<div class="row">
										<div class="col-12">
											<div class="preview-list">
												<div class="preview-item border-bottom">
													<div class="preview-thumbnail">
														<div class="preview-icon bg-primary">
															<i class="mdi mdi-file-document"></i>
														</div>
													</div>
													<div class="preview-item-content d-sm-flex flex-grow">
														<div class="flex-grow">
															<h6 class="preview-subject">Starlight Đà Nẵng</h6>
															<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/
																Đà Nẵng</p>
														</div>
														<div class="mr-auto text-sm-right pt-2 pt-sm-0">
															<h3 class="preview-subject">123$</h3>
															<p class="text-muted mb-0">Doanh thu Tháng 11</p>
														</div>
													</div>
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
				<!-- partial:partials/_footer.html -->

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="admin_assets/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="admin_assets/assets/vendors/chart.js/Chart.min.js"></script>
	<script
		src="admin_assets/assets/vendors/progressbar.js/progressbar.min.js"></script>
	<script
		src="admin_assets/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="admin_assets/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="admin_assets/assets/js/off-canvas.js"></script>
	<script src="admin_assets/assets/js/hoverable-collapse.js"></script>
	<script src="admin_assets/assets/js/misc.js"></script>
	<script src="admin_assets/assets/js/settings.js"></script>
	<script src="admin_assets/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="admin_assets/assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->

	<script type="text/javascript">
		
	</script>
</body>
</html>
