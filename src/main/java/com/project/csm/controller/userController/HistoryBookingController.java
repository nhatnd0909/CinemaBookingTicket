package com.project.csm.controller.userController;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Theater;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.TheaterService;
import com.project.csm.service.customerService.TicketService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HistoryBookingController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private TheaterService theaterService;
	@GetMapping("/history")
	public String showHistory(@RequestParam(defaultValue = "1") int page, HttpSession session, Model model) {
	    Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
	    int loggedIn = (loggedInAccount == null) ? 0 : 1;

	    model.addAttribute("loggedIn", loggedIn);
	    model.addAttribute("loggedInAccount", loggedInAccount);

	    Customer customer = customerService.getCustomerByID(loggedInAccount.getCustomerID());
	    model.addAttribute("customer", customer);

	    List<Ticket> listTicket = ticketService.getAllTicketByIdCustomer(loggedInAccount.getCustomerID());
	    
	    int pageSize = 6; 
	    int totalTickets = listTicket.size();
	    int totalPages = (int) Math.ceil((double) totalTickets / pageSize);

	    List<Ticket> paginatedTickets = listTicket.stream()
	            .skip((page - 1) * pageSize)
	            .limit(pageSize)
	            .collect(Collectors.toList());
		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);
	    model.addAttribute("listTicket", paginatedTickets);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);

	    return "/user/history";
	}

}
