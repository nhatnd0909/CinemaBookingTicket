package com.project.csm.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Customer;
import com.project.csm.service.AccountService;
import com.project.csm.service.CustomerService;
import com.project.csm.service.MailService;
import com.project.csm.service.RankService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@RestController
public class TestConroller {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RankService rankService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MailService mailService;

	@GetMapping("/test")
	public String test(Model model) {
		model.addAttribute("mess", "hello");
		return "/user/signin";
	}

	@GetMapping("/getall")
	public List<Customer> getAllCus() {

		return customerService.getAllCustomer();
	}

	@GetMapping("/getemail")
	public Customer getAllCus(@RequestParam String email, HttpServletResponse response, HttpSession session) {
		Customer customer = new Customer("Nhật", "male", new Date(), "123456789", "huế", new Date(), 0);
		session.setAttribute("loggedInAccount", customer);

		return customerService.findCustomerByEmail(email);
	}

//	@GetMapping("/getSession")
//	public Customer viewProfile(HttpSession session, Model model) {
//	    Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
//
//	    if (loggedInAccount == null) {
//
//	        return null;
//	    }
//
//	    return loggedInAccount;
//	}

	@PostMapping("/send/{mail}")
	public String sendMail(@PathVariable String mail) {
		int code = MailService.generateRandomNumber();
		mailService.sendMail(mail, code);
		return "gửi mail thành công";
	}
}
