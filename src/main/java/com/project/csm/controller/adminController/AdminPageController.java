package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Account;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.PaymentService;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TicketService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminPageController {
	@Autowired
	private ServiceService sService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private com.project.csm.service.customerService.TheaterService theaterService;

	@GetMapping("/adminDashboard")
	public String showAdminDashboard(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}

		int totalMovies = movieService.getAllMovie().size();
		model.addAttribute("totalMovies", totalMovies);
		int totalCustomer = customerService.getAllCustomer().size();
		model.addAttribute("totalCustomer", totalCustomer);
		int totalTickets = ticketService.getTicketsByMonth(sService.getCurrentDate()).size();
		model.addAttribute("totalTickets", totalTickets);
		String currentMonth = sService.getCurrentDate().split("-")[1];
		model.addAttribute("currentMonth", currentMonth);

		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);

		int totalDN = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Đà Nẵng");
		int totalH = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Huế");
		int totalQN = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Quảng Nam");
		model.addAttribute("totalByMonth", totalDN + totalH + totalQN);
		model.addAttribute("totalDN", totalDN);
		model.addAttribute("totalH", totalH);
		model.addAttribute("totalQN", totalQN);
		return "admin/adminDashboard";
	}

	@GetMapping("/blank-page")
	public String showBlankPage() {

		return "admin/blank-page";
	}

	@GetMapping("/chart")
	public String showChart() {

		return "admin/chart";
	}

	@GetMapping("/revenue")
	public String showRevenue(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		int totalMovies = movieService.getAllMovie().size();
		model.addAttribute("totalMovies", totalMovies);
		int totalCustomer = customerService.getAllCustomer().size();
		model.addAttribute("totalCustomer", totalCustomer);
		int totalTickets = ticketService.getTicketsByMonth(sService.getCurrentDate()).size();
		model.addAttribute("totalTickets", totalTickets);
		String currentMonth = sService.getCurrentDate().split("-")[1];
		model.addAttribute("currentMonth", currentMonth);

		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);

		int totalDN = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Đà Nẵng");
		int totalH = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Huế");
		int totalQN = paymentService.calculateTotalByMonthTheater(sService.getCurrentDate(), "Theater Quảng Nam");
		model.addAttribute("totalByMonth", totalDN + totalH + totalQN);
		model.addAttribute("totalDN", totalDN);
		model.addAttribute("totalH", totalH);
		model.addAttribute("totalQN", totalQN);
		return "admin/revenue";
	}

}
