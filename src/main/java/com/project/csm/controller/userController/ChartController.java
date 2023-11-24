package com.project.csm.controller.userController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TicketService;

@Controller
public class ChartController {
	@Autowired
	private TicketService ticketService;
	@Autowired
	private ServiceService service;

	@GetMapping("datapiechart")
	@ResponseBody
	public List<Ticket> getDataPieChart() {
		List<Ticket> listAllTicketByMonth = ticketService.getTicketsByMonth(service.getCurrentDate());
		List<Ticket> listTicketDaNang = new ArrayList<>();
		List<Ticket> listTicketHue = new ArrayList<>();
		List<Ticket> listTicketQuangNam = new ArrayList<>();
		for (Ticket t : listAllTicketByMonth) {
			if (t.getShow().getTheaterRoom().getTheater().getName().equals("Theater Đà Nẵng")) {
				listTicketDaNang.add(t);
			}
		}
		for (Ticket t : listAllTicketByMonth) {
			if (t.getShow().getTheaterRoom().getTheater().getName().equals("Theater Huế")) {
				listTicketHue.add(t);
			}
		}
		for (Ticket t : listAllTicketByMonth) {
			if (t.getShow().getTheaterRoom().getTheater().getName().equals("Theater Quảng Nam")) {
				listTicketQuangNam.add(t);
			}
		}
		
		return listTicketHue;
	}
}
