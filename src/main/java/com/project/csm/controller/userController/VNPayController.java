package com.project.csm.controller.userController;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.config.VNPayService;
import com.project.csm.model.Customer;
import com.project.csm.model.Order;
import com.project.csm.model.Payment;
import com.project.csm.model.SeatOfCinema;
import com.project.csm.model.Service;
import com.project.csm.model.Show;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.OrderService;
import com.project.csm.service.customerService.PaymentService;
import com.project.csm.service.customerService.SeatOfCinemaService;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TicketService;
import com.project.csm.service.employeeService.employeeShowMovie;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
public class VNPayController {
	@Autowired
	private VNPayService vnPayService;
	@Autowired
	private TicketService tService;
	@Autowired
	private employeeShowMovie esmovie;
	@Autowired
	private SeatOfCinemaService sOfCinemaService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private PaymentService paymentService;

	@GetMapping("/submitOrder")
	public String vnpayHome() {
		return "vnpay/vnpayHome";
	}

	@PostMapping("/submitOrder")
	public String submidOrder(@RequestParam("totalmoney") String orderTotal, HttpServletRequest request,
			HttpSession session, @RequestParam("showID") Long showID, @RequestParam("socid") String socid,
			@RequestParam("order") String order) {

		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		if (loggedInAccount == null) {

			return "redirect:/signin";
		}
		// Total price
		BigDecimal total = new BigDecimal(0);
		// SOCID
		String[] listSeat = socid.replace(" ", "").split(",");
		List<SeatOfCinema> listSeatOfCinema = new ArrayList<>();

		for (int i = 0; i < listSeat.length; i++) {
			Long id = Long.parseLong(listSeat[i]);
			SeatOfCinema soc = sOfCinemaService.getAllSeatByID(id);
			listSeatOfCinema.add(soc);
		}
		String seat = "";
		for (SeatOfCinema s : listSeatOfCinema) {
			BigDecimal seatPrice = s.getSeat().getPrice();
			total = total.add(seatPrice);
			seat = seat + (s.getSeat().getName() + ",");
		}
		seat = seat.substring(0, seat.length() - 1);
		// Discount
		Double discount = loggedInAccount.getRank().getDiscount();
		// Customer
		// TicketID
		String ticketID = tService.createIDTicket();
		// Show
		Show show = esmovie.getShowById(showID);

		Ticket ticket = new Ticket(ticketID, show, seat, loggedInAccount, discount, total);
		/// ticket
//		tService.createNewTicket(ticket);
		session.setAttribute("ticket", ticket);
		// Order
		if (order != null) {
			String[] listOrder = orderService.processString(order);
			List<Order> listOderServie = new ArrayList<>();
			for (int i = 0; i < listOrder.length; i++) {
				if (listOrder[i] != "") {
					String name = orderService.processString2(listOrder[i])[0];
					// amount
					int amount = Integer.parseInt(orderService.processString2(listOrder[i])[1]);
					// service
					Service service = serviceService.getServiceByName(name);
					BigDecimal priceService = service.getPrice();
					// total price service
					BigDecimal totalpPriceService = serviceService.multiplyIntByBigDecimal(amount, priceService);

					Order newOrder = new Order(service, amount, totalpPriceService, ticket.getTicketID());
					listOderServie.add(newOrder);
					orderService.createNewOrder(newOrder);
				}
			}
		}

		double orderTotalDouble = Double.parseDouble(orderTotal);
		int orderTotalInt = (int) Math.round(orderTotalDouble);
		session.setAttribute("orderTotalInt", orderTotalInt);
		String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		String vnpayUrl = vnPayService.createOrder(orderTotalInt, "Thanh toan dat ve xem phim", baseUrl);
		return "redirect:" + vnpayUrl;
	}

	@GetMapping("/vnpay-payment")
	public String GetMapping(HttpServletRequest request, Model model, HttpSession session) {
		int paymentStatus = vnPayService.orderReturn(request);

		String orderInfo = request.getParameter("vnp_OrderInfo");
		String paymentTime = request.getParameter("vnp_PayDate");
		String transactionId = request.getParameter("vnp_TransactionNo");
		String totalPrice = request.getParameter("vnp_Amount");

		model.addAttribute("orderId", orderInfo);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("paymentTime", paymentTime);
		model.addAttribute("transactionId", transactionId);

		if (paymentStatus == 1) {
			Ticket ticket = (Ticket) session.getAttribute("ticket");
			tService.createNewTicket(ticket);
			Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
			customerService.updateTimes(loggedInAccount, ticket.getListSeat());

			int times = loggedInAccount.getTimes();
			customerService.updateRank(loggedInAccount, times);

			Payment payment = new Payment(new Date(), ticket, (int) session.getAttribute("orderTotalInt"),
					ticket.getShow().getTheaterRoom().getTheater().getName());
			paymentService.createNewPayment(payment);
		} else {
			Ticket ticket = (Ticket) session.getAttribute("ticket");
			String idTicket = ticket.getTicketID();
			orderService.deleteOrder(idTicket);
		}

		return paymentStatus == 1 ? "vnpay/ordersuccess" : "vnpay/orderfail";
	}
}