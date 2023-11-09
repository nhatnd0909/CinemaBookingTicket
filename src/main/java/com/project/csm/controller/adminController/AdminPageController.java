package com.project.csm.controller.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminPageController {

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


//	@GetMapping("/movieDashboard")
//	public String showMovieAdmin() {
//
//		return "admin/movieDashboard";
//	}

	@GetMapping("/revenue")
	public String showRevenue() {

		return "admin/revenue";
	}

}
