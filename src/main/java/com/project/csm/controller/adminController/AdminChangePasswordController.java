package com.project.csm.controller.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminChangePasswordController {
	
	
	@GetMapping("/adminDashboard/changepassword")
	public String changePassword() {
		return "admin/changepassword";
	}
}
