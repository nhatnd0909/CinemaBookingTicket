package com.project.csm.controller.employeeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeServiceController {

	@GetMapping("/employee/service/create")
	public String getCreateEmployeeService() {
		return "/employee/service/createService";
	}
	
	@PostMapping("/employee/service/create")
	public String postCreateEmployeeService() {
			return "redirect:/employee/service";
	}
	
	@GetMapping("/employee/service/update")
	public String getUpdateEmployeeService() {
		return "/employee/service/updateService";
	}
	
	
	@PostMapping("/employee/service/update")
	public String postUpdateEmployeeService() {
			return "redirect:/employee/service";
	}
}
