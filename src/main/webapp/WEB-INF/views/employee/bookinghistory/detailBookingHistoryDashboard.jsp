<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.col-lg-10{
	margin-left: 100px;
}
.col-lg-5.mb-4.mb-lg-0 img{
	width:90%;
}
.col-lg-7.px-xl-10{
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
										<div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
											<div class="row align-items-center">
												<div class="col-lg-5 mb-4 mb-lg-0">
													<%-- <img
															src="assets/images/${ticket.getShow().getMovie().getImage()}"
															alt="..." width="240px"> --%>
													<img
														src="data:image/jpeg;base64,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"
														alt="..." width="240px">
												</div>
												<div class="col-lg-7 px-xl-10">
													<div class="title-container">
														<h3 class="title-text">Thor</h3>
														<%-- <h3 class="title-text">${ticket.getShow().getMovie().getName()}</h3> --%>
													</div>
													<ul class="list-unstyled mb-1-9">
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Phòng
																chiếu:</span> Theater Đà Nẵng - Room1</li>
														<%-- ${ticket.getShow().getTheaterRoom().getTheater().getName()}
															- ${ticket.getShow().getTheaterRoom().getName()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Giờ
																Chiếu:</span> 07:00:00 - 10:00:00</li>
														<%-- ${ticket.getShow().getStartTime()} -
															${ticket.getShow().getEndTime()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Ngày
																Chiếu:</span> <script>
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
																</script></li>

														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Ghế</span>
															C5,D5</li>
														<%-- 	${ticket.getListSeat()}</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Thời
																lượng:</span> 118 phút</li>
														<%-- ${ticket.getShow().getMovie().getDuration()}
															phút</li> --%>
														<li class="mb-2 mb-xl-3 display-28"><span
															class="display-26 text-secondary me-2 font-weight-600">Dịch
																vụ</span></li>
														<li class="mb-2 mb-xl-3 display-28">
														2 Combo B: 2 Special Flavor Popcorn + 3 Soft Drink size L</li>
														<%-- <c:forEach items="${listOder}" var="order">
															<li class="mb-2 mb-xl-3 display-28">
																${order.getAmount()} ${order.getService().getName()}
																size ${order.getService().getSize()}</li>
														</c:forEach> --%>
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