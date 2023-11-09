<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<title>Movie Ticket Booking Widget Flat Responsive Widget
	Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Movie Ticket Booking Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="seat_selection/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="seat_selection/js/jquery-1.11.0.min.js"></script>
<script src="seat_selection/js/jquery.seat-charts.js"></script>

</head>

<body>
	<div class="content">
		<h2>Seat Booking</h2>
		<div class="main">
			<div class="demo">
				<div id="seat-map">
					<div class="front">SCREEN</div>
				</div>
				<div class="booking-details">
					<ul class="book-left">
						<li>Movie</li>
						<li>Time</li>
						<li>Tickets</li>
						<li>Total</li>
						<li>Selected Seats</li>
					</ul>
					<ul class="book-right">
						<li>: Commando 3</li>
						<li>: April 12, 22:00</li>
						<li>: <span id="counter">0</span></li>
						<li>: <b><i>RS.</i><span id="total">0</span></b></li>
					</ul>
					<div class="clear"></div>
					<ul id="selected-seats" class="scrollbar scrollbar1"></ul>


					<div id="legend"></div>
				</div>

				<script type="text/javascript">
					var price = 110; //price
					$(document)
							.ready(
									function() {
										var $cart = $('#selected-seats'), //Sitting Area
										$counter = $('#counter'), //Votes
										$total = $('#total'); //Total money

										var sc = $('#seat-map')
												.seatCharts(
														{
															map : [ //Seating chart
																	'aaaaaaaaaa',
																	'aaaaaaaaaa',
																	'__________',
																	'aaaaaaaa__',
																	'aaaaaaaaaa',
																	'aaaaaaaaaa',
																	'aaaaaaaaaa',
																	'aaaaaaaaaa',
																	'aaaaaaaaaa',
																	'__aaaaaa__' ],
															naming : {
																top : false,
																getLabel : function(
																		character,
																		row,
																		column) {
																	return column;
																}
															},
															legend : { //Definition legend
																node : $('#legend'),
																items : [
																		[
																				'a',
																				'available',
																				'Còn trống' ],
																		[
																				'a',
																				'unavailable',
																				'Đã bán' ],
																		[
																				'a',
																				'selected',
																				'Đã chọn' ],
																		[
																				'a',
																				'vip',
																				'Ghế VIP' ], ]
															},
															click : function() { //Click event
																if (this.settings.id === '8_5'
																		|| this.settings.id === '8_6'
																		|| this.settings.id === '8_7'
																		|| this.settings.id === '8_8'
																		|| this.settings.id === '7_5'
																		|| this.settings.id === '7_6'
																		|| this.settings.id === '7_7'
																		|| this.settings.id === '7_8') {
																	if (this
																			.status() == 'vip') {
																		var row = this.settings.row + 1;
																		var label = this.settings.label;

																		$(
																				'<li>R-'
																						+ row
																						+ ' S-'
																						+ label
																						+ '</li>')
																				.attr(
																						'id',
																						'cart-item-'
																								+ this.settings.id)
																				.data(
																						'seatId',
																						this.settings.id)
																				.appendTo(
																						$cart);

																		$counter
																				.text(sc
																						.find('selected').length + 1);
																		$total
																				.text(recalculateTotal(sc)
																						+ price);

																		return 'selected';
																	} else if (this
																			.status() == 'selected') {
																		var row = this.settings.row + 1;
																		var label = this.settings.label;

																		$counter
																				.text(sc
																						.find('selected').length - 1);
																		$total
																				.text(recalculateTotal(sc)
																						- price);

																		$(
																				'#cart-item-'
																						+ this.settings.id)
																				.remove();

																		return 'vip';
																	}
																} else {
																	// Xử lý các ghế không phải là '8_5', '8_6', '8_7', '8_8'
																	if (this
																			.status() == 'available') {
																		var row = this.settings.row + 1;
																		var label = this.settings.label;

																		$(
																				'<li>R-'
																						+ row
																						+ ' S-'
																						+ label
																						+ '</li>')
																				.attr(
																						'id',
																						'cart-item-'
																								+ this.settings.id)
																				.data(
																						'seatId',
																						this.settings.id)
																				.appendTo(
																						$cart);

																		$counter
																				.text(sc
																						.find('selected').length + 1);
																		$total
																				.text(recalculateTotal(sc)
																						+ price);

																		return 'selected';
																	} else if (this
																			.status() == 'selected') {
																		var row = this.settings.row + 1;
																		var label = this.settings.label;

																		$counter
																				.text(sc
																						.find('selected').length - 1);
																		$total
																				.text(recalculateTotal(sc)
																						- price);

																		$(
																				'#cart-item-'
																						+ this.settings.id)
																				.remove();

																		return 'available';
																	} else if (this
																			.status() == 'unavailable') {
																		return 'unavailable';
																	} else {
																		return this
																				.style();
																	}
																}
															}
														});
										//sold seat
										sc.get(
												[ '1_2', '4_4', '4_5', '6_6',
														'6_7',
														// '8_5', '8_6', '8_7', '8_8',
														'10_1', '10_2' ])
												.status('unavailable');

										sc.get(
												[ '7_5', '7_6', '7_7', '7_8',
														'8_5', '8_6', '8_7',
														'8_8',

												]).status('vip');

									});
					//sum total money
					function recalculateTotal(sc) {
						var total = 0;
						sc.find('selected').each(function() {
							total += price;
						});

						return total;
					}
				</script>
			</div>
		</div>
		<script type="text/javascript"
			src="seat_selection/js/theme-change-seat-sel.js"></script>
		<script src="seat_selection/js/jquery.nicescroll.js"></script>
		<script src="seat_selection/js/scripts.js"></script>
</body>

</html>