package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Admin;
import com.project.csm.model.Customer;
import com.project.csm.model.Employee;
import com.project.csm.model.Movie;
import com.project.csm.service.adminService.AdminService;
import com.project.csm.service.customerService.AccountService;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.employeeService.EmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SigninController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private AdminService adminService;

	@GetMapping("/signin")
	public String showSignin(Model model) {
		model.addAttribute("email", "");
		model.addAttribute("mess", "");
		return "/user/signin";
	}

	@PostMapping("/signin")
	public String signin(Model model, @RequestParam String email, @RequestParam String password, HttpSession session) {
		if (!accountService.isEmailExists(email)) {
			model.addAttribute("mess", "Không có tài khoản nào với email này");
			model.addAttribute("email", email);
			return "/user/signin";
		}
		if (!accountService.isPasswordCorrect(email, password)) {
			model.addAttribute("mess", "Wrong password");
			model.addAttribute("email", email);
			return "/user/signin";
		}
//		String selectedMovie = (String) session.getAttribute("selectedMovie");
//        String selectedTheater = (String) session.getAttribute("selectedTheater");
		Customer customer = customerService.findCustomerByEmail(email);
		session.setAttribute("loggedInAccount", customer);

		Account accountLoggedIn = accountService.findAccountByEmail(email);
		session.setAttribute("accountLoggedIn", accountLoggedIn);
		if (accountLoggedIn.getRole().equals("employee")) {
			Employee employee = employeeService.getEmployeeByIdAccount(accountLoggedIn.getAccountID());
			session.setAttribute("employee", employee);
			return "redirect:/employee/bookinghistory";
		} else if (accountLoggedIn.getRole().equals("admin")) {
			Admin admin = adminService.getAdminByAccountID(accountLoggedIn.getAccountID());
			session.setAttribute("admin", admin);
			return "redirect:/revenue";
		}
		///////////////////////////////////////////////////////////////////////////////////////////////
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		List<Movie> popularMovies = movieService.getPopularMovie();
		model.addAttribute("popularMovies", popularMovies);

		List<Movie> allMovies = movieService.getAllMovie();
		model.addAttribute("allMovies", allMovies);

//		try {
//	        selectedMovie = URLEncoder.encode(selectedMovie, "UTF-8");
//	        selectedTheater = URLEncoder.encode(selectedTheater, "UTF-8");
//	    } catch (UnsupportedEncodingException e) {
//	        e.printStackTrace(); // Handle the exception according to your application's requirements
//	    }

		/*
		 * if(selectedMovie != null && selectedTheater != null) { return
		 * "redirect:/chooseseat?movie=" + selectedMovie + "&theater=" +
		 * selectedTheater; } else { return "/user/index"; }
		 */
		return "redirect:/";
	}

}
