package com.project.csm.controller.userController;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProfileController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private TheaterService theaterService;
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
		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);
		String maxDate = customerService.parseDatetoString(new Date());
		model.addAttribute("maxDate", maxDate);

		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("customer", customer);

		return "/user/profileUser";
	}

	@PostMapping("/profileUser")
	public String editProfile(@RequestParam String name, @RequestParam String gender, @RequestParam String dob,
			@RequestParam String phone, @RequestParam String address, @RequestParam String address2,
			@RequestParam String email, HttpSession session) {
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

		String[] addressSplit = address2.split(" / ");
		if (addressSplit.length >= 3) {
			if (!address.isEmpty()) {
				String addressResult = address + " / " + addressSplit[2] + " / " + addressSplit[1] + " / "
						+ addressSplit[0];
				customer.setAddress(addressResult);
			}
		}

		customerService.updateCustomer(customer);
		session.setAttribute("loggedInAccount", customer);
		return "redirect:/profileUser";
	}

	@PostMapping("/changeavatar")
	public String changeAvatar(@RequestParam String urlimage, HttpSession session) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		String email = loggedInAccount.getAccount().getEmail();
		customerService.changeImage(email, urlimage);
		return "redirect:/profileUser";
	}
}
