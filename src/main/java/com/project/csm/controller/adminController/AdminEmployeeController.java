package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Theater;

import com.project.csm.service.adminService.adminAccountService;
import com.project.csm.service.adminService.adminEmployeeService;
import com.project.csm.service.adminService.adminTheaterService;

@Controller
public class AdminEmployeeController {

	@Autowired
	private adminTheaterService theaterService;

	@Autowired
	private adminAccountService accountService;
	@Autowired
	private adminEmployeeService employeeService;

	@GetMapping("/employeeDashboard")
	public String showEmployeeAdmin(Model model, @RequestParam(defaultValue = "0") int page) {
		List<Account> employeeAccounts = accountService.getEmployees();
		List<Employee> allEmployees = employeeService.getAllEmployees();
		int pageSize = 5;
		int totalPages = (int) Math.ceil((double) allEmployees.size() / pageSize);

		List<Employee> pagedEmployees = allEmployees.subList(page * pageSize,
				Math.min((page + 1) * pageSize, allEmployees.size()));

		model.addAttribute("employeeAccounts", employeeAccounts);
		model.addAttribute("allEmployees", pagedEmployees);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);
		return "admin/employee/employeeDashboard";
	}

	@GetMapping("/employeeDashboard/create")
	public String createEmployeeAdmin(Model model) {
		List<Theater> theaters = theaterService.gettAllTheaters();
		model.addAttribute("theaters", theaters);
		model.addAttribute("Emailmess", "");
		model.addAttribute("email", "");
		model.addAttribute("useNamemess", "");
		model.addAttribute("userName", "");
		model.addAttribute("phoneNumberMess", "");
		model.addAttribute("phoneNumber", "");
		return "admin/employee/createEmployee";
	}

	@PostMapping("/employeeDashboard/create")
	public String createAccountAndEmployee(@ModelAttribute Account account, @ModelAttribute Employee employee,
			@RequestParam("theaterId") Long theaterId, Model model, @RequestParam String email,
			@RequestParam String phoneNumber, @RequestParam String userName) {
		boolean emailExists = employeeService.isEmailExists(email);
		boolean userNameExists = employeeService.isUserNameExists(userName);
		boolean phoneNumberExists = employeeService.isPhoneExists(phoneNumber);

		if (emailExists || userNameExists || phoneNumberExists) {
			validateCreate(model, emailExists, userNameExists, phoneNumberExists);
			model.addAttribute("email", email);
			model.addAttribute("userName", userName);
			model.addAttribute("phoneNumber", phoneNumber);
			List<Theater> theaters = theaterService.gettAllTheaters();
			model.addAttribute("theaters", theaters);
			return "admin/employee/createEmployee";
		} else {
			Theater theater = theaterService.getTheaterById(theaterId);
			employee.setTheater(theater);
			accountService.createAccount(account);
			employee.setAccount(account);
			employeeService.createEmployee(employee);
			return "redirect:/employeeDashboard";
		}
	}

	@GetMapping("/employeeDashboard/update/{employeeId}")
	public String updateAccountEmployeee(@PathVariable Long employeeId, Model model) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		List<Theater> theaters = theaterService.gettAllTheaters();
		model.addAttribute("theaters", theaters);
		model.addAttribute("employee", employee);
		System.out.println(employee);
		return "admin/employee/updateEmployee";
	}

	@PostMapping("/employeeDashboard/update/{employeeId}")
	public String updateAccountEmployee(@PathVariable Long employeeId, @ModelAttribute Employee employee,
			@ModelAttribute Account account, @RequestParam("theaterId") Long theaterId) {
		Employee existingEmployee = employeeService.getEmployeeById(employeeId);

		existingEmployee.setName(employee.getName());
		existingEmployee.setAddress(employee.getAddress());
		existingEmployee.setDateOfBirth(employee.getDateOfBirth());
		existingEmployee.setPhoneNumber(employee.getPhoneNumber());

		Account existingAccount = existingEmployee.getAccount();

		existingAccount.setUserName(account.getUserName());
		existingAccount.setEmail(account.getEmail());
		existingAccount.setPassword(account.getPassword());

		Theater theater = theaterService.getTheaterById(theaterId);
		existingEmployee.setTheater(theater);

		employeeService.updateEmployee(existingEmployee);
		accountService.updateAccount(existingAccount);

		return "redirect:/employeeDashboard";
	}

	@PostMapping("/deleteEmployee")
	@ResponseBody
	public ResponseEntity<String> deleteEmployee(@RequestParam("employeeId") Long employeeId) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		if (employee != null) {
			Long accountId = employee.getAccount().getAccountID();
			employeeService.deleteEmployeeById(employeeId);
			accountService.deleteAccountById(accountId);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy nhân viên", HttpStatus.NOT_FOUND);
		}
	}

	private void validateCreate(Model model, boolean emailExists, boolean userNameExists, boolean phoneNumberExists) {
		if (emailExists && userNameExists && phoneNumberExists) {
			model.addAttribute("Emailmess", "An account with this email already exists");
			model.addAttribute("useNamemess", "An account with this UserName already exists");
			model.addAttribute("phoneNumberMess", "An account with this PhoneNumber already exists");
		} else if (emailExists && userNameExists) {
			model.addAttribute("Emailmess", "An account with this email already exists");
			model.addAttribute("useNamemess", "An account with this UserName already exists");
			model.addAttribute("phoneNumberMess", "");
		} else if (emailExists && phoneNumberExists) {
			model.addAttribute("Emailmess", "An account with this email already exists");
			model.addAttribute("useNamemess", "");
			model.addAttribute("phoneNumberMess", "An account with this PhoneNumber already exists");
		} else if (userNameExists && phoneNumberExists) {
			model.addAttribute("Emailmess", "");
			model.addAttribute("useNamemess", "An account with this UserName already exists");
			model.addAttribute("phoneNumberMess", "An account with this PhoneNumber already exists");
		} else if (emailExists) {
			model.addAttribute("Emailmess", "An account with this email already exists");
			model.addAttribute("useNamemess", "");
			model.addAttribute("phoneNumberMess", "");
		} else if (userNameExists) {
			model.addAttribute("Emailmess", "");
			model.addAttribute("useNamemess", "An account with this UserName already exists");
			model.addAttribute("phoneNumberMess", "");
		} else {
			model.addAttribute("Emailmess", "");
			model.addAttribute("useNamemess", "");
			model.addAttribute("phoneNumberMess", "An account with this PhoneNumber already exists");
		}
	}

}
