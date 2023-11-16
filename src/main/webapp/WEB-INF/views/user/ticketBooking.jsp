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

<link rel="stylesheet" type="text/css" href="assets/css/seat-ticket.css" />
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
					<form id="form">
						<ul id="progressbar" class="progressbar-class">
							<li class="active" id="step1">Show timing selection</li>
							<li id="step2" class="not_active">Seat Selection</li>
							<li id="step3" class="not_active">Concession Items</li>
							<li id="step4" class="not_active">Payment</li>
							<li id="step5" class="not_active">E-Ticket</li>

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
								<div class="show-tomorowDate" style="display: none">
									<ul class="time-ul">
										<c:forEach items="${listTRoom}" var="tRoom">
											<li class="time-li">
												<div class="screens">${tRoom.name}</div>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowTomorowDate}">
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
								<div class="show-nextDate" style="display: none">
									<ul class="time-ul">
										<c:forEach items="${listTRoom}" var="tRoom">
											<li class="time-li">
												<div class="screens">${tRoom.name}</div>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowNextDate}">
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
						<fieldset>

							<div class="wrapper">
								<h2>Seat Booking</h2>
								<div class="theater">
									<div class="wrapper-left-number">
										<div class="row">
											<div class="seat">1</div>
											<div class="seat">2</div>
											<div class="seat">3</div>
											<div class="seat">4</div>
											<div class="seat">5</div>
											<div class="seat">6</div>
											<div class="seat">7</div>
											<div class="seat">8</div>
											<div class="seat">9</div>
											<div class="seat">10</div>
										</div>
									</div>
									<div class="wrapper-left">
										<div class="screen">SCREEN</div>

										<div class="row content-row">
											<div class="seat">A</div>
											<div class="seat">B</div>
											<div class="seat">C</div>
											<div class="seat">D</div>
											<div class="seat">E</div>
											<div class="seat">F</div>
											<div class="seat">G</div>
											<div class="seat">H</div>
											<div class="seat">I</div>
											<div class="seat">J</div>
										</div>

										<div class="row">
											<div class="seat">A1</div>
											<div class="seat">B1</div>
											<div class="seat">C1</div>
											<div class="seat">D1</div>
											<div class="seat">E1</div>
											<div class="seat">F1</div>
											<div class="seat">G1</div>
											<div class="seat">H1</div>
											<div class="seat">I1</div>
											<div class="seat">J1</div>
										</div>
										<div class="row">
											<div class="seat">A2</div>
											<div class="seat">B2</div>
											<div class="seat">C2</div>
											<div class="seat">D2</div>
											<div class="seat">E2</div>
											<div class="seat">F2</div>
											<div class="seat">G2</div>
											<div class="seat">H2</div>
											<div class="seat">I2</div>
											<div class="seat">J2</div>
										</div>
										<div class="row">
											<div class="seat">A3</div>
											<div class="seat">B3</div>
											<div class="seat">C3</div>
											<div class="seat">D3</div>
											<div class="seat">E3</div>
											<div class="seat unavailable" id="F3">F3</div>
											<div class="seat unavailable" id="G3">G3</div>
											<div class="seat">H3</div>
											<div class="seat">I3</div>
											<div class="seat">J3</div>
										</div>
										<div class="row">
											<div class="seat">A4</div>
											<div class="seat">B4</div>
											<div class="seat">C4</div>
											<div class="seat">D4</div>
											<div class="seat">E4</div>
											<div class="seat">F4</div>
											<div class="seat">G4</div>
											<div class="seat">H4</div>
											<div class="seat">I4</div>
											<div class="seat">J4</div>
										</div>
										<div class="row">
											<div class="seat">A5</div>
											<div class="seat">B5</div>
											<div class="seat">C5</div>
											<div class="seat">D5</div>
											<div class="seat">E5</div>
											<div class="seat">F5</div>
											<div class="seat">G5</div>
											<div class="seat">H5</div>
											<div class="seat">I5</div>
											<div class="seat">J5</div>
										</div>
										<div class="row">
											<div class="seat">A6</div>
											<div class="seat">B6</div>
											<div class="seat">C6</div>
											<div class="seat">D6</div>
											<div class="seat">E6</div>
											<div class="seat">F6</div>
											<div class="seat">G6</div>
											<div class="seat">H6</div>
											<div class="seat">I6</div>
											<div class="seat">J6</div>
										</div>
										<div class="row">
											<div class="seat">A7</div>
											<div class="seat">B7</div>
											<div class="seat">C7</div>
											<div class="seat">D7</div>
											<div class="seat">E7</div>
											<div class="seat">F7</div>
											<div class="seat">G7</div>
											<div class="seat">H7</div>
											<div class="seat">I7</div>
											<div class="seat">J7</div>
										</div>
										<div class="row">
											<div class="seat">A8</div>
											<div class="seat">B8</div>
											<div class="seat">C8</div>
											<div class="seat">D8</div>
											<div class="seat">E8</div>
											<div class="seat">F8</div>
											<div class="seat">G8</div>
											<div class="seat">H8</div>
											<div class="seat">I8</div>
											<div class="seat">J8</div>
										</div>
										<div class="row">
											<div class="seat">A9</div>
											<div class="seat">B9</div>
											<div class="seat">C9</div>
											<div class="seat">D9</div>
											<div class="seat">E9</div>
											<div class="seat">F9</div>
											<div class="seat">G9</div>
											<div class="seat">H9</div>
											<div class="seat">I9</div>
											<div class="seat">J9</div>
										</div>
										<div class="row">
											<div class="seat">A10</div>
											<div class="seat">B10</div>
											<div class="seat">C10</div>
											<div class="seat">D10</div>
											<div class="seat">E10</div>
											<div class="seat">F10</div>
											<div class="seat">G10</div>
											<div class="seat">H10</div>
											<div class="seat">I10</div>
											<div class="seat">J10</div>
										</div>
									</div>
									<div class="wrapper-right">
										<div class="booking-details">
											<table class="table">
												<tbody class="custom-table">
													<tr>
														<th>Movie</th>
														<td>: Kingdom of the Planet of the Apes</td>
													</tr>
													<tr>
														<th>Time</th>
														<td>: April</td>
													</tr>
													<tr>
														<th>Tickets</th>
														<td>: 0</td>
													</tr>
													<tr>
														<th>Total</th>
														<td>: A1</td>
													</tr>
													<tr>
														<th>Selected Seats</th>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="seatCharts">
											<input type="text" id="selectedSeats" class="value_seats"
												readonly>
										</div>
										<div class="display_seat">
											<div style="display: flex;">
												<div class="square"></div>
												<p>Còn trống</p>
											</div>
											<div style="display: flex;">
												<div class="squareR"></div>
												<p>Đã bán</p>
											</div>
											<div style="display: flex;">
												<div class="squareG"></div>
												<p>Đã chọn</p>
											</div>
											<div style="display: flex;">
												<div class="squareY"></div>
												<p>Ghế vip</p>
											</div>
										</div>
									</div>

								</div>
							</div>

							<br> <input type="button" name="next-step" class="next-step"
								value="Concession Items"> <input type="button"
								name="previous-step" class="previous-step" value="Back" />
						</fieldset>
						<fieldset>
							<!-- Concession Items Page -->
							<table>
								<tr>
									<th>Image</th>
									<th>Name</th>
									<th>Unit Price</th>
									<th>Quantity</th>
									<th>Subtotal</th>
								</tr>
								<c:forEach items="${listService}" var="service">
									<tr>
										<td><img class="food-image"
											src="/assets/images/${service.urlImageService}"
											alt="${service.name}"></td>
										<td>${service.name}size${service.size}</td>
										<td>$${service.price}</td>
										<td class="quantity">
											<button onclick="decrementQuantity(this)">-</button> <span>0</span>
											<button onclick="incrementQuantity(this)">+</button>
										</td>
										<td>$0.00</td>
									</tr>
								</c:forEach>


								<!-- Thêm các hàng cho các món ăn và đồ uống khác -->
							</table>
							<div class="total-money">
								Total money: <span id="total">0.00</span>
							</div>
							<br> <input type="button" name="next-step" class="next-step"
								value="Proceed to Payment" /> <input type="button"
								name="previous-step" class="previous-step" value="Back" />

						</fieldset>



						<fieldset>
							<!-- Payment Page -->
							<div id="payment_div">
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
						<fieldset>
							<h2>E-Ticket</h2>
							<div class="ticket-body">
								<div class="ticket">
									<div class="holes-top"></div>
									<div class="title">
										<p class="cinema">MyShowz Entertainment</p>
										<p class="movie-title">Movie Name</p>
									</div>
									<div class="poster">
										<img
											src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/25240/only-god-forgives.jpg"
											alt="Movie: Only God Forgives" />
									</div>
									<div class="info">
										<table class="info-table ticket-table">
											<tr>
												<th>SCREEN</th>
												<th>ROW</th>
												<th>SEAT</th>
											</tr>
											<tr>
												<td class="bigger">18</td>
												<td class="bigger">H</td>
												<td class="bigger">24</td>
											</tr>
										</table>
										<table class="info-table ticket-table">
											<tr>
												<th>PRICE</th>
												<th>DATE</th>
												<th>TIME</th>
											</tr>
											<tr>
												<td>RS.12.00</td>
												<td>4/13/21</td>
												<td>19:30</td>
											</tr>
										</table>
									</div>
									<div class="holes-lower"></div>
									<div class="serial">
										<table class="barcode ticket-table">
											<tr>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
												<td style="background-color: black;"></td>
												<td style="background-color: white;"></td>
											</tr>
										</table>
										<table class="numbers ticket-table">
											<tr>
												<td>9</td>
												<td>1</td>
												<td>7</td>
												<td>3</td>
												<td>7</td>
												<td>5</td>
												<td>4</td>
												<td>4</td>
												<td>4</td>
												<td>5</td>
												<td>4</td>
												<td>1</td>
												<td>4</td>
												<td>7</td>
												<td>8</td>
												<td>7</td>
												<td>3</td>
												<td>4</td>
												<td>1</td>
												<td>4</td>
												<td>5</td>
												<td>2</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<input type="button" name="previous-step" class="home-page-btn"
								value="Browse to Home Page" onclick="location.href='home';" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
        document.addEventListener('DOMContentLoaded', function() {
            // Get all seat elements
            var seatElements = document.querySelectorAll('.seat');
            // Get the Tickets element
            var ticketsElement = document.querySelector('.booking-details tbody tr:nth-child(3) td');
            // Get the Total element
            var totalElement = document.querySelector('.booking-details tbody tr:nth-child(4) td');

            // Initialize the ticket count and total cost
            var ticketCount = 0;
            var totalCost = 0;

            // Get the selected seats input field
            var selectedSeatsInput = document.getElementById('selectedSeats');
            
            // Add click event listener to each seat
            seatElements.forEach(function(seat) {
                seat.addEventListener('click', function() {
                    // Check if the seat is not unavailable
                    if (!seat.classList.contains('unavailable')) {
                        // Toggle selected class
                        seat.classList.toggle('selected');

                        // Update ticket count
                        ticketCount = document.querySelectorAll('.selected').length;

                        // Update total cost
                        totalCost = ticketCount * 50000; // Assuming each seat costs 50,000

                        // Update the Tickets and Total elements
                        ticketsElement.textContent = ': ' + ticketCount;
                        totalElement.textContent = ': ' + totalCost.toLocaleString('en-US'); // Display total cost with commas

                        // Get the selected seats
                        var selectedSeats = document.querySelectorAll('.selected');

                        // Update the input field with the selected seats
                        var selectedSeatsText = Array.from(selectedSeats).map(function(selectedSeat) {
                            return selectedSeat.textContent;
                        }).join(', ');

                        selectedSeatsInput.value = selectedSeatsText;
                    }
                });
            });
        });
    </script>
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
</body>
</html>