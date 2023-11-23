<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>MyShowz Employee</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/admin_assets/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="/admin_assets/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet" href="/assets/css/style-starter.css">
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
<link rel="stylesheet" href="/admin_assets/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="/admin_assets/assets/images/favicon.png" />
</head>
<style>
.icon-log{
    font-size: 26px;
    color: #fff;
    text-shadow: 2px 2px 0 var(--theme-rose), 4px 4px 0 var(--theme-rose);
    padding-right: 5px;
    }
  .navbar-brand{
  	color : #fff;
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
					class="sidebar-brand brand-logo-mini" href="/employee/Dashboard"><img
					src="/admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle "
									src="/admin_assets/assets/images/faces/face15.jpg" alt=""> <span
									class="count bg-success"></span>
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
									<p class="preview-subject ellipsis mb-1 text-small">Cài Đặt Tài Khoản</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="/employee/changepassword" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword  text-info"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Thay Đổi Mật Khẩu</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
						</div>
					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link">Chuyển hướng</span>
				</li>

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
					</span> <span class="menu-title">Chương Trình</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/bookinghistory"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Lịch Sử Đặt </span>
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
						<li class="nav-item w-100">
							
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
										<img src="/admin_assets/assets/images/faces/face4.jpg" alt="image"
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
										<img src="/admin_assets/assets/images/faces/face2.jpg" alt="image"
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
										<img src="/admin_assets/assets/images/faces/face3.jpg" alt="image"
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
										src="/admin_assets/assets/images/faces/face15.jpg" alt="">
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Nhân Viên</p>
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
					<div class="row">
						<div class="col-md-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Transaction History</h4>
									<canvas id="transaction-history" class="transaction-chart"></canvas>
									<div
										class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
										<div class="text-md-center text-xl-left">
											<h6 class="mb-1">Transfer to Paypal</h6>
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
											<h6 class="mb-1">Tranfer to VNPay</h6>
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
															<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/
																Đà Nẵng</p>
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
															<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/
																Đà Nẵng</p>
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
															<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/
																Đà Nẵng</p>
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
															<p class="text-muted mb-0">Hòa Cường Nam/ Hải Châu/
																Đà Nẵng</p>
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
					<div class="row ">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Ongoing Movie</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<!-- <th>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </th> -->
													<th>Movie Name</th>
													<th>Movie No</th>
													<th>Movie Cost</th>
													<th>Income</th>
													<th>Start Date</th>
													<th>End Date</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<!-- <td>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </td> -->
													<td><img src="/admin_assets/assets/images/faces/face1.jpg"
														alt="image" /> <span class="pl-2">Ác Quỷ Ma Sơ 2</span></td>
													<td>02312</td>
													<td>$14,500</td>
													<td>$14,500</td>
													<td>04 Dec 2019</td>
													<td>04 Dec 2019</td>
													<td>
														<div class="badge badge-outline-success">Ongoing</div>
													</td>
												</tr>
												<tr>
													<!-- <td>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </td> -->
													<td><img src="/admin_assets/assets/images/faces/face1.jpg"
														alt="image" /> <span class="pl-2">Ác Quỷ Ma Sơ 2</span></td>
													<td>02312</td>
													<td>$14,500</td>
													<td>$14,500</td>
													<td>04 Dec 2019</td>
													<td>04 Dec 2019</td>
													<td>
														<div class="badge badge-outline-success">Ongoing</div>
													</td>
												</tr>
												<tr>
													<!-- <td>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </td> -->
													<td><img src="/admin_assets/assets/images/faces/face1.jpg"
														alt="image" /> <span class="pl-2">Ác Quỷ Ma Sơ 2</span></td>
													<td>02312</td>
													<td>$14,500</td>
													<td>$14,500</td>
													<td>04 Dec 2019</td>
													<td>04 Dec 2019</td>
													<td>
														<div class="badge badge-outline-success">Ongoing</div>
													</td>
												</tr>
												<tr>
													<!-- <td>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </td> -->
													<td><img src="/admin_assets/assets/images/faces/face1.jpg"
														alt="image" /> <span class="pl-2">Ác Quỷ Ma Sơ 2</span></td>
													<td>02312</td>
													<td>$14,500</td>
													<td>$14,500</td>
													<td>04 Dec 2019</td>
													<td>04 Dec 2019</td>
													<td>
														<div class="badge badge-outline-success">Ongoing</div>
													</td>
												</tr>
												<tr>
													<!-- <td>
                            <div class="form-check form-check-muted m-0">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                              </label>
                            </div>
                          </td> -->
													<td><img src="/admin_assets/assets/images/faces/face1.jpg"
														alt="image" /> <span class="pl-2">Ác Quỷ Ma Sơ 2</span></td>
													<td>02312</td>
													<td>$14,500</td>
													<td>$14,500</td>
													<td>04 Dec 2019</td>
													<td>04 Dec 2019</td>
													<td>
														<div class="badge badge-outline-success">Ongoing</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-row justify-content-between">
										<h4 class="card-title">Messages</h4>
										<p class="text-muted mb-1 small">View all</p>
									</div>
									<div class="preview-list">
										<div class="preview-item border-bottom">
											<div class="preview-thumbnail">
												<img src="/admin_assets/assets/images/faces/face6.jpg" alt="image"
													class="rounded-circle" />
											</div>
											<div class="preview-item-content d-flex flex-grow">
												<div class="flex-grow">
													<div
														class="d-flex d-md-block d-xl-flex justify-content-between">
														<h6 class="preview-subject">Leonard</h6>
														<p class="text-muted text-small">5 minutes ago</p>
													</div>
													<p class="text-muted">Well, it seems to be working now.</p>
												</div>
											</div>
										</div>
										<div class="preview-item border-bottom">
											<div class="preview-thumbnail">
												<img src="/admin_assets/assets/images/faces/face8.jpg" alt="image"
													class="rounded-circle" />
											</div>
											<div class="preview-item-content d-flex flex-grow">
												<div class="flex-grow">
													<div
														class="d-flex d-md-block d-xl-flex justify-content-between">
														<h6 class="preview-subject">Luella Mills</h6>
														<p class="text-muted text-small">10 Minutes Ago</p>
													</div>
													<p class="text-muted">Well, it seems to be working now.</p>
												</div>
											</div>
										</div>
										<div class="preview-item border-bottom">
											<div class="preview-thumbnail">
												<img src="/admin_assets/assets/images/faces/face9.jpg" alt="image"
													class="rounded-circle" />
											</div>
											<div class="preview-item-content d-flex flex-grow">
												<div class="flex-grow">
													<div
														class="d-flex d-md-block d-xl-flex justify-content-between">
														<h6 class="preview-subject">Ethel Kelly</h6>
														<p class="text-muted text-small">2 Hours Ago</p>
													</div>
													<p class="text-muted">Please review the tickets</p>
												</div>
											</div>
										</div>
										<div class="preview-item border-bottom">
											<div class="preview-thumbnail">
												<img src="/admin_assets/assets/images/faces/face11.jpg" alt="image"
													class="rounded-circle" />
											</div>
											<div class="preview-item-content d-flex flex-grow">
												<div class="flex-grow">
													<div
														class="d-flex d-md-block d-xl-flex justify-content-between">
														<h6 class="preview-subject">Herman May</h6>
														<p class="text-muted text-small">4 Hours Ago</p>
													</div>
													<p class="text-muted">Thanks a lot. It was easy to fix
														it .</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Portfolio Slide</h4>
									<div
										class="owl-carousel owl-theme full-width owl-carousel-dash portfolio-carousel"
										id="owl-carousel-basic">
										<div class="item">
											<img src="/admin_assets/assets/images/dashboard/Rectangle.jpg" alt="">
										</div>
										<div class="item">
											<img src="/admin_assets/assets/images/dashboard/Img_5.jpg" alt="">
										</div>
										<div class="item">
											<img src="/admin_assets/assets/images/dashboard/img_6.jpg" alt="">
										</div>
									</div>
									<div class="d-flex py-4">
										<div class="preview-list w-100">
											<div class="preview-item p-0">
												<div class="preview-thumbnail">
													<img src="/admin_assets/assets/images/faces/face12.jpg"
														class="rounded-circle" alt="">
												</div>
												<div class="preview-item-content d-flex flex-grow">
													<div class="flex-grow">
														<div
															class="d-flex d-md-block d-xl-flex justify-content-between">
															<h6 class="preview-subject">CeeCee Bass</h6>
															<p class="text-muted text-small">4 Hours Ago</p>
														</div>
														<p class="text-muted">Well, it seems to be working
															now.</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<p class="text-muted">Well, it seems to be working now.</p>
									<div class="progress progress-md portfolio-progress">
										<div class="progress-bar bg-success" role="progressbar"
											style="width: 50%" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">To do list</h4>
									<div class="add-items d-flex">
										<input type="text" class="form-control todo-list-input"
											placeholder="enter task..">
										<button class="add btn btn-primary todo-list-add-btn">Add</button>
									</div>
									<div class="list-wrapper">
										<ul
											class="d-flex flex-column-reverse text-white todo-list todo-list-custom">
											<li>
												<div class="form-check form-check-primary">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox"> Create invoice
													</label>
												</div> <i class="remove mdi mdi-close-box"></i>
											</li>
											<li>
												<div class="form-check form-check-primary">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox"> Meeting with
														Alita
													</label>
												</div> <i class="remove mdi mdi-close-box"></i>
											</li>
											<li class="completed">
												<div class="form-check form-check-primary">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox" checked> Prepare
														for presentation
													</label>
												</div> <i class="remove mdi mdi-close-box"></i>
											</li>
											<li>
												<div class="form-check form-check-primary">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox"> Plan weekend
														outing
													</label>
												</div> <i class="remove mdi mdi-close-box"></i>
											</li>
											<li>
												<div class="form-check form-check-primary">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox"> Pick up kids
														from school
													</label>
												</div> <i class="remove mdi mdi-close-box"></i>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Visitors by Countries</h4>
									<div class="row">
										<div class="col-md-5">
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td><i class="flag-icon flag-icon-us"></i></td>
															<td>USA</td>
															<td class="text-right">1500</td>
															<td class="text-right font-weight-medium">56.35%</td>
														</tr>
														<tr>
															<td><i class="flag-icon flag-icon-de"></i></td>
															<td>Germany</td>
															<td class="text-right">800</td>
															<td class="text-right font-weight-medium">33.25%</td>
														</tr>
														<tr>
															<td><i class="flag-icon flag-icon-au"></i></td>
															<td>Australia</td>
															<td class="text-right">760</td>
															<td class="text-right font-weight-medium">15.45%</td>
														</tr>
														<tr>
															<td><i class="flag-icon flag-icon-gb"></i></td>
															<td>United Kingdom</td>
															<td class="text-right">450</td>
															<td class="text-right font-weight-medium">25.00%</td>
														</tr>
														<tr>
															<td><i class="flag-icon flag-icon-ro"></i></td>
															<td>Romania</td>
															<td class="text-right">620</td>
															<td class="text-right font-weight-medium">10.25%</td>
														</tr>
														<tr>
															<td><i class="flag-icon flag-icon-br"></i></td>
															<td>Brasil</td>
															<td class="text-right">230</td>
															<td class="text-right font-weight-medium">75.00%</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="col-md-7">
											<div id="audience-map" class="vector-map"></div>
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
	<script src="/admin_assets/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="/admin_assets/assets/vendors/chart.js/Chart.min.js"></script>
	<script src="/admin_assets/assets/vendors/progressbar.js/progressbar.min.js"></script>
	<script src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="/admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
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