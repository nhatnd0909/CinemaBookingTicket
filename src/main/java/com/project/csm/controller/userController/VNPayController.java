package com.project.csm.controller.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.config.VNPayService;
import com.project.csm.model.Customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
public class VNPayController {
	@Autowired
	private VNPayService vnPayService;

	@GetMapping("/submitOrder")
	public String vnpayHome() {
		return "vnpay/vnpayHome";
	}

//	@PostMapping("/submitOrder")
//	public String submidOrder(@RequestParam("totalmoney") String orderTotal, HttpServletRequest request) {
//		
//		double orderTotalDouble = Double.parseDouble(orderTotal);
//		int orderTotalInt = (int) Math.round(orderTotalDouble);
//		String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
//		String vnpayUrl = vnPayService.createOrder(orderTotalInt, "Thanh toan dat ve xem phim", baseUrl);
//		return "redirect:" + vnpayUrl;
//	}
	@PostMapping("/submitOrder")
	public String submidOrder(@RequestParam("totalmoney") String orderTotal, HttpServletRequest request,
			HttpSession session) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		if (loggedInAccount == null) {
			
			return "redirect:/signin";
		}
		
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