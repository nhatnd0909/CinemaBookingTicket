<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Corona Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="admin_assets/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="admin_assets/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="admin_assets/assets/vendors/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="admin_assets/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href="admin_assets/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="admin_assets/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="admin_assets/assets/images/favicon.png" />
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="sidebar-brand brand-logo" href="adminDashboard"><img
					src="admin_assets/assets/images/logo.svg" alt="logo" /></a> <a
					class="sidebar-brand brand-logo-mini" href="adminDashboard"><img
					src="admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle "
									src="admin_assets/assets/images/faces/face15.jpg" alt=""> <span
									class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 font-weight-normal">Admin</h5>
							</div>
						</div>
						<a href="#" id="profile-dropdown" data-toggle="dropdown"><i
							class="mdi mdi-dots-vertical"></i></a>
						<div
							class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
							aria-labelledby="profile-dropdown">
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-settings text-primary"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Account
										settings</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword  text-info"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Change
										Password</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
						</div>
					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link">Navigation</span>
				</li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="adminDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Dashboard</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="revenue"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Revenue Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="movieDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Movie Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="userDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">User Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="employeeDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Employee Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/rankDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Rank</span>
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
						<li class="nav-item w-100">
							<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
								<input type="text" class="form-control"
									placeholder="Search products">
							</form>
						</li>
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
										<img src="admin_assets/assets/images/faces/face4.jpg" alt="image"
											class="rounded-circle profile-pic">
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
										<img src="admin_assets/assets/images/faces/face2.jpg" alt="image"
											class="rounded-circle profile-pic">
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
										<img src="admin_assets/assets/images/faces/face3.jpg" alt="image"
											class="rounded-circle profile-pic">
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
										src="admin_assets/assets/images/faces/face15.jpg" alt="">
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Admin</p>
									<i class="mdi mdi-menu-down d-none d-sm-block"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="profileDropdown">
								<h6 class="p-3 mb-0">Profile</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-settings text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Settings</p>
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
										<p class="preview-subject mb-1">Log out</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
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
					<div class="page-header">
						<h3 class="page-title">Revenue Management</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">DashBoard</a></li>
								<li class="breadcrumb-item active" aria-current="page">Revenue</li>
							</ol>
						</nav>
					</div>
					<div class="row">
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Revenue</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0">$32123</h2>
												<p class="text-success ml-2 mb-0 font-weight-medium">+3.5%</p>
											</div>
											<h6 class="text-muted font-weight-normal">11.38% Since
												last month</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i class="icon-lg mdi mdi-codepen text-primary ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Sales</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0">$45850</h2>
												<p class="text-success ml-2 mb-0 font-weight-medium">+8.3%</p>
											</div>
											<h6 class="text-muted font-weight-normal">9.61% Since
												last month</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i class="icon-lg mdi mdi-wallet-travel text-danger ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Purchase</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0">$2039</h2>
												<p class="text-danger ml-2 mb-0 font-weight-medium">-2.1%
												</p>
											</div>
											<h6 class="text-muted font-weight-normal">2.27% Since
												last month</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i class="icon-lg mdi mdi-monitor text-success ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">$12.34</h3>
												<p class="text-success ml-2 mb-0 font-weight-medium">+3.5%</p>
											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success ">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Potential growth</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">$17.34</h3>
												<p class="text-success ml-2 mb-0 font-weight-medium">+11%</p>
											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Revenue current</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">$12.34</h3>
												<p class="text-danger ml-2 mb-0 font-weight-medium">-2.4%</p>
											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-danger">
												<span class="mdi mdi-arrow-bottom-left icon-item"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Daily Income</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">$31.53</h3>
												<p class="text-success ml-2 mb-0 font-weight-medium">+3.5%</p>
											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success ">
												<span class="mdi mdi-arrow-top-right icon-item"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Expense current</h6>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="d-flex flex-row justify-content-between">
									<h3 class="card-title mb-1">Theaters</h3>
									<h4 class="card-title mb-1">Revenue</h4>
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
														<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/ Đà
															Nẵng</p>
													</div>
													<div class="mr-auto text-sm-right pt-2 pt-sm-0">
														<h3 class="preview-subject">123$</h3>
														<p class="text-muted mb-0">Income September</p>
													</div>
												</div>
											</div>
											<div class="preview-item border-bottom">
												<div class="preview-thumbnail">
													<div class="preview-icon bg-success">
														<i class="mdi mdi-cloud-download"></i>
													</div>
												</div>
												<div class="preview-item-content d-sm-flex flex-grow">
													<div class="flex-grow">
														<h6 class="preview-subject">Starlight Đà Nẵng</h6>
														<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/ Đà
															Nẵng</p>
													</div>
													<div class="mr-auto text-sm-right pt-2 pt-sm-0">
														<h3 class="preview-subject">123$</h3>
														<p class="text-muted mb-0">Income September</p>
													</div>
												</div>
											</div>
											<div class="preview-item border-bottom">
												<div class="preview-thumbnail">
													<div class="preview-icon bg-info">
														<i class="mdi mdi-clock"></i>
													</div>
												</div>
												<div class="preview-item-content d-sm-flex flex-grow">
													<div class="flex-grow">
														<h6 class="preview-subject">Starlight Đà Nẵng</h6>
														<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/ Đà
															Nẵng</p>
													</div>
													<div class="mr-auto text-sm-right pt-2 pt-sm-0">
														<h3 class="preview-subject">123$</h3>
														<p class="text-muted mb-0">Income September</p>
													</div>
												</div>
											</div>
											<div class="preview-item border-bottom">
												<div class="preview-thumbnail">
													<div class="preview-icon bg-danger">
														<i class="mdi mdi-email-open"></i>
													</div>
												</div>
												<div class="preview-item-content d-sm-flex flex-grow">
													<div class="flex-grow">
														<h6 class="preview-subject">Starlight Đà Nẵng</h6>
														<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/ Đà
															Nẵng</p>
													</div>
													<div class="mr-auto text-sm-right pt-2 pt-sm-0">
														<h3 class="preview-subject">123$</h3>
														<p class="text-muted mb-0">Income September</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Doughnut chart</h4>
									<canvas id="lineChart" style="height: 250px"></canvas>
								</div>
							</div>
						</div>
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Bar chart</h4>
									<canvas id="barChart" style="height: 230px"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="admin_assets/assets/js/off-canvas.js"></script>
	<script src="admin_assets/assets/js/hoverable-collapse.js"></script>
	<script src="admin_assets/assets/js/misc.js"></script>
	<script src="admin_assets/assets/js/settings.js"></script>
	<script src="admin_assets/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="admin_assets/assets/js/chart.js"></script>
	<!-- End custom js for this page -->
</body>

</html>