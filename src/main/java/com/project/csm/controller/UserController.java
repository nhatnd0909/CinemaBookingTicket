package com.project.csm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	@GetMapping("/")
	public String showDefaultPage() {
		return "/user/index";
	}

	@GetMapping("/home")
	public String showUserIndex() {
		return "/user/index";
	}

	@GetMapping("/about")
	public String showAbout() {
		return "/user/about";
	}

	@GetMapping("/contact")
	public String showContact() {
		return "/user/contactUs";
	}

	@GetMapping("/details")
	public String showDetails() {
		return "/user/details";
	}

	@GetMapping("/e-ticket")
	public String showETicket() {
		return "/user/e-ticket";
	}

	@GetMapping("/history")
	public String showHistory() {
		return "/user/history";
	}

	@GetMapping("/history1")
	public String showHistory1() {
		return "/user/history1";
	}

	@GetMapping("/movies")
	public String showMovie() {
		return "/user/movies";
	}

	@GetMapping("/password")
	public String showPassword() {
		return "/user/password";
	}

	@GetMapping("/profileUser")
	public String showProfileUser() {
		return "/user/profileUser";
	}

	@GetMapping("/signin")
	public String showSignin(Model model) {
		model.addAttribute("mess", "");
		return "/user/signin";
	}

	@GetMapping("/signup")
	public String showSignup(Model model) {
		model.addAttribute("mess", "");
		return "/user/signup";
	}

	@GetMapping("/ticketBooking")
	public String showTicketBooking() {
		return "/user/ticketBooking";
	}

	@GetMapping("/seat_sel")
	public String showSeat_sel() {
		return "/user/seat_sel";
	}

}