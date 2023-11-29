package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.service.adminService.adminAccountService;
import com.project.csm.service.adminService.adminCustomerService;
import com.project.csm.service.adminService.adminRankService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminCustomerController {

	@Autowired
	private adminCustomerService customerService;

	@Autowired
	private adminAccountService accountService;

	@Autowired
	private adminRankService rankService;

	@GetMapping("/customerDashboard")
	public String showCustomerAdmin(Model model, @RequestParam(defaultValue = "0") int page, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		List<Account> customerAccount = accountService.getCustomers();
		List<Customer> allCustomers = customerService.getAllCustomers();
		int pageSize = 5;
		int totalPages = (int) Math.ceil((double) allCustomers.size() / pageSize);

		List<Customer> pagedCustomers = allCustomers.subList(page * pageSize,
				Math.min((page + 1) * pageSize, allCustomers.size()));

		model.addAttribute("customerAccount", customerAccount);
		model.addAttribute("allCustomers", pagedCustomers);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);
		return "admin/customer/customerDashboard";
	}

	@GetMapping("/customerDashboard/update/{customerId}")
	public String updateAccountEmployeee(@PathVariable Long customerId, Model model) {
		Customer customer = customerService.getCustomerById(customerId);
		List<Rank> ranks = rankService.gettAllRanks();
		model.addAttribute("ranks", ranks);
		model.addAttribute("customer", customer);
		System.out.println(customer);
		return "admin/customer/updateCustomer";
	}

	@PostMapping("/customerDashboard/update/{customerId}")
	public String updateAccountCustomer(@PathVariable Long customerId, @ModelAttribute Customer customer,
			@ModelAttribute Account account, @RequestParam("rankId") Long rankId) {
		Customer existingCustomer = customerService.getCustomerById(customerId);

		existingCustomer.setName(customer.getName());
		existingCustomer.setAddress(customer.getAddress());
		existingCustomer.setDateOfBirth(customer.getDateOfBirth());
		existingCustomer.setPhoneNumber(customer.getPhoneNumber());
		existingCustomer.setGender(customer.getGender());
		existingCustomer.setRank(customer.getRank());

		Account existingAccount = existingCustomer.getAccount();

		existingAccount.setUserName(account.getUserName());
		existingAccount.setEmail(account.getEmail());
		existingAccount.setPassword(account.getPassword());

		Rank rank = rankService.getRankById(rankId);
		existingCustomer.setRank(rank);

		customerService.updateCustomer(existingCustomer);
		accountService.updateAccount(existingAccount);

		return "redirect:/customerDashboard";
	}

	// Delete
	@PostMapping("/deleteCustomer")
	@ResponseBody
	public ResponseEntity<String> deleteECustomer(@RequestParam("customerId") Long customerId) {
		Customer customer = customerService.getCustomerById(customerId);
		if (customer != null) {
			Long accountId = customer.getAccount().getAccountID();
			customerService.deleteCustomerById(customerId);
			accountService.deleteAccountById(accountId);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy nhân viên", HttpStatus.NOT_FOUND);
		}
	}
}
