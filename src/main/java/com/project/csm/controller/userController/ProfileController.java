package com.project.csm.controller.userController;

import java.text.ParseException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.service.customerService.CustomerService;

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
		Date dobRaw;
		String dob = "";
		if (loggedInAccount.getDateOfBirth() == null) {
			model.addAttribute("dob", "");

		} else {
			dobRaw = customer.getDateOfBirth();
			dob = customerService.parseDatetoString(dobRaw);
		}

		model.addAttribute("dob", dob);

		String maxDate = customerService.parseDatetoString(new Date());
		model.addAttribute("maxDate", maxDate);

		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("customer", customer);

		return "/user/profileUser";
	}

	@PostMapping("/profileUser")
	public String editProfile(@RequestParam String name, @RequestParam String gender, @RequestParam String dob,
			@RequestParam String phone, @RequestParam String address, @RequestParam String email, HttpSession session) {
		Customer customer = customerService.findCustomerByEmail(email);
		customer.setName(name);
		customer.setGender(gender);

		// parse date string to Date
		try {
			Date dobDate = CustomerService.parseStringToDate(dob);
			customer.setDateOfBirth(dobDate);
		} catch (ParseException e) {
		}

		customer.setPhoneNumber(phone);
		customer.setAddress(address);
		customerService.addNewCusstomer(customer);

		session.setAttribute("loggedInAccount", customer);
		return "redirect:/profileUser";
	}

}
