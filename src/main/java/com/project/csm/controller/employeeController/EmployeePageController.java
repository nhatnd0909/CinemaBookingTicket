package com.project.csm.controller.employeeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeePageController {
	
	@GetMapping("/employee/Dashboard")
	public String employeeDashboard() {
		return "employee/employeeDashboard";
	}
	
	@GetMapping("/employee/service")
	public String showEmployeeService() {
		return "/employee/service/serviceDashboard"; 
	}
	
	@GetMapping("/employee/show")
	public String showEmployeeShow() {
		return "/employee/show/showDashboard"; 
	}
	
	@GetMapping("/employee/bookinghistory")
	public String bookingHistoryEmployee() {
		return "/employee/bookinghistory/bookingHistoryDashboard"; 
	}
	
	@GetMapping("/employee/profile")
	public String profileEmployee() {
		return "/employee/profileEmployee";
	}
	
	
	@GetMapping("/employee/changepassword")
	public String changepasswordEmployee() {
		return "/employee/changepasswordEmployee";
	}

}