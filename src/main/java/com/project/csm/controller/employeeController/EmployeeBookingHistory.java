package com.project.csm.controller.employeeController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.TicketService;

@Controller
public class EmployeeBookingHistory {
	@Autowired
	private TicketService ticketService;

	@GetMapping("/employee/bookinghistory")
	public String bookingHistoryEmployee(Model model) {
		List<Ticket> lisTickets = ticketService.getAllTicket();
		model.addAttribute("lisTickets", lisTickets);
		return "/employee/bookinghistory/bookingHistoryDashboard";
	}
}
