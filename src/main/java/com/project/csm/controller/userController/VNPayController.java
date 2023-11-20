package com.project.csm.controller.userController;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.config.VNPayService;
import com.project.csm.model.Customer;
import com.project.csm.model.SeatOfCinema;
import com.project.csm.model.Show;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.SeatOfCinemaService;
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

	@GetMapping("/submitOrder")
	public String vnpayHome() {
		return "vnpay/vnpayHome";
	}

	@PostMapping("/submitOrder")
	public String submidOrder(@RequestParam("totalmoney") String orderTotal, HttpServletRequest request,
			HttpSession session, @RequestParam("showID") Long showID, @RequestParam("socid") String socid) {
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

		for (SeatOfCinema s : listSeatOfCinema) {
			BigDecimal seatPrice = s.getSeat().getPrice();
			total = total.add(seatPrice);
		}
		// Discount
		Double discount = loggedInAccount.getRank().getDiscount();
		// Customer
		// TicketID
		String ticketID = tService.createIDTicket();
		// Show
		Show show = esmovie.getShowById(showID);
		Ticket ticket = new Ticket(ticketID, show, socid.replace(" ", ""), loggedInAccount, discount, total);
		/// ticket
		session.setAttribute("ticket", ticket);
		System.out.println(ticket);
		// Order

		// Amount

		// TotalPrice

		// ServiceID

		// TicketID

		double orderTotalDouble = Double.parseDouble(orderTotal);
		int orderTotalInt = (int) Math.round(orderTotalDouble);
		String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		String vnpayUrl = vnPayService.createOrder(orderTotalInt, "Thanh toan dat ve xem phim", baseUrl);
		return "redirect:" + vnpayUrl;
	}

	@GetMapping("/vnpay-payment")
	public String GetMapping(HttpServletRequest request, Model model) {
		int paymentStatus = vnPayService.orderReturn(request);

		String orderInfo = request.getParameter("vnp_OrderInfo");
		String paymentTime = request.getParameter("vnp_PayDate");
		String transactionId = request.getParameter("vnp_TransactionNo");
		String totalPrice = request.getParameter("vnp_Amount");

		model.addAttribute("orderId", orderInfo);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("paymentTime", paymentTime);
		model.addAttribute("transactionId", transactionId);

		return paymentStatus == 1 ? "vnpay/ordersuccess" : "vnpay/orderfail";
	}
}