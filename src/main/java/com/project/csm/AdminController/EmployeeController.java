package com.project.csm.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.dto.EmployeeDTO;
import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Theater;
import com.project.csm.service.AccountService;
import com.project.csm.service.EmployeeService;
import com.project.csm.service.TheaterService;

import jakarta.validation.Valid;

@Controller
public class EmployeeController {
	
	@Autowired
    private TheaterService theaterService;
	
	@Autowired
	private AccountService accountService;
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private EmployeeDTO employeeDTO ;
	
	@GetMapping("/employeeDashboard")
	public String showEmployeeAdmin(Model model  , @RequestParam(defaultValue = "0") int page) {
		List<Account> employeeAccounts = accountService.getEmployees();
		List<Employee> allEmployees = employeeService.getAllEmployees();
		int pageSize = 2; 
	    int totalPages = (int) Math.ceil((double) allEmployees.size() / pageSize);

	    List<Employee> pagedEmployees = allEmployees.subList(page * pageSize, Math.min((page + 1) * pageSize, allEmployees.size()));
	    
	    model.addAttribute("employeeAccounts", employeeAccounts);
		model.addAttribute("allEmployees", pagedEmployees);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);
		return "admin/employeeDashboard";
	}
	
	@GetMapping("/employeeDashboard/create")
	public String createEmployeeAdmin(Model model) {
		List<Theater> theaters = theaterService.gettAllTheaters();
		model.addAttribute("theaters", theaters);
		return "admin/employee/createEmployee";
	}
	
	@PostMapping("/employeeDashboard/create")
	public String createAccountAndEmployee(@ModelAttribute Account account,
			@ModelAttribute Employee employee , @RequestParam("theaterId") int theaterId ,
			@Valid EmployeeDTO EmployeeDTO, BindingResult bindingResult,Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("user_name_error", bindingResult.getFieldError("userName").getDefaultMessage());
	        return "admin/employee/createEmployee";
	    }
		Theater theater = theaterService.getTheaterById(theaterId);
		employee.setTheater(theater);
		accountService.createAccount(account);
		employee.setAccount(account);
		employeeService.createEmployee(employee);
		return "redirect:/employeeDashboard";
	}
	
	
	@GetMapping("/employeeDashboard/update/{employeeId}")
	public String updateAccountEmployeee() {
		return "admin/employee/updateEmployee";
	}
								
	@GetMapping("/deleteEmployee/{employeeId}")
    public String deleteEmployee(@PathVariable("employeeId") int employeeId) {
		 Employee employee = employeeService.getEmployeeById(employeeId);
		    if (employee != null) {
		        int accountId = employee.getAccount().getAccountID();
		        employeeService.deleteEmployeeById(employeeId);
		        accountService.deleteAccountById(accountId);
		    }

		    return "redirect:/employeeDashboard";
    }


}
