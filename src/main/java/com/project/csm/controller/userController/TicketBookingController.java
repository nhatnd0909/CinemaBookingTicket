package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Service;
import com.project.csm.model.TheaterRoom;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TheaterRoomService;

import jakarta.servlet.http.HttpSession;

@Controller
public class TicketBookingController {
	@Autowired
	private TheaterRoomService tRoomService;
	@Autowired
	private ServiceService sService;
	
	@GetMapping("/ticketBooking")
	public String showTicketBooking(HttpSession session, Model model, @RequestParam String movie,@RequestParam String theater) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		
		List<TheaterRoom> listTRoom = tRoomService.getRoomByTheaterName(theater);
		model.addAttribute("listTRoom", listTRoom);
		
		List<Service> listService = sService.getAllService();
		model.addAttribute("listService", listService);
		return "/user/ticketBooking";
	}
}
