package com.project.csm.controller.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Customer;
import com.project.csm.service.customerService.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	private CustomerService customerService;

	@GetMapping("/home")
	public String showUserIndex(HttpSession session, Model model) {
		return "redirect:/";
	}

	@GetMapping("/about")
	public String showAbout(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/about";
	}

	@GetMapping("/contact")
	public String showContact(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/contactUs";
	}

	@GetMapping("/e-ticket")
	public String showETicket(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/e-ticket";
	}

	

	@GetMapping("/history1")
	public String showHistory1(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/history1";
	}

	@GetMapping("/password")
	public String showPassword(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/password";
	}

//	@GetMapping("/profileUser")
//	public String showProfileUser(HttpSession session, Model model) {
//		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
//		int loggedIn = 0;
//		if (loggedInAccount == null) {
//			loggedIn = 0;
//		} else {
//			loggedIn = 1;
//		}
//		model.addAttribute("loggedIn", loggedIn);
//		model.addAttribute("loggedInAccount", loggedInAccount);
//		return "/user/profileUser";
//	}

//	@GetMapping("/ticketBooking")
//	public String showTicketBooking(HttpSession session, Model model) {
//		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
//		int loggedIn = 0;
//		if (loggedInAccount == null) {
//			loggedIn = 0;
//		} else {
//			loggedIn = 1;
//		}
//		model.addAttribute("loggedIn", loggedIn);
//		model.addAttribute("loggedInAccount", loggedInAccount);
//		return "/user/ticketBooking";
//	}

	@GetMapping("/seat_sel")
	public String showSeat_sel(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		return "/user/seat_sel";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}

		return "redirect:/";
	}

}