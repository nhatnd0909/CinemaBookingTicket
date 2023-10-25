package com.project.csm.controller.userController;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.csm.model.Customer;
import com.project.csm.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProfileController {
	@Autowired
	private CustomerService customerService;

	@GetMapping("/profileUser")
	public String showProfileUser(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");

		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}

		Customer customer = customerService.getCustomerByID(loggedInAccount.getCustomerID());
		Date dobRaw = customer.getDateOfBirth();
		String dob = customerService.parseDatetoString(dobRaw);
		String maxDate = customerService.parseDatetoString(new Date());
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("customer", customer);
		model.addAttribute("dob", dob);
		model.addAttribute("maxDate", maxDate);
		return "/user/profileUser";
	}

	@PostMapping("/profileUser")
	public String editProfile() {
		
		return "redirect:/profileUser";
	}

}
