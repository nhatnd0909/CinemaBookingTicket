package com.project.csm.controller.userController;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.service.customerService.AccountService;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.MailService;
import com.project.csm.service.customerService.RankService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SignupController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RankService rankService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MailService mailService;

	private static final int CODE = MailService.generateRandomNumber();

	@GetMapping("/signup")
	public String showSignup(Model model) {
		model.addAttribute("name", "");
		model.addAttribute("email", "");
		model.addAttribute("mess", "");
		return "/user/signup";
	}

	@PostMapping("/signup")
	public String signup(Model model, @RequestParam String name, @RequestParam String email,
			@RequestParam String password, @RequestParam String rePassword, HttpSession session) {
		if (accountService.isEmailExists(email)) {
			model.addAttribute("name", name);
			model.addAttribute("email", email);
			model.addAttribute("mess", "Email aready exist");
			return "/user/signup";
		}
		if (password.compareTo(rePassword) != 0) {
			model.addAttribute("name", name);
			model.addAttribute("email", email);
			model.addAttribute("mess", "Re Password dose not match");
			return "/user/signup";
		}
		mailService.sendMail(email, CODE);
		Account account = new Account(email, password);
//		accountService.createUserAccount(account);
		Rank rank = rankService.getRankByID(1L);
		Customer customer = new Customer(name, null, null, null, null, new Date(), 0, account, rank);
		session.setAttribute("customer", customer);
		model.addAttribute("mess", "Check your email to get Verify Code");
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		return "/user/verifyEmail";
	}

	@GetMapping("/verify")
	public String getVerifyMail(Model model) {
		model.addAttribute("mess", "");
		return "/user/verifyEmail";
	}

	@PostMapping("/verify")
	public String verifyMail(Model model, @RequestParam String code, HttpSession session) {
		int codeInput = Integer.parseInt(code);
		if (codeInput != CODE) {
			model.addAttribute("mess", "Invalid code. Please enter again");
			return "/user/verifyEmail";
		}
		Customer customer = (Customer) session.getAttribute("customer");
		//
		accountService.createUserAccount(customer.getAccount());
		customerService.addNewCusstomer(customer);
		model.addAttribute("mess", "Sign Up Success. Please log in");
		return "redirect:/signin";
	}

}
