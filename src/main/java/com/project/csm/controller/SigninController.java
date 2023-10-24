package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.service.AccountService;
import com.project.csm.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SigninController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private CustomerService customerService;

	@GetMapping("/signin")
	public String showSignin(Model model) {
		model.addAttribute("mess", "");
		return "/user/signin";
	}

	@PostMapping("/signin")
	public String signin(Model model, @RequestParam String email, @RequestParam String password, HttpSession session) {
		if (!accountService.isEmailExists(email)) {
			model.addAttribute("mess", "Dont have any account with this email");
			return "/user/signin";
		}
		if (!accountService.isPasswordCorrect(email, password)) {
			model.addAttribute("mess", "Wrong password");
			return "/user/signin";
		}
		Customer customer = customerService.findCustomerByEmail(email);
		session.setAttribute("loggedInAccount", customer);
		return "/user/index";
	}
	@GetMapping("/getSession")
	public String viewProfile(HttpSession session, Model model) {
	    Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");

	    if (loggedInAccount == null) {

	        return null;
	    }

	    return loggedInAccount.toString();
	}
	
}
