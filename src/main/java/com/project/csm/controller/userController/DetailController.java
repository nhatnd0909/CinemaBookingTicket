package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.model.Theater;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.TheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailController {

	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService tService;

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

		Movie movie = movieService.getMovieByName(name);
		model.addAttribute("movie", movie);

		String startDate = movieService.parseDateToString(movie.getStartDate());
		model.addAttribute("startDate", startDate);

		List<Theater> listTheater = tService.getAllTheater();
		model.addAttribute("listTheater", listTheater);

		return "/user/details";
	}

}
