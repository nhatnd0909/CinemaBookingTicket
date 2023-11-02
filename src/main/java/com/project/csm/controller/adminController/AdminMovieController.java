package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.csm.model.Movie;
import com.project.csm.service.adminService.adminMovieNotFoundException;
import com.project.csm.service.adminService.adminMovieService;

import org.springframework.ui.Model;

@Controller
public class AdminMovieController {
	@Autowired
	private adminMovieService service;

	@GetMapping("/admin/movies")
	public String showMovieList(Model model) {
		List<Movie> listMovies = service.listAll();
		model.addAttribute("listMovie", listMovies);

		return "admin/movie/movieDashboard";
	}

	@GetMapping("/admin/movies/new")
	public String showNewForm(Model model) {
		model.addAttribute("movie", new Movie());
		model.addAttribute("pageTitle", "Add new Movie");
		return "admin/movie/createMovie";
	}

	@PostMapping("/admin/movies/save")
	public String saveMovie(Movie movie, RedirectAttributes ra) {
		service.save(movie);
		ra.addFlashAttribute("message", "the movie have been saved successfully.");
		return "redirect:/admin/movies";
	}

	@GetMapping("admin/movies/edit/{movieID}")
	public String showEditForm(@PathVariable("movieID") Integer movieID, Model model, RedirectAttributes ra) {
		try {
			Movie movie = service.get(movieID);
			model.addAttribute("movie", movie);
			model.addAttribute("pageTitle", "Edit Movie: (ID: " + movieID + ")");
			return "admin/movie/createMovie";
		} catch (adminMovieNotFoundException e) {
			ra.addFlashAttribute("message", "the movie have been saved successfully.");
			return "redirect:/admin/movies";

		}
	}

	@GetMapping("admin/movies/delete/{movieID}")
	public String deleteMovie(@PathVariable("movieID") Integer movieID, RedirectAttributes ra) {
		try {
			service.delete(movieID);
			ra.addFlashAttribute("message", "The movie ID " + movieID + " has been deleted.");
		} catch (adminMovieNotFoundException e) {
			ra.addFlashAttribute("message", e.getMessage());
		}
		return "redirect:/admin/movies";
	}
}
