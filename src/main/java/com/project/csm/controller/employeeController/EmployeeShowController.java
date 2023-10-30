package com.project.csm.controller.employeeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeShowController {
 
	@GetMapping("/employee/show/create")
	public String getCreateEmployeeShow() {
		return "/employee/show/createShow";
	}
	
	@PostMapping("/employee/show/create")
	public String postCreateEmployeeShow() {
		return "redirect:/employee/show";
	}
	
	@GetMapping("/employee/show/update")
	public String getUpdateEmployeeShow() {
		return "/employee/show/updateShow";
	}
}
