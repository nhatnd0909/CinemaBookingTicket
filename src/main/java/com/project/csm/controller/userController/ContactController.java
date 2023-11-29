package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Contact;
import com.project.csm.model.Customer;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.ContactService;
import com.project.csm.service.customerService.TheaterRoomService;
import com.project.csm.service.customerService.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;
	@Autowired
	private TheaterService theaterService;

	@GetMapping("/contact")
	public String showContact(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		String name = "";
		String lastName = "";
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			int position = loggedInAccount.getName().lastIndexOf(" ");
			lastName = loggedInAccount.getName().substring(0, position);
			name = loggedInAccount.getName().substring(position, loggedInAccount.getName().length());
			loggedIn = 1;
		}
		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		model.addAttribute("lastName", lastName);
		model.addAttribute("name", name);
		model.addAttribute("mess", "");
		return "/user/contactUs";
	}

	@PostMapping("/contact")
	public String sendContact(HttpSession session, Model model, @RequestParam String firstName,
			@RequestParam String name, @RequestParam String email, @RequestParam String phone,
			@RequestParam String msg) {
		Contact contact = new Contact(firstName + " " + name, email, phone, msg);
		contactService.createContact(contact);

		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		model.addAttribute("lastName", firstName);
		model.addAttribute("name", name);
		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);
		model.addAttribute("mess", "Cảm ơn " + name
				+ " đã để lại lời nhắn cho chúng tôi. Chúng tôi sẽ phản hồi cho bạn trong thời gian sớm nhất");
		return "/user/contactUs";
	}
}
