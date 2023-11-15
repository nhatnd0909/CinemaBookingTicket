<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ticket Booking</title>
<link rel="stylesheet" type="text/css"
	href="assets/css/style-starter.css">
<link rel="stylesheet"
	href="https://npmcdn.com/flickity@2/dist/flickity.css">
<link rel="stylesheet" type="text/css" href="assets/css/progress.css">

<link rel="stylesheet" type="text/css"
	href="assets/css/ticket-booking.css">

<!-- ..............For progress-bar............... -->
<link rel="stylesheet" type="text/css" href="assets/css/e-ticket.css">

<link rel="stylesheet" type="text/css" href="assets/css/payment.css" />
<link
	href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700"
	rel="stylesheet">
</head>

<body>
	<header id="site-header" class="w3l-header fixed-top">

		<!--/nav-->
		<nav
			class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1>
					<a class="navbar-brand" href="home"><span
						class="fa fa-play icon-log" aria-hidden="true"></span> MyShowz </a>
				</h1>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				</div>

				<c:if test="${loggedIn eq 0}">
					<div class="Login_SignUp" id="login"
						style="font-size: 2rem; display: inline-block; position: relative;">
						<!-- <li class="nav-item"> -->
						<a class="nav-link" href="signin"><i
							class="fa fa-user-circle-o"></i></a>
						<!-- </li> -->
					</div>
				</c:if>
				<c:if test="${loggedIn eq 1}">
					<div class="Login_SignUp" id="login"
						style="font-size: 2rem; display: inline-block; position: relative;">
						<!-- <li class="nav-item"> -->
						<a class="nav-link" href="history"><i
							class="fa fa-user-circle-o"></i></a>
						<!-- </li> -->
					</div>
						${loggedInAccount.getName()}
						<div style="padding-left: 15px">
						<a href="logout">Logout</a>
					</div>
				</c:if>
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

	<div class="container" id="progress-container-id">
		<div class="row">
			<div class="col">
				<div class="px-0 pt-4 pb-0 mt-3 mb-3">
					<form	 id="form">
						<ul id="progressbar" class="progressbar-class">
							<li class="active" id="step1">Show timing selection</li>
							<li id="step2" class="not_active">Seat Selection</li>
							<li id="step3" class="not_active">Concession Items</li>
							<li id="step4" class="not_active">Payment</li>

						</ul>
						<br>
						<fieldset>
							<div id="screen-select-div">
								<h2>Show time Selection</h2>
								<div class="carousel carousel-nav"
									data-flickity='{"contain": true, "pageDots": false }'>
									<div class="carousel-cell" id="1" onclick="myFunction(1)">
										<div class="date-numeric">${currentDate}</div>
										<div class="date-day">Hôm Nay</div>
									</div>

									<div class="carousel-cell" id="2" onclick="myFunction(2)">
										<div class="date-numeric">${tomorow}</div>
										<div class="date-day">Ngày Mai</div>
									</div>
									<div class="carousel-cell" id="3" onclick="myFunction(3)">
										<div class="date-numeric">${nextDate}</div>
										<div class="date-day">Ngày Mốt</div>
									</div>
								</div>
								<div class="show-currentDate">
									<ul class="time-ul">
										<c:forEach items="${listTRoom}" var="tRoom">
											<li class="time-li">
												<div class="screens">${tRoom.name}</div>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowCurentDate}">
														<c:if
															test="${show.getTheaterRoom().getName() eq tRoom.name}">
															<button class="screen-time selected"
																onclick="timeFunction()">${show.startTime}</button>
														</c:if>
													</c:forEach>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<input id="screen-next-btn" type="button" name="next-step"
								class="next-step" value="Continue Booking" disabled />
						</fieldset>
						<!-- <fieldset>

							<div>
								<iframe id="seat-sel-iframe"
									style="box-shadow: 0 14px 12px 0 var(--theme-border), 0 10px 50px 0 var(--theme-border); width: 800px; height: 550px; display: block; margin-left: auto; margin-right: auto;"
									src="/seat_sel"></iframe>
							</div>

							<br> <input type="button" name="next-step" class="next-step"
								value="Concession Items"> <input type="button"
								name="previous-step" class="previous-step" value="Back" />
						</fieldset> -->
						<fieldset>
							<table>
								<tr>
									<th>Image</th>
									<th>Name</th>
									<th>Unit Price</th>
									<th>Quantity</th>
									<th>Subtotal</th>
								</tr>
								<c:forEach items="${listService}" var="service" varStatus="loop">
									<tr class="product-row">
										<td><img class="food-image" src="assets/images/${service.urlImageService}" alt="${service.name}"></td>
										<td id="selectedProductName_${loop.index}">${service.name}size${service.size}</td>
										<td id="selectedUnitPrice_${loop.index}">$ ${service.price}</td>
										<!-- Trong file JSP: -->
										<td class="quantity" id="selectedQuantity_${loop.index}">
											<button onclick="decrementQuantity(this, ${loop.index})" class="decrement-button">-</button>
											<span>0</span>
											<button onclick="incrementQuantity(this, ${loop.index})" class="increment-button">+</button>
										</td>

										<td class="subtotal" id="selectedSubtotal_${loop.index}" data-subtotal="${service.price}">$0.00</td>

									</tr>
								</c:forEach>
							</table>
							<div class="total-money">
								Total money: <span id="total">0.00</span>
							</div>
							<br> <input type="button" name="next-step" class="next-step"
								value="Proceed to Payment" /> <input type="button"
								name="previous-step" class="previous-step" value="Back" />

						</fieldset>
						<fieldset>
							<div id="payment_div">
								<div class="payment-container">
									<h3 id="payment-h3">Xác nhận thanh toán</h3>
									<h4>Tên phim: ${movie}</h4>	
									<h5>Rạp chiếu: ${theater}</h5>
										<div style="padding-top: 2%;">
											<table>
												<tr>
													<th>Image</th>
													<th>Name</th>
													<th>Unit Price</th>
													<th>Quantity</th>
													<th>Subtotal</th>
												</tr>
											</table>
										</div>
						
										<div class="total-money">
											Tổng Tiền: <span id="total-money"></span>
										</div>
									</div>
								</div>
								<input type="submit" name="submitPayment" class="next-step pay-btn" value="Confirm Payment"/>						
								<input type="button" name="previous-step" class="cancel-pay-btn" value="Cancel Payment" onclick="location.href='home';"/>
						</fieldset>


						<fieldset>
							<!-- Payment Page -->
							<div id="payment_div13">
								<div class="payment-row">
									<div class="col-75">
										<div class="payment-container">
											<div class="payment-row">
												<div class="col-50">
													<h3 id="payment-h3">Payment</h3>
													<div class="payment-row payment">
														<div class="col-50 payment">
															<label for="card" class="method card">
																<div class="icon-container">
																	<i class="fa fa-cc-visa" style="color: navy"></i> <i
																		class="fa fa-cc-amex" style="color: blue"></i> <i
																		class="fa fa-cc-mastercard" style="color: red"></i> <i
																		class="fa fa-cc-discover" style="color: orange"></i>
																</div>
																<div class="radio-input">
																	<input type="radio" id="card" /> Pay RS.200.00 with
																	credit card
																</div>
															</label>
														</div>
														<div class="col-50 payment">
															<label for="paypal" class="method paypal">
																<div class="icon-container">
																	<i class="fa fa-paypal" style="color: navy"></i>
																</div>
																<div class="radio-input">
																	<input id="paypal" type="radio" checked> Pay
																	$30.00 with PayPal
																</div>
															</label>
														</div>
													</div>

													<div class="payment-row">
														<div class="col-50">
															<label for="cname">Cardholder's Name</label> <input
																type="text" id="cname" name="cardname"
																placeholder="Firstname Lastname" required />
														</div>
														<div class="col-50">
															<label for="ccnum">Credit card number</label> <input
																type="text" id="ccnum" name="cardnumber"
																placeholder="xxxx-xxxx-xxxx-xxxx" required />
														</div>
													</div>
													<div class="payment-row">
														<div class="col-50">
															<label for="expmonth">Exp Month</label> <input
																type="text" id="expmonth" name="expmonth"
																placeholder="September" required />
														</div>
														<div class="col-50">
															<div class="payment-row">
																<div class="col-50">
																	<label for="expyear">Exp Year</label> <input
																		type="text" id="expyear" name="expyear"
																		placeholder="yyyy" required />
																</div>
																<div class="col-50">
																	<label for="cvv">CVV</label> <input type="text"
																		id="cvv" name="cvv" placeholder="xxx" required />
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
							<input type="button" name="next-step" class="next-step pay-btn"
								value="Confirm Payment" /> <input type="button"
								name="previous-step" class="cancel-pay-btn"
								value="Cancel Payment" onclick="location.href='home';" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		let prevId = "1";

		window.onload = function() {
			document.getElementById("screen-next-btn").disabled = true;
		}

		function timeFunction() {
			document.getElementById("screen-next-btn").disabled = false;
		}


		/* 		function myFunction(id) {
		 document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
		 document.getElementById(id).style.background = "#df0e62";
		 prevId = id;
		 } */
		function myFunction(id) {
			document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
			document.getElementById(id).style.background = "#df0e62";
			prevId = id;
			// Hide all sections
			document.querySelector('.show-currentDate').style.display = 'none';
			document.querySelector('.show-tomorowDate').style.display = 'none';
			document.querySelector('.show-nextDate').style.display = 'none';

			// Show the selected section based on the clicked ID
			if (id === 1) {
				document.querySelector('.show-currentDate').style.display = 'block';
			} else if (id === 2) {
				document.querySelector('.show-tomorowDate').style.display = 'block';
			} else if (id === 3) {
				document.querySelector('.show-nextDate').style.display = 'block';
			}

			// Additional logic if needed
		}
	</script>

	<script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
	<script type="text/javascript"
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
		
	</script>
	<script type="text/javascript"
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<script src="assets/js/theme-change.js"></script>

	<script type="text/javascript" src="assets/js/ticket-booking.js"></script>
	<script type="text/javascript" src="assets/js/concession-items.js"></script>
	<script>
		function updateSecondTable() {
			$("#payment_div table tr:gt(0)").remove(); // Xóa các hàng trừ hàng đầu tiên
			var total = 0;
	
			$(".product-row").each(function(index) {
				var quantity = parseInt($(this).find(".quantity span").text());
	
				if (quantity > 0) {
					var clonedRow = $(this).clone();
					clonedRow.appendTo("#payment_div table");
	
					clonedRow.find("[id^='selected']").each(function() {
						var id = $(this).attr("id") + "_" + index;
						$(this).attr("id", id);
					});
	
					var subtotalId = "selectedSubtotal_" + index;
					var unitPriceId = "selectedUnitPrice_" + index;
	
					var subtotal = parseFloat($("#" + subtotalId).attr("data-subtotal")) || 0;
					var unitPrice = parseFloat($("#" + unitPriceId).text().replace('$', '')) || 0;
	
					var totalForRow = subtotal * quantity;
					total += totalForRow;
					
					$("#" + subtotalId).text('$' + totalForRow.toFixed(2));
					clonedRow.find(".quantity button").hide();
				}
			});
	
			$("#total-money").text('$' + total.toFixed(2));
		}
	
		$(".next-step").click(function() {
			updateSecondTable();
		});
	</script>
	

</body>
</html>