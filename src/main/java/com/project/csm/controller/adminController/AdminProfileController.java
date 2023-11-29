package com.project.csm.controller.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Account;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminProfileController {

	@GetMapping("/adminDashboard/profile")
	public String adminProfile(HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		return "admin/adminprofile";
	}
}
