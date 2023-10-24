package com.project.csm.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.service.AccountService;
import com.project.csm.service.CustomerService;
import com.project.csm.service.RankService;

@Controller
public class SignupController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RankService rankService;
	@Autowired
	private CustomerService customerService;

	@PostMapping("/signup")
	public String signup(Model model, @RequestParam String name, @RequestParam String email,
			@RequestParam String password, @RequestParam String rePassword) {
		if (accountService.isEmailExists(email)) {
			model.addAttribute("mess", "Email aready exist");
			return "/user/signup";
		}
		if (password.compareTo(rePassword) != 0) {
			model.addAttribute("mess", "Re Password dose not match");
			return "/user/signup";
		}
		
		Account account = new Account(email, password);
		accountService.createUserAccount(account);
		Rank rank = rankService.getRankByID(1L);
		Customer customer = new Customer(name, null, null, null, null, new Date(), 0, account, rank);
		customerService.addNewCusstomer(customer);
		model.addAttribute("mess", "Sign Up Success. Please log in");
		return "/user/signin";
	}
}
