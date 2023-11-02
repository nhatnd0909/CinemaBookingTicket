<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="../../../admin_assets/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="../../../admin_assets/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="../../../admin_assets/assets/vendors/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="../../../admin_assets/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="../../../admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href="../../../admin_assets/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="../../../admin_assets/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon"
	href="../../../admin_assets/assets/images/favicon.png" />
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="sidebar-brand brand-logo" href="adminDashboard.html"><img
					src="../../../admin_assets/assets/images/logo.svg" alt="logo" /></a> <a
					class="sidebar-brand brand-logo-mini" href="adminDashboard.html"><img
					src="../../../admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle "
									src="../../../admin_assets/assets/images/faces/face15.jpg"
									alt=""> <span class="count bg-success"></span>
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
							<a href="/adminDashboard/profile"
								class="dropdown-item preview-item">
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
							<a href="/adminDashboard/changepassword"
								class="dropdown-item preview-item">
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
				<li class="nav-item menu-items"><a class="nav-link"
					href="/rankDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Rank</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/genreDashboard"> <span class="menu-icon"> <i
							class="mdi mdi-seal"></i>
					</span> <span class="menu-title">Genre</span>
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
						src="../../../admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
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
										<img src="../../admin_assets/assets/images/faces/face4.jpg"
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
										<img src="../../../admin_assets/assets/images/faces/face2.jpg"
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
										<img src="../../admin_assets/assets/images/faces/face3.jpg"
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
										src="../../../admin_assets/assets/images/faces/face15.jpg"
										alt="">
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
					<div class="col-12 grid-margin stretch-card ">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">${pageTitle}</h4>
								<!-- <p class="card-description"> Basic form elements </p> -->
								<c:set var="movie" value="${movie}" />
								<form class="forms-sample"
									action="<c:url value='/admin/movies/save' />" method="post">
									<input type="hidden" name="movieID" value="${movie.movieID}" />
									<div class="form-group">
										<label for="exampleInputName1">Name Movie</label> <input
											type="text" class="form-control" id="exampleInputName1"
											placeholder="Name" name="name" value="${movie.name}" required
											minlength="1" maxlength="255" />
									</div>
									<div class="form-group">
										<label for="exampleInputName1">Actor</label> <input
											type="text" class="form-control" id="exampleInputName1"
											placeholder="Actor" name="actor" value="${movie.actor}"
											minlength="1" maxlength="255" />
									</div>
									<div class="form-group">
										<label for="exampleInputName1">Director</label> <input
											type="text" class="form-control" id="exampleInputName1"
											placeholder="Director" name="director"
											value="${movie.director}" required minlength="1"
											maxlength="255" />
									</div>
									<div class="form-group">
										<label for="exampleInputName1">Duration</label> <input
											type="number" class="form-control" id="exampleInputName1"
											placeholder="Duration" name="duration"
											value="${movie.duration}" />
									</div>
									<div class="form-group">
										<label for="exampleInputName1">Language</label> <input
											type="text" class="form-control" id="exampleInputName1"
											placeholder="Language" name="language"
											value="${movie.language}" required minlength="1"
											maxlength="255" />
									</div>
									<div class="form-group">
										<label for="exampleTextarea1">Description</label>
										<textarea class="form-control" id="exampleTextarea1" rows="4"
											name="description" value="${movie.description}" required
											minlength="1" maxlength="4000">${movie.description}
											</textarea>
									</div>
									<div class="form-group">
										<label>Upload Image</label>
										<div class=" input-group col-xs-12">
											<input type="file" class="form-control file-upload-info"
												id="fileInput" placeholder="Upload Image" name="image"
												value="${movie.image}">
										</div>
										<p>
											Selected File: <span id="selectedFile">No file
												selected</span>
										</p>

									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">Start Date</label> <input
											type="date" class="form-control" id="exampleInputEmail3"
											name="startDate" value="${movie.startDate}">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">End Date</label> <input
											type="date" class="form-control" id="exampleInputEmail3"
											name="endDate" value="${movie.endDate}">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">Trailer URL</label> <input
											type="text" class="form-control" id="exampleInputEmail3"
											placeholder="Trailer URL" name="urlTrailer"
											value="${movie.urlTrailer}" required minlength="1"
											maxlength="255">
									</div>
									<div class="form-group">
										<label for="exampleSelectGender">status</label> <select
											class="form-control" id="exampleSelectGender" name="status"
											value="${movie.status}">
											<option value="On going">On going</option>
											<option value="Coming soon">Coming soon</option>
											<option value="Over">Over</option>
										</select>
									</div>
									<button type="submit" class="btn btn-primary mr-2">Submit</button>
									<button class="btn btn-dark" onclick="cancelForm()">Cancel</button>
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
	<script
		src="../../../admin_assets/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../admin_assets/assets/js/off-canvas.js"></script>
	<script src="../../../admin_assets/assets/js/hoverable-collapse.js"></script>
	<script src="../../../admin_assets/assets/js/misc.js"></script>
	<script src="../../../admin_assets/assets/js/settings.js"></script>
	<script src="../../../admin_assets/assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<!-- End custom js for this page -->
	<!-- Cancel form-->
	<script type="text/javascript">
    function cancelForm() {
        window.location = '<%=request.getContextPath()%>
		/admin/movies';
		}
	</script>
	<!-- parse text for date-->
	<script>
		// Function to format the date as text
		function formatDate(input) {
			var date = new Date(input.value);
			var options = {year: 'numeric', month: 'long', day: 'numeric'};
			input.value = date.toLocaleDateString(undefined, options);
		}

		// Attach the formatDate function to the input's onchange event
		var startDateInput = document.getElementById("startDate");
		var endDateInput = document.getElementById("endDate");
		startDateInput.addEventListener("change", function () {
			formatDate(this);
		});

		// Format the initial value if there's a date
		if (startDateInput.value) {
			formatDate(startDateInput);
			formatDate(endDateInput);
		}
	</script>

	<style>
input[type="date"] {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: none;
	background-color: transparent;
	/* Style the input field as plain text */
}
</style>

	<!-- input image file-->
	<script>
		function browseFile() {
			document.getElementById('fileInput').click();
		}
		//show name of image
		function displayFileName(input) {
			const fileNameInput = document.getElementById('fileName');
			if (input.files.length > 0) {
				fileNameInput.value = input.files[0].name;
			} else {
				fileNameInput.value = ''; // Clear the input if no file is selected
			}
		}
	</script>

	<script>
    document.getElementById('fileInput').addEventListener('change', function () {
        var selectedFile = document.getElementById('fileInput').files[0];
        document.getElementById('selectedFile').textContent = selectedFile ? selectedFile.name : 'No file selected';
    });
</script>
</body>

</html>