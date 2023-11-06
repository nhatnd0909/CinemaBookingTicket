package com.project.csm.controller.userController;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.service.customerService.MovieService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailController {

	@Autowired
	private MovieService movieService;

	@GetMapping("/details")
	public String showDetails(HttpSession session, Model model, @RequestParam String name) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		Movie movie = movieService.getMovieByID(name);
		model.addAttribute("movie", movie);

		String startDate = movieService.parseDateToString(movie.getStartDate());
		model.addAttribute("startDate", startDate);
		return "/user/details";
	}

}
