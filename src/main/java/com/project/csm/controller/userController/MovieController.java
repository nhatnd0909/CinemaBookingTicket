package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.service.customerService.MovieService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MovieController {
	@Autowired
	private MovieService movieService;

	@GetMapping("/movies")
	public String showMovie(HttpSession session, Model model) {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		List<Movie> listMovie = movieService.getAllMovie();
		model.addAttribute("listMovie", listMovie);

		List<Movie> listPopular = movieService.getPopularMovie();
		model.addAttribute("listPopular", listPopular);

		List<Movie> listLatest = movieService.getLatestMovie();
		model.addAttribute("listLatest", listLatest);

		List<Movie> listOnGoing = movieService.getMoiveOnGoing();
		model.addAttribute("listOnGoing", listOnGoing);
		
		List<Movie> listUpComing = movieService.getMoiveUpComing();
		model.addAttribute("listUpComing", listUpComing);
		return "/user/movies";
	}

}
