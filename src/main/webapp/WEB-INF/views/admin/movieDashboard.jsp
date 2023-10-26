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
				<a class="sidebar-brand brand-logo" href="adminDashboard.html"><img
					src="admin_assets/assets/images/logo.svg" alt="logo" /></a> <a
					class="sidebar-brand brand-logo-mini" href="adminDashboard.html"><img
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
								<h5 class="mb-0 font-weight-normal">Amin</h5>
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
							class="mdi mdi-cash-usd"></i>
					</span> <span class="menu-title">Revenue Magagement</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="movieDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Movie Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="customerDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Customer Management</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="employeeDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">Employe Management</span>
				</a></li>
			</ul>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar p-0 fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<a class="navbar-brand brand-logo-mini" href="adminDashboard.html"><img
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
						<h3 class="page-title">Movie Management</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">DashBoard</a></li>
								<li class="breadcrumb-item active" aria-current="page">Movie</li>
							</ol>
						</nav>
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
													<td><img src="admin_assets/assets/images/faces/face1.jpg"
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
													<td><img src="admin_assets/assets/images/faces/face1.jpg"
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
													<td><img src="admin_assets/assets/images/faces/face1.jpg"
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
													<td><img src="admin_assets/assets/images/faces/face1.jpg"
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
													<td><img src="admin_assets/assets/images/faces/face1.jpg"
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

					<div class="col-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Add New Movie</h4>
								<!-- <p class="card-description"> Basic form elements </p> -->
								<form class="forms-sample">
									<div class="form-group">
										<label for="exampleInputName1">Name Movie</label> <input
											type="text" class="form-control" id="exampleInputName1"
											placeholder="Name">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">Trailer URL</label> <input
											type="email" class="form-control" id="exampleInputEmail3"
											placeholder="Email">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword4">Actor</label> <input
											type="password" class="form-control"
											id="exampleInputPassword4" placeholder="Password">
									</div>
									<div class="form-group">
										<label for="exampleSelectGender">Genre</label> <select
											class="form-control" id="exampleSelectGender">
											<option>Genre</option>
											<option>Genre</option>
											<option>Genre</option>
											<option>Genre</option>
											<option>Genre</option>
											<option>Genre</option>
											<option>Genre</option>
										</select>
									</div>

									<div class="form-group">
										<label>Upload Image</label> <input type="file" name="img[]"
											class="file-upload-default">
										<div class="input-group col-xs-12">
											<input type="text" class="form-control file-upload-info"
												disabled placeholder="Upload Image"> <span
												class="input-group-append">
												<button class="file-upload-browse btn btn-primary"
													type="button">Upload</button>
											</span>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleSelectGender">Theater Location</label>
										<div class="form-check mx-sm-2">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input" checked>
												Theater Đà Nẵng
											</label>
										</div>
										<div class="form-check mx-sm-2">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input" checked>
												Theater Đà Nẵng
											</label>
										</div>
										<div class="form-check mx-sm-2">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input" checked>
												Theater Đà Nẵng
											</label>
										</div>
										<div class="form-check mx-sm-2">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input" checked>
												Theater Đà Nẵng
											</label>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleTextarea1">Decription</label>
										<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
									</div>
									<button type="submit" class="btn btn-primary mr-2">Submit</button>
									<button class="btn btn-dark">Cancel</button>
								</form>
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
	<script src="admin_assets/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="admin_assets/assets/js/off-canvas.js"></script>
	<script src="admin_assets/assets/js/hoverable-collapse.js"></script>
	<script src="admin_assets/assets/js/misc.js"></script>
	<script src="admin_assets/assets/js/settings.js"></script>
	<script src="admin_assets/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<!-- End custom js for this page -->
</body>

</html>