package com.project.csm.AdminController;

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
	
	
	
	@GetMapping("/employeeDashboard")
	public String showEmployeeAdmin(Model model  , @RequestParam(defaultValue = "0") int page) {
		List<Account> employeeAccounts = accountService.getEmployees();
		List<Employee> allEmployees = employeeService.getAllEmployees();
		int pageSize = 5; 
	    int totalPages = (int) Math.ceil((double) allEmployees.size() / pageSize);

	    List<Employee> pagedEmployees = allEmployees.subList(page * pageSize, Math.min((page + 1) * pageSize, allEmployees.size()));
	    
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
		return "admin/employee/createEmployee";
	}
	
	@PostMapping("/employeeDashboard/create")
	public String createAccountAndEmployee(@ModelAttribute @Valid  Account account,
			@ModelAttribute Employee employee,
			@RequestParam("theaterId") int theaterId, 
			BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
	        return "admin/employee/createEmployee";
	    }else {
	    	Theater theater = theaterService.getTheaterById(theaterId);
			employee.setTheater(theater);
			accountService.createAccount(account);
			employee.setAccount(account);
			employeeService.createEmployee(employee);
			return "redirect:/employeeDashboard";
	    }
		
	}
	
	
	@GetMapping("/employeeDashboard/update/{employeeId}")
	public String updateAccountEmployeee(@PathVariable int employeeId, Model model ) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		List<Theater> theaters = theaterService.gettAllTheaters();
		model.addAttribute("theaters", theaters);
		model.addAttribute("employee", employee);
		System.out.println(employee);
		return "admin/employee/updateEmployee";
	}
	
	@PostMapping("/employeeDashboard/update/{employeeId}")
	public String updateAccountEmployee(
		    @PathVariable int employeeId,
		    @ModelAttribute Employee employee,
		    @ModelAttribute Account account,
		    @RequestParam("theaterId") int theaterId
		) {
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
	public ResponseEntity<String> deleteEmployee(@RequestParam("employeeId") int employeeId) {
	    Employee employee = employeeService.getEmployeeById(employeeId);
	    if (employee != null) {
	        int accountId = employee.getAccount().getAccountID();
	        employeeService.deleteEmployeeById(employeeId);
	        accountService.deleteAccountById(accountId);
	        return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>("Không tìm thấy nhân viên", HttpStatus.NOT_FOUND);
	    }
	}



}
