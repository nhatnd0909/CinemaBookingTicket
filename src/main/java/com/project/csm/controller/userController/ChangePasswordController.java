package com.project.csm.controller.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.service.customerService.AccountService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ChangePasswordController {
	@Autowired
	private AccountService accountService;
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
		return "/user/password";
	}

	@PostMapping("/changepass")
	public String changePassword(@RequestParam String oldPass, @RequestParam String newPass,
			@RequestParam String confirmNewPass, HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		if (!loggedInAccount.getAccount().getPassword().equals(oldPass)) {
			model.addAttribute("loggedIn", 1);
			model.addAttribute("loggedInAccount", loggedInAccount);
			model.addAttribute("mess", "Wrong old password");
			return "/user/password";
		}
		if(!newPass.equals(confirmNewPass)) {
			model.addAttribute("loggedIn", 1);
			model.addAttribute("loggedInAccount", loggedInAccount);
			model.addAttribute("mess", "Confirm new password does not match");
			return "/user/password";
		}
		accountService.changePasswordByEmail(loggedInAccount.getAccount().getEmail(), newPass);
		
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/signin";
	}
}
