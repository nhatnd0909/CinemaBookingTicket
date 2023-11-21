package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Customer;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.TicketService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HistoryBookingController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private TicketService ticketService;

	@GetMapping("/history")
	public String showHistory(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		Customer customer = customerService.getCustomerByID(loggedInAccount.getCustomerID());
		model.addAttribute("customer", customer);

		List<Ticket> listTicket = ticketService.getAllTicketByIdCustomer(loggedInAccount.getCustomerID());
		model.addAttribute("listTicket", listTicket);

		return "/user/history";
	}
}
