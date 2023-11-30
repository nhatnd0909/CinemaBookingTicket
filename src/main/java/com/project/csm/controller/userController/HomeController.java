package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService theaterService;

	@GetMapping("/")
	public String showDefaultPage(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		Account accountLoggedIn = (Account) session.getAttribute("accountLoggedIn");
		int loggedIn = 0;
		if (accountLoggedIn == null) {
			loggedIn = 0;
		} else if (accountLoggedIn.getRole().equals("user")) {
			loggedIn = 1;
		} else if (accountLoggedIn.getRole().equals("employee")) {
			loggedIn = 2;
		} else if (accountLoggedIn.getRole().equals("admin")) {
			loggedIn = 3;
		}
		model.addAttribute("accountLoggedIn", accountLoggedIn);
		
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		List<Movie> popularMovies = movieService.getLatestMovie();
		model.addAttribute("popularMovies", popularMovies);

		List<Movie> allMovies = movieService.getAllMovie();
		model.addAttribute("allMovies", allMovies);

		List<Theater> listTheater = theaterService.getAllTheater();
		model.addAttribute("listTheater", listTheater);

		
		return "/user/index";
	}
}
