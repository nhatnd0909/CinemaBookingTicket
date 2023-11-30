package com.project.csm.controller.employeeController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Contact;
import com.project.csm.model.Order;
import com.project.csm.model.Ticket;
import com.project.csm.service.customerService.ContactService;
import com.project.csm.service.customerService.MailService;
import com.project.csm.service.customerService.OrderService;
import com.project.csm.service.customerService.TicketService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeePageController {
	@Autowired
	private TicketService ticketService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ContactService contactService;
	@Autowired
	private MailService mailService;

	@GetMapping("/employee/Dashboard")
	public String employeeDashboard(HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		return "employee/employeeDashboard";
	}

	@GetMapping("/employee/contact")
	public String contactDashboard(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		List<Contact> listContact = contactService.getContact();
		model.addAttribute("listContact", listContact);
		return "/employee/contact/contactDashboard";
	}

	@GetMapping("/employee/replyContact")
	public String reply(Model model, @RequestParam String idContact, @RequestParam String content,
			HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		Contact contact = contactService.getContactByID(Long.parseLong(idContact));
		mailService.sendMailReply(contact.getEmail(), content);
		contactService.updateContact(contact);
		return "redirect:/employee/contact";
	}

	@GetMapping("/employee/detailBookingHistoryDashboard")
	public String detailBookingHistoryDashboardEmployee(@RequestParam String ticketID, Model model,
			HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		Ticket ticket = ticketService.getTicketByID(ticketID);
		model.addAttribute("ticket", ticket);
		List<Order> listOrder = orderService.getAllOrderByIDTicket(ticketID);
		model.addAttribute("listOrder", listOrder);
		return "/employee/bookinghistory/detailBookingHistoryDashboard";
	}

	@GetMapping("/employee/profile")
	public String profileEmployee(HttpSession session) {
		return "/employee/profileEmployee";
	}

	@GetMapping("/employee/changepassword")
	public String changepasswordEmployee(HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		return "/employee/changepasswordEmployee";
	}

}
