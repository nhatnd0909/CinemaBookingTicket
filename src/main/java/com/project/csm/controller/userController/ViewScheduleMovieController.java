package com.project.csm.controller.userController;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.model.Show;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.employeeService.employeeShowMovie;

import jakarta.servlet.http.HttpSession;

import com.project.csm.model.Customer;

import jakarta.servlet.http.HttpSession;

@Controller
public class ViewScheduleMovieController {
	@Autowired
	private MovieService movieService;
	@Autowired
	private ServiceService sService;
	@Autowired
	private employeeShowMovie eShowMovie;

	@GetMapping("/view-schedule-movie")
	public String ViewScheduleMovie(Model model, HttpSession session, @RequestParam String theater)
			throws ParseException {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
		}
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);

		List<Movie> listMovie = movieService.getMoiveOnGoing();
		String currentDate = sService.getCurrentDate();
		String tomorow = sService.getTomorrowDate();
		String nextDate = sService.getNextDayDate();
		String futureDate3Days = sService.getFutureDate(3);
		String futureDate4Days = sService.getFutureDate(4);

		model.addAttribute("currentDate", currentDate);
		model.addAttribute("tomorow", tomorow);
		model.addAttribute("nextDate", nextDate);
		model.addAttribute("futureDate3Days", futureDate3Days);
		model.addAttribute("futureDate4Days", futureDate4Days);
		model.addAttribute("listMovie", listMovie);

		List<Show> listShowCurentDate = eShowMovie.getAllShowByTheaterDate(currentDate, theater);
		List<Show> listShowTomorowDate = eShowMovie.getAllShowByTheaterDate(tomorow, theater);
		List<Show> listShowNextDate = eShowMovie.getAllShowByTheaterDate(nextDate, theater);
		model.addAttribute("listShowCurentDate", listShowCurentDate);
		model.addAttribute("listShowTomorowDate", listShowTomorowDate);
		model.addAttribute("listShowNextDate", listShowNextDate);
		return "/user/viewScheduleMovie";
	}
	
}
