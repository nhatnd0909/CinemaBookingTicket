package com.project.csm.controller.userController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.PieChart;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TicketService;

@Controller
public class ChartController {
	@Autowired
	private TicketService ticketService;
	@Autowired
	private ServiceService service;

	@GetMapping("/piechart")
	public String piechart() {
		return "user/chart/testChart";
	}

	@GetMapping("datapiechart")
	@ResponseBody
	public List<PieChart> getDataPieChart() {
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
		List<PieChart> list = new ArrayList<>();
		PieChart dn = new PieChart("Theater Đà Nẵng", listTicketDaNang.size());
		PieChart h = new PieChart("Theater Huế", listTicketHue.size());
		PieChart qn = new PieChart("Theater Quảng Nam", listTicketQuangNam.size());
		list.add(qn);
		list.add(dn);
		list.add(h);
		return list;
	}
}
