package com.project.csm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("/adminDashboard")
	public String showAdminDashboard() {

		return "admin/adminDashboard";
	}

	@GetMapping("/blank-page")
	public String showBlankPage() {

		return "admin/blank-page";
	}

	@GetMapping("/chart")
	public String showChart() {

		return "admin/chart";
	}

	@GetMapping("/employeeDashboard")
	public String showEmployeeAdmin() {

		return "admin/employeeDashboard";
	}

	@GetMapping("/movieDashboard")
	public String showMovieAdmin() {

		return "admin/movieDashboard";
	}

	@GetMapping("/revenue")
	public String showRevenue() {

		return "admin/revenue";
	}

	@GetMapping("/userDashboard")
	public String showUserDashboard() {

		return "admin/userDashboard";
	}
}
