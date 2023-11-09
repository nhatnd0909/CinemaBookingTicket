package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Genre;
import com.project.csm.model.Movie;
import com.project.csm.service.adminService.adminMovieNotFoundException;
import com.project.csm.service.adminService.adminMovieService;

import org.springframework.ui.Model;

@Controller
public class AdminMovieController {
	@Autowired
	private adminMovieService service;

	@GetMapping("/movieDashboard")
	public String showMovieList(Model model) {
		List<Movie> listMovies = service.listAll();
		model.addAttribute("listMovie", listMovies);

		return "admin/movie/movieDashboard";
	}
	
	@GetMapping("/movieDashboard/create")
	public String createMovieAdmin(Model model) {

		return "admin/movie/createMovie";
	}
	
	@PostMapping("/movieDashboard/create")
	public String postCreateMovieAdmin(@ModelAttribute Movie movie, Model model) {
		service.createMovie(movie);
		return "redirect:/movieDashboard";
	}
	
	@GetMapping("/movieDashboard/update/{movieId}")
	public String getUpdateMovie(@PathVariable Long movieId, Model model) {
		Movie movies = service.getMovieById(movieId);
		System.out.println(movies.getName());
		model.addAttribute("movie",movies);
		return "admin/movie/updateMovie";
	}
	
	@PostMapping("/movieDashboard/update/{movieId}")
	public String postUpdateGenre( @PathVariable Long movieId,@ModelAttribute Movie movie ) {
		Movie updateMovie = service.getMovieById(movieId);
		updateMovie.setName(movie.getName());
		updateMovie.setActor(movie.getActor());
		updateMovie.setDirector(movie.getDirector());
		updateMovie.setDuration(movie.getDuration());
		updateMovie.setLanguage(movie.getLanguage());
		updateMovie.setDescription(movie.getDescription());
		updateMovie.setUrlTrailer(movie.getUrlTrailer());
		updateMovie.setStatus(movie.getStatus());
		service.updateMovie(updateMovie);
		return "redirect:/movieDashboard";
	}
	
	
	@PostMapping("/deleteMovie")
	@ResponseBody
	public ResponseEntity<String> deleteMovie(@RequestParam("movieId") Long movieId) {
		Movie movie = service.getMovieById(movieId);
		if (movie != null) {
			service.deleteMovieById(movieId);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy movie", HttpStatus.NOT_FOUND);
		}
	}
}