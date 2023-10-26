package com.project.csm.AdminController;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Theater;
import com.project.csm.service.AccountService;
import com.project.csm.service.EmployeeService;
import com.project.csm.service.TheaterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;


@Controller
public class AdminController {

	@Autowired
    private TheaterService theaterService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private EmployeeService employeeService;
	

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
