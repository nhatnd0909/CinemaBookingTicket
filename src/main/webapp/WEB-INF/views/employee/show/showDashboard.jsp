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
<title>Corona Show</title>
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
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="/admin_assets/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="/admin_assets/assets/images/favicon.png" />
</head>
<style>
.card-title {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.card-title .room-name {
	margin: 0;
}

.card {
	margin-bottom: 20px;
}

.card-title i {
	font-size: 1.25em;
	color: #000;
}

.card-title .arrow-icon i {
	font-size: 1.25em;
	color: #000;
}

.dropdown-content {
	
	text-align: center; /* Canh giữa nội dung */
}

.dropdown-content a {
	display: inline-block; /* Hiển thị các mục trên cùng một dòng */
	font-size: 1.5em; /* Điều chỉnh kích thước font */
	padding: 10px 50px; /* Điều chỉnh padding */
	text-decoration: none;
	color: #fff;
}

.dropdown-content a.active {
	color: #007bff; /* Màu xanh */
}

.time {
	margin-top: 20px;
	display: flex;
	flex-wrap: wrap;
	margin-left: 270px;
	background:
}

.time-slot {
	display: flex;
	margin: 20px 0;
}

.time-slot a {
	border: 1px solid #fff;
	margin-right: 30px;
	margin-bottom: 10px;
	display: inline-block;
	padding: 10px 20px;
	text-decoration: none;
	color: #fff;
}

.day a {
	border: 1px solid #fff;
	margin-right: 30px;
}

#ngay-mai-time {
	display: none;
}
</style>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="sidebar-brand brand-logo" href="/employee/Dashboard"><img
					src="/admin_assets/assets/images/logo.svg" alt="logo" /></a> <a
					class="sidebar-brand brand-logo-mini" href="/employee/Dashboard"><img
					src="/admin_assets/assets/images/logo-mini.svg" alt="logo" /></a>
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
								<h5 class="mb-0 font-weight-normal">Employe</h5>
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
									<p class="preview-subject ellipsis mb-1 text-small">Account
										settings</p>
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
					href="/employee/Dashboard"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Dashboard</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/service"> <span class="menu-icon"> <i
							class="mdi mdi-cash-usd"></i>
					</span> <span class="menu-title">Service</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/show"> <span class="menu-icon"> <i
							class="mdi mdi-playlist-play"></i>
					</span> <span class="menu-title">Show</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/employee/bookinghistory"> <span class="menu-icon">
							<i class="mdi mdi-account-circle"></i>
					</span> <span class="menu-title">User booking history</span>
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
						<h3 class="page-title">${nameTheater}</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">UI Elements</a></li>
								<li class="breadcrumb-item active" aria-current="page">Dropdowns</li>
							</ol>
						</nav>
					</div>
					<c:forEach items="${listTheaterRoom}" var="theaterRoom">
						<div class="row">
							<div class="col-lg-12 grid-margin">
								<div class="card">
									<div class="card-body">
										<div class="card-title">
											<h2 class="room-name">
												${theaterRoom.name}
												</h4>
												<i class="fas fa-chevron-down" id="dropdown-icon"
													style="color: #fff"></i>
										</div>

										<div class="dropdown-content">
											<div class="day">
												<a href="#" class="active" id="hom-nay">Hôm nay</a> 
									<!-- 			<a href="#" id="ngay-mai">Ngày mai</a> 
												<a href="#" id="ngay-mot">Ngày mốt</a> -->
											</div>

											<div class="time" >
												<div class="time-slot">
													<a href="/employee/show/detail?start=07:00:00&end=10:00:00&date=0&roomID=${theaterRoom.roomID}" style="padding: 10px 31px">7:00 - 10:00</a> 
													<a href="/employee/show/detail?start=10:00:00&end=13:00:00&date=0&roomID=${theaterRoom.roomID}" style="padding: 10px 26px">10:00 - 13:00</a> 
													<a href="/employee/show/detail?start=13:00:00&end=16:00:00&date=0&roomID=${theaterRoom.roomID}" style="padding: 10px 21px">13:00 - 16:00</a>
												</div>
												
												<div class="time-slot">
													<a href="/employee/show/detail?start=16:00:00&end=18:00:00&date=0&roomID=${theaterRoom.roomID}">16:00 - 18:00</a> 
													<a href="/employee/show/detail?start=18:00:00&end=20:00:00&date=0&roomID=${theaterRoom.roomID}">18:00 - 20:00</a> 
													<a href="/employee/show/detail?start=20:00:00&end=22:00:00&date=0&roomID=${theaterRoom.roomID}">20:00 - 22:00</a>
												</div>
											</div>

											<div class="time">
												<div class="time-slot">
													<a href="/employee/show/detail?start=07:00:00&end=10:00:00&date=1&roomID=${theaterRoom.roomID}" style="padding: 10px 31px">7:00 - 10:00</a> 
													<a href="/employee/show/detail?start=10:00:00&end=13:00:00&date=1&roomID=${theaterRoom.roomID}" style="padding: 10px 26px">10:00 - 13:00</a> 
													<a href="/employee/show/detail?start=13:00:00&end=16:00:00&date=1&roomID=${theaterRoom.roomID}" style="padding: 10px 21px">13:00 - 16:00</a>
												</div>
												<div class="time-slot">
													<a href="/employee/show/detail?start=16:00:00&end=18:00:00&date=1&roomID=${theaterRoom.roomID}">16:00 - 18:00</a> 
													<a href="/employee/show/detail?start=18:00:00&end=20:00:00&date=1&roomID=${theaterRoom.roomID}">18:00 - 20:00</a>
													<a href="/employee/show/detail?start=20:00:00&end=22:00:00&date=1&roomID=${theaterRoom.roomID}">20:00 - 22:00</a>
												</div>
											</div>

											<div class="time">
												<div class="time-slot">
													<a href="/employee/show/detail?start=07:00:00&end=10:00:00&date=2&roomID=${theaterRoom.roomID}" style="padding: 10px 31px">7:00 - 10:00</a> 
													<a href="/employee/show/detail?start=10:00:00&end=13:00:00&date=2&roomID=${theaterRoom.roomID}" style="padding: 10px 26px">10:00 - 13:00</a> 
													<a href="/employee/show/detail?start=13:00:00&end=16:00:00&date=2&roomID=${theaterRoom.roomID}" style="padding: 10px 21px">13:00 - 16:00</a>
												</div>
												<div class="time-slot">
													<a href="/employee/show/detail?start=16:00:00&end=18:00:00&date=2&roomID=${theaterRoom.roomID}"">16:00 - 18:00</a> 
													<a href="/employee/show/detail?start=18:00:00&end=20:00:00&date=2&roomID=${theaterRoom.roomID}"">18:00 - 20:00</a>
													<a href="/employee/show/detail?start=20:00:00&end=22:00:00&date=2&roomID=${theaterRoom.roomID}">20:00 - 22:00</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
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
		<!-- <script src="/admin_assets/assets/vendors/chart.js/Chart.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/progressbar.js/progressbar.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="/admin_assets/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="/admin_assets/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script> -->
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
<script>
	/* 
	document.addEventListener('DOMContentLoaded', function() {
		var dropdownIcon = document.getElementById('dropdown-icon');
		var dropdownContent = document.getElementById('dropdown-content');

		dropdownIcon.addEventListener('click', function() {
			if (dropdownContent.style.display === 'none'
					|| dropdownContent.style.display === '') {
				dropdownContent.style.display = 'block';
			} else {
				dropdownContent.style.display = 'none';
			}
		});
	});	
	 */
	/* Xử lí màu */
	document.addEventListener('DOMContentLoaded', function() {
		var links = document.querySelectorAll('.dropdown-content a');

		links.forEach(function(link) {
			link.addEventListener('click', function() {
				// Loại bỏ màu xanh từ tất cả các links
				links.forEach(function(link) {
					link.classList.remove('active');
				});

				// Thêm màu xanh cho link đã được click
				this.classList.add('active');
			});
		});
	});
	/* 	Xử lí suất chiếu */

	/* document.addEventListener('DOMContentLoaded', function() {
	 var links = document.querySelectorAll('.dropdown-content a');

	 links.forEach(function(link) {
	 link.addEventListener('click', function(event) {
	 event.preventDefault(); // Prevent the default behavior of the link

	 // Loại bỏ màu xanh từ tất cả các links
	 links.forEach(function(link) {
	 link.classList.remove('active');
	 });

	 // Thêm màu xanh cho link đã được click
	 this.classList.add('active');

	 // Lấy ID của link đã click
	 var clickedId = this.getAttribute('id');

	 // Ẩn tất cả các khoảng thời gian
	 var allTimeSlots = document.querySelectorAll('.time');
	 allTimeSlots.forEach(function(timeSlot) {
	 timeSlot.style.display = 'none';
	 });

	 // Hiển thị khoảng thời gian tương ứng với ngày đã click
	 var correspondingTimeSlot = document.getElementById(clickedId + '-time');
	 correspondingTimeSlot.style.display = 'block';
	 });
	 });

	 // Ẩn tất cả các khoảng thời gian khi trang được tải lần đầu tiên
	 var allTimeSlots = document.querySelectorAll('.time');
	 allTimeSlots.forEach(function(timeSlot) {
	 timeSlot.style.display = 'none';
	 });
	 }); */
	/* document.addEventListener("DOMContentLoaded", function() {
		// Lấy ra các phần tử cần điều khiển
		var homNayTime = document.getElementById("hom-nay-time");
		var ngayMaiTime = document.getElementById("ngay-mai-time");
		var ngayMotTime = document.getElementById("ngay-mot-time");
		var homNayLink = document.getElementById("hom-nay");
		var ngayMaiLink = document.getElementById("ngay-mai");
		var ngayMotLink = document.getElementById("ngay-mot");

		 Hàm ẩn tất cả các phần tử time
		function hideAllTimes() {
			homNayTime.style.display = "none";
			ngayMaiTime.style.display = "none";
			ngayMotTime.style.display = "none";
		}

		// Sự kiện click vào ngày hôm nay
		homNayLink.addEventListener("click", function(event) {
			event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ a
			hideAllTimes();
			homNayTime.style.display = "block";
		});

		// Sự kiện click vào ngày mai
		ngayMaiLink.addEventListener("click", function(event) {
			event.preventDefault();
			hideAllTimes();
			ngayMaiTime.style.display = "block";
		});

		// Sự kiện click vào ngày mốt
		ngayMotLink.addEventListener("click", function(event) {
			event.preventDefault();
			hideAllTimes();
			ngayMotTime.style.display = "block";
		});
	}); */
</script>