package com.project.csm.controller.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminProfileController {

	@GetMapping("/adminDashboard/profile")
	public String adminProfile() {
		return "admin/adminprofile";
	}
}
