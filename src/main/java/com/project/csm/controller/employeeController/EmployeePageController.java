package com.project.csm.controller.employeeController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Order;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.OrderService;
import com.project.csm.service.customerService.TicketService;

@Controller
public class EmployeePageController {
	@Autowired
	private TicketService ticketService;
	@Autowired
	private OrderService orderService;

	@GetMapping("/employee/Dashboard")
	public String employeeDashboard() {
		return "employee/employeeDashboard";
	}

	@GetMapping("/employee/contact")
	public String contactDashboard() {
		return "/employee/contact/contactDashboard";
	}

	@GetMapping("/employee/detailBookingHistoryDashboard")
	public String detailBookingHistoryDashboardEmployee(@RequestParam String ticketID, Model model) {
		Ticket ticket = ticketService.getTicketByID(ticketID);
		model.addAttribute("ticket", ticket);
		List<Order> listOrder = orderService.getAllOrderByIDTicket(ticketID);
		model.addAttribute("listOrder", listOrder);
		return "/employee/bookinghistory/detailBookingHistoryDashboard";
	}

	@GetMapping("/employee/profile")
	public String profileEmployee() {
		return "/employee/profileEmployee";
	}

	@GetMapping("/employee/changepassword")
	public String changepasswordEmployee() {
		return "/employee/changepasswordEmployee";
	}

}
