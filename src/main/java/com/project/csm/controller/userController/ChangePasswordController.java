package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.AccountService;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ChangePasswordController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private TheaterService theaterService;
	@GetMapping("/changepass")
	public String getChangePass(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");

		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("mess", "");
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);
		Customer customer = customerService.getCustomerByID(loggedInAccount.getCustomerID());
		model.addAttribute("customer", customer);
		return "/user/password";
	}

	@PostMapping("/changepass")
	public String changePassword(@RequestParam String oldPass, @RequestParam String newPass,
			@RequestParam String confirmNewPass, HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("mess", "");
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		Customer customer = customerService.getCustomerByID(loggedInAccount.getCustomerID());
		model.addAttribute("customer", customer);	
		
		if (!loggedInAccount.getAccount().getPassword().equals(oldPass)) {
			model.addAttribute("loggedIn", 1);
			model.addAttribute("loggedInAccount", loggedInAccount);
			model.addAttribute("mess", "Sai mật khẩu cũ");

			return "/user/password";
		}
		if (!newPass.equals(confirmNewPass)) {
			model.addAttribute("loggedIn", 1);
			model.addAttribute("loggedInAccount", loggedInAccount);
			model.addAttribute("mess", "Xác nhận mật khẩu mới không khớp");
			return "/user/password";
		}
		accountService.changePasswordByEmail(loggedInAccount.getAccount().getEmail(), newPass);

		if (session != null) {
			session.invalidate();
		}
		return "redirect:/signin";
	}
}
