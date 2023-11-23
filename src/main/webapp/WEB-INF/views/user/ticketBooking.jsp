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
						<a href="logout">Đăng Xuất</a>
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
					<form id="form" method="post" action="submitOrder">
						<input name="showID" value="" hidden=""> <input
							name="socid" type="text" value="" hidden="">

						<ul id="progressbar" class="progressbar-class">
							<li class="active" id="step1">Chọn Giờ Chiếu</li>
							<li id="step2" class="not_active">Chọn Ghế Ngồi</li>
							<li id="step3" class="not_active">Đồ Ăn và Đồ Uống</li>
							<li id="step4" class="not_active">Xác Nhận</li>

						</ul>
						<fieldset>
							<div id="screen-select-div">
								<h2>Show time Selection</h2>
								<div class="carousel carousel-nav"
									data-flickity='{"contain": true, "pageDots": false }'>
									<div class="carousel-cell" id="1" data-date="${currentDate}"
										onclick="myFunction(1)">
										<div class="date-numeric">${currentDate}</div>
										<div class="date-day" id="dayOfWeek1"></div>
									</div>
									<div class="carousel-cell" id="2" data-date="${tomorow}"
										onclick="myFunction(2)">
										<div class="date-numeric">${tomorow}</div>
										<div class="date-day" id="dayOfWeek2"></div>
									</div>

									<div class="carousel-cell" id="3" data-date="${nextDate}"
										onclick="myFunction(3)">
										<div class="date-numeric">${nextDate}</div>
										<div class="date-day" id="dayOfWeek3"></div>
									</div>

									<div class="carousel-cell" id="4"
										data-date="${futureDate3Days}" onclick="myFunction(4)">
										<div class="date-numeric">${futureDate3Days}</div>
										<div class="date-day" id="dayOfWeek4"></div>
									</div>

									<div class="carousel-cell" id="5"
										data-date="${futureDate4Days}" onclick="myFunction(5)">
										<div class="date-numeric">${futureDate4Days}</div>
										<div class="date-day" id="dayOfWeek5"></div>
									</div>
								</div>

								<div class="show-currentDate">
									<ul class="time-ul">
										<c:forEach items="${listTRoom}" var="tRoom">
											<li class="time-li">
												<div class="screens">${tRoom.name}</div>
												<h3 style="display: none;">${tRoom.roomID}</h3>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowCurentDate}">
														<c:if
															test="${show.getTheaterRoom().getName() eq tRoom.name}">
															<input type="button" class="screen-time selected"
																onclick="timeFunction(event)" value="${show.startTime}">
															<h5 style="display: none" id="showID">${show.showID}</h5>
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
												<h3 style="display: none;">${tRoom.roomID}</h3>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowTomorowDate}">
														<c:if
															test="${show.getTheaterRoom().getName() eq tRoom.name}">
															<input type="button" class="screen-time selected"
																onclick="timeFunction(event)" value="${show.startTime}">
															<h5 style="display: none" id="showID">${show.showID}</h5>
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
												<h3 style="display: none;">${tRoom.roomID}</h3>
												<div class="time-btn">
													<c:forEach var="show" items="${listShowNextDate}">
														<c:if
															test="${show.getTheaterRoom().getName() eq tRoom.name}">
															<input type="button" class="screen-time selected"
																onclick="timeFunction(event)" value="${show.startTime}">
															<h5 style="display: none" id="showID">${show.showID}</h5>
														</c:if>
													</c:forEach>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="show-tomorowDate-futureDateDays"
								style="display: none">
								<ul class="time-ul" style="">
									<h7> <b>Chưa có lịch chiếu cho ngày này. Hãy quay lại
										sau. Xin cám ơn!</b></h7>
								</ul>
							</div>
							<input name="roomID" type="text">
							<input id="screen-next-btn" type="button" name="next-step"
								class="next-step" value="Tiếp tục" disabled />
						</fieldset>
						<fieldset>
							<div class="wrapper">
								<h2>Chọn Ghế Ngồi</h2>
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
										<div class="screen">MÀN HÌNH</div>

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

										<!-- unavailable -->
										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 1 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>
										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 2 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 3 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 4 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 5 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 6 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 7 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 8 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 9 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>

										<div class="row">
											<c:forEach var="seatOfCinema" items="${listSOC}">
												<c:if
													test="${seatOfCinema.seat.row eq 10 and seatOfCinema.theaterRoom.roomID eq roomID}">
													<c:choose>
														<c:when
															test="${listSeatOrder.contains(seatOfCinema.seat.name)}">
															<!-- Seat is in the listSeatOrder -->
															<div class="seat unavailable"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:when>
														<c:otherwise>
															<!-- Seat is not in the listSeatOrder -->
															<div class="seat"
																onclick="updateSocId('${seatOfCinema.socID}')">${seatOfCinema.seat.name}</div>
															<h6 class="price-seat" id="seatPrice"
																style="display: none;">${seatOfCinema.seat.price.setScale(0, 3)}</h6>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
										</div>
									</div>
									<div class="wrapper-right">
										<div class="booking-details">
											<table class="table">
												<tbody class="custom-table">
													<tr>
														<th>Phim</th>
														<td>: ${movie}</td>
													</tr>
													<tr>
														<th>Ngày:</th>
														<td id="selectedDate">:</td>
													</tr>
													<tr>
														<th>Thời Gian</th>
														<td id="selectedTime">:</td>
													</tr>
													<tr>
														<th>Vé</th>
														<td>: 0</td>
													</tr>
													<tr>
														<th>Chỗ Ngồi Đã Chọn</th>
														<td id="seats">:</td>
													</tr>
													<tr>
														<th>Tổng</th>
														<td id="totalseat"></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="seatCharts">
											<input name="seat" type="text" id="selectedSeats"
												class="value_seats" readonly>
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
										</div>
									</div>

								</div>
							</div>

							<br> <input type="button" name="next-step" class="next-step"
								value="Đồ Ăn và Đồ Uống"> <input type="button"
								name="previous-step" class="previous-step" value="Back" />
						</fieldset>
						<fieldset>
							<table>
								<tr>
									<th>Hình ảnh</th>
									<th>Tên</th>
									<th>Đơn giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
								</tr>

								<c:forEach items="${listService}" var="service" varStatus="loop">
									<tr class="product-row">
										<td><img class="food-image"
											src="assets/images/${service.urlImageService}"
											alt="${service.name}"></td>

										<td class="serviceName" id="selectedProductName_${loop.index}">${service.name}size${service.size}</td>
										<td id="selectedUnitPrice_${loop.index}"
											class="formatted-price">${service.price.setScale(0, 3)}
										</td>
										<!-- Trong file JSP: -->
										<td class="quantity" id="selectedQuantity_${loop.index}">
											<input onclick="decrementQuantity(this, ${loop.index})"
											class="decrement-button" value="-"> <span>0</span> <input
											onclick="incrementQuantity(this, ${loop.index})"
											class="increment-button" value="+">
										</td>

										<td class="subtotal" id="selectedSubtotal_${loop.index}"
											data-subtotal="${service.price.setScale(0, 3)}"></td>

									</tr>
								</c:forEach>
							</table>
							<div class="total-money">
								Total money: <span id="total">0.00</span>
							</div>
							<br> <input type="button" name="next-step" class="next-step"
								value="Tiếp tục Thanh Toán" /> <input type="button"
								name="previous-step" class="previous-step" value="Back" />

						</fieldset>
						<fieldset>
							<div id="payment_div">
								<div class="payment-container">
									<h3 id="payment-h3">Xác nhận thanh toán</h3>
									<h4>Tên phim: ${movie}</h4>
									<h5>Rạp chiếu: ${theater}</h5>
									<p id="displayDate"></p>
									<p id="displayTime"></p>
									<p style="font-size: 20px;"></p>
									<p id="total-movie" style="font-size: 20px;"></p>
									<div style="padding-top: 2%;">
										<table>
											<tr>
												<th>Hình ảnh</th>
												<th>Tên</th>
												<th>Đơn giá</th>
												<th>Số lượng</th>
												<th>Thành tiền</th>
											</tr>
										</table>
									</div>
									<div class="combined"></div>
									<div class="total-money">
										<c:if test="${loggedIn == 1}">
											<c:if test="${discount > 0.0}">
												Giảm giá: <span id="discount">${discount}%</span>
												<br>
											</c:if>
										</c:if>
										Tổng Tiền: <span id="total-money"></span> <input type="text"
											name="totalmoney" id="inputtotal" value="" hidden>
									</div>
								</div>
							</div>
							<input type="submit" name="submitPayment"
								class="next-step pay-btn" value="Xác nhận Thanh toán" /> <input
								type="button" name="previous-step" class="cancel-pay-btn"
								value="Cancel Payment" onclick="location.href='home';" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		var currentDate = new Date();
		var tomorrow = new Date();
		tomorrow.setDate(currentDate.getDate() + 1);
		var nextDate = new Date();
		nextDate.setDate(currentDate.getDate() + 2);
		var futureDate3Days = new Date();
		futureDate3Days.setDate(currentDate.getDate() + 3);
		var futureDate4Days = new Date();
		futureDate4Days.setDate(currentDate.getDate() + 4);
		var daysOfWeek = ["Chủ Nhật", "Thứ Hai", "Thứ Ba", "Thứ Tư", "Thứ Năm", "Thứ Sáu", "Thứ Bảy"];
		document.getElementById("dayOfWeek1").innerHTML = daysOfWeek[currentDate.getDay()];
		document.getElementById("dayOfWeek2").innerHTML = daysOfWeek[tomorrow.getDay()];
		document.getElementById("dayOfWeek3").innerHTML = daysOfWeek[nextDate.getDay()];
		document.getElementById("dayOfWeek4").innerHTML = daysOfWeek[futureDate3Days.getDay()];
		document.getElementById("dayOfWeek5").innerHTML = daysOfWeek[futureDate4Days.getDay()];
	</script>
	<script>
               document.addEventListener('DOMContentLoaded', function () {
                var selectedSeats = [];
				var seatPriceElement = document.getElementById('seatPrice');
  				var seatPriceText = seatPriceElement.textContent || seatPriceElement.innerText;
				var seatPrice = parseFloat(seatPriceText.replace(/[^0-9]/g, ''));
                var seats = document.querySelectorAll('.seat');
                seats.forEach(function (seat) {
                    seat.addEventListener('click', function () {
                        // Kiểm tra xem ghế có sẵn không
                        if (!seat.classList.contains('unavailable')) {
                            // Kiểm tra xem ghế đã chọn hay chưa
                            if (!seat.classList.contains('selected')) {
                                // Thêm ghế vào danh sách ghế đã chọn và đánh dấu ghế trên giao diện
                                selectedSeats.push(seat.innerText);
                                seat.classList.add('selected');
                            } else {
                                // Nếu ghế đã chọn, loại bỏ khỏi danh sách và bỏ chọn nó trên giao diện
                                selectedSeats = selectedSeats.filter(function (s) {
                                    return s !== seat.innerText;
                                });
                                seat.classList.remove('selected');
                            }

                            // Hiển thị danh sách ghế đã chọn vào ô input
                            document.getElementById('selectedSeats').value = selectedSeats.join(',');
                            
                            // Cập nhật thông tin trên bảng thông tin đặt vé
                            document.querySelector('.custom-table tr:nth-child(4) td').innerText = ': ' + selectedSeats.length;
                            document.querySelector('.custom-table tr:nth-child(5) td').innerText = ': ' + selectedSeats.join(',');

                            // Tính toán và hiển thị tổng giá vé
                            var total = selectedSeats.length * seatPrice;
                            var formattedTotal = new Intl.NumberFormat('vi-VN').format(total);
                            document.querySelector('.custom-table tr:nth-child(6) td').innerText = ': ' + formattedTotal;
                        }
                    });
                });
            });

     </script>

	<script>
        let prevId = "1";

        window.onload = function() {
            document.getElementById("screen-next-btn").disabled = true;
			myFunction(1);
        }

        function timeFunction(event) {
			var selectedTime = event.target.value;
			console.log(selectedTime);
			document.getElementById("selectedTime").innerHTML = ": " + selectedTime;
			var roomID = event.target.closest('.time-li').querySelector('h3').textContent;
			console.log(roomID);
			document.querySelector('input[name="roomID"]').value = roomID;

			document.getElementById("screen-next-btn").disabled = false;
		}

         function myFunction(id) {
            document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
            document.getElementById(id).style.background = "#df0e62";
            prevId = id;
                    // Hide all sections
			var selectedDate = document.getElementById(id).dataset.date;
			document.getElementById("selectedDate").innerHTML = ": " + selectedDate;
            document.querySelector('.show-currentDate').style.display = 'none';
            document.querySelector('.show-tomorowDate').style.display = 'none';
            document.querySelector('.show-nextDate').style.display = 'none';
			document.querySelector('.show-tomorowDate-futureDateDays').style.display = 'none';
			document.querySelector('.next-step').style.display = 'block';

            if (id === 1) {
                document.querySelector('.show-currentDate').style.display = 'block';
            } else if (id === 2) {
                document.querySelector('.show-tomorowDate').style.display = 'block';
            } else if (id === 3) {
                 document.querySelector('.show-nextDate').style.display = 'block';
            }
			else if (id === 4) {
                 document.querySelector('.show-tomorowDate-futureDateDays').style.display = 'block';
				 document.querySelector('.next-step').style.display = 'none';
            }
			else if (id === 5) {
                 document.querySelector('.show-tomorowDate-futureDateDays').style.display = 'block';
				 document.querySelector('.next-step').style.display = 'none';
            }
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
		$(".next-step").one("click", function () {
			var selectedSeatsText = $("#seats").text();
			var total_movie_str = $("#totalseat").text().trim().replace(/[$:]/g, '');
			var stringWithoutCommas = total_movie_str.replace(/\./g, '');
			var total_movie = parseFloat(stringWithoutCommas) || 0;
			var discountPercentage = parseFloat($("#discount").text()) || 0;
			
			updateSecondTable();
			var total = parseFloat($("#total-money").text().replace(/\D/g, '')) || 0;
			var discountedTotal = total_movie - (total_movie * discountPercentage );
			console.log(discountedTotal);
			total += discountedTotal;
			$("#total-money").text(total.toLocaleString('vi-VN'));
			$("#payment_div p:nth-child(6)").text('Ghế' + selectedSeatsText);
			$("#payment_div p:nth-child(7)").text('Tổng tiền ghế' + total_movie_str);
	
			copyValueToInput();
		});
	
		function updateSecondTable() {
			$("#payment_div table tr:gt(0)").remove();
			var total = 0;
			var total_movie = parseFloat($("#total-movie").text().replace()) || 0;
			
			var combinedValues = "";
			var selectedProducts = {};

			$(".product-row").each(function () {
				var selectedQuantity = parseInt($(this).find(".quantity span").text());
				var serviceName = $(this).find(".serviceName").text();

				if (selectedQuantity > 0 && !selectedProducts[serviceName]) {
					combinedValues += serviceName + "+" + selectedQuantity + ",";
					selectedProducts[serviceName] = true;
				}
			});

			combinedValues = combinedValues.replace(/,$/, "");
			var clonedInputCombined = $("<input>").attr({
				type: "text",
				name: "order",  
				class: "cloned-quantity copied-quantity",
				value: combinedValues
			});
			$(".combined").empty();

			clonedInputCombined.appendTo(".combined");


			$(".product-row").each(function (index) {
				var quantity = parseInt($(this).find(".quantity span").text());

				if (quantity > 0) {
					var clonedRow = $(this).clone();
					clonedRow.appendTo("#payment_div table");

					clonedRow.find("[id^='selected']").each(function () {
						var id = $(this).attr("id") + "_" + index;
						$(this).attr("id", id);
					});

					var subtotalId = "selectedSubtotal_" + index;
					var unitPriceId = "selectedUnitPrice_" + index;
					var subtotal = parseFloat($("#" + subtotalId).attr("data-subtotal")) || 0;
					var unitPrice = parseFloat($("#" + unitPriceId).text().replace()) || 0;
					var totalForRow = subtotal * quantity;
					total += totalForRow;

					$("#" + subtotalId).text(+ totalForRow.toFixed(2));
					clonedRow.find(".quantity input").hide();
					clonedRow.find(".quantity span").show();
					clonedRow.find(".quantity input").val("");
					clonedRow.find(".quantity").val(quantity);
				}
			});

			var discountPercentage = parseFloat($("#discount").text()) || 0;
			var discountedTotal = total - (total * discountPercentage);
			$("#total-money").text(+ discountedTotal.toFixed(2));
			// $("#total-money").text(+ total.toFixed(2));
		}
	
		function copyValueToInput() {
			var totalMoneySpan = document.getElementById('total-money');
			var totalMoneyValue = totalMoneySpan.innerText.replace(/\D/g, '');
	
			var inputTotal = document.getElementById('inputtotal');
			inputTotal.value = totalMoneyValue;

			var selectedDate = document.getElementById("selectedDate").textContent;
			var selectedTime = document.getElementById("selectedTime").textContent;
			document.getElementById("displayDate").innerHTML = "Ngày " +selectedDate;
			document.getElementById("displayTime").innerHTML = "Thời gian " + selectedTime;
		}
	</script>


	<script type="text/javascript">
	 document.addEventListener('DOMContentLoaded', function() {
	        // Lấy tất cả các phần tử có class "screen-time selected"
	        var buttons = document.querySelectorAll('.screen-time.selected');

	        // Duyệt qua từng nút và thêm sự kiện click
	        buttons.forEach(function(button) {
	            button.addEventListener('click', function() {
	                // Lấy giá trị của thẻ h5 có id="showID"
	                var showID = this.nextElementSibling.textContent;

	                // Cập nhật giá trị của trường input có name="showID"
	                document.querySelector('input[name="showID"]').value = showID;

	                // Gọi hàm timeFunction() nếu bạn muốn thực hiện thêm các thao tác khác
	                timeFunction();
	            });
	        });
	    });
	</script>

	<script type="text/javascript">
	function updateSocId(socId) {
        var inputElement = document.querySelector('input[name="socid"]');

        var currentValue = inputElement.value;

        if (currentValue.includes(socId)) {
            var updatedValue = currentValue.replace(socId + ', ', '').replace(', ' + socId, '').replace(socId, '');
        } else {
            var updatedValue = currentValue === '' ? socId : currentValue + ', ' + socId;
        }

        inputElement.value = updatedValue;
    }
	</script>
</body>

</html>