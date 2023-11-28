package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.Account;
import com.project.csm.model.Genre;
import com.project.csm.service.adminService.adminGenreService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminGenreController {
	@Autowired
	private adminGenreService genreService;

	@GetMapping("/genreDashboard")
	public String showGenreAdmin(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}

		List<Genre> genres = genreService.getAllGenre();
		model.addAttribute("genres", genres);

		return "admin/genre/genreDashboard";
	}

	@GetMapping("/genreDashboard/create")
	public String createGenreAdmin(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		return "admin/genre/createGenre";
	}

	@PostMapping("/genreDashboard/create")
	public String postCreateGenreAdmin(@ModelAttribute Genre genre, Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		genreService.createGenre(genre);
		return "redirect:/genreDashboard";
	}

	@GetMapping("/genreDashboard/update/{genreId}")
	public String getUpdateGenre(@PathVariable Long genreId, Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		Genre genres = genreService.getGenreById(genreId);
		System.out.println(genres.getGenreName());
		model.addAttribute("genre", genres);
		return "admin/genre/updateGenre";
	}

	@PostMapping("/genreDashboard/update/{genreId}")
	public String postUpdateGenre(@PathVariable Long genreId, @ModelAttribute Genre genres, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		Genre updateGenre = genreService.getGenreById(genreId);
		updateGenre.setGenreName(genres.getGenreName());
		genreService.updateGenre(updateGenre);
		return "redirect:/genreDashboard";
	}

	@PostMapping("/deleteGenre")
	@ResponseBody
	public ResponseEntity<String> deleteGenre(@RequestParam("genreId") Long genreId) {
		Genre genre = genreService.getGenreById(genreId);
		if (genre != null) {
			genreService.deleteGenreById(genreId);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy genre", HttpStatus.NOT_FOUND);
		}
	}
}
