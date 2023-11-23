package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.model.Order;
import com.project.csm.model.Show;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.OrderService;
import com.project.csm.service.customerService.TicketService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailHistoryController {
	@Autowired
	private TicketService ticketService;
	@Autowired
	private OrderService orderService;

	@GetMapping("/history1")
	public String showHistory1(HttpSession session, Model model, @RequestParam String idTicket) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		Ticket ticket = ticketService.getTicketByID(idTicket);
		model.addAttribute("ticket", ticket);

		List<Order> listOder = orderService.getAllOrderByIDTicket(idTicket);
		model.addAttribute("listOder", listOder);
		
		return "/user/history1";
	}
}
