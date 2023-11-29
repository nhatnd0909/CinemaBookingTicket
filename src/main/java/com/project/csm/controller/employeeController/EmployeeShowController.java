package com.project.csm.controller.employeeController;

import java.math.BigDecimal;
import java.sql.Time;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Movie;
import com.project.csm.model.Show;
import com.project.csm.model.TheaterRoom;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TheaterRoomService;
import com.project.csm.service.employeeService.EmployeeService;
import com.project.csm.service.employeeService.employeeShowMovie;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeShowController {

	@Autowired
	private employeeShowMovie employeeShowMovie;
	@Autowired
	private EmployeeService eService;
	@Autowired
	private TheaterRoomService theaterRoomService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private ServiceService serviceService;

	@GetMapping("/employee/show")
	public String showEmployeeService(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		Account accountLoggedIn = (Account) session.getAttribute("accountLoggedIn");
		Employee employee = eService.getEmployeeByIdAccount(accountLoggedIn.getAccountID());
		List<TheaterRoom> listTheaterRoom = theaterRoomService
				.getAllTheaterRoomByIdTheater(employee.getTheater().getTheaterID());

		String nameTheater = employee.getTheater().getName();
		model.addAttribute("nameTheater", nameTheater);
		model.addAttribute("listTheaterRoom", listTheaterRoom);

		String toDay = serviceService.getCurrentDate();
		String tomorow = serviceService.getTomorrowDate();
		String nextDate = serviceService.getNextDayDate();
		model.addAttribute("toDay", toDay);
		model.addAttribute("tomorow", tomorow);
		model.addAttribute("nextDate", nextDate);
		return "/employee/show/showDashboard";

	}

	@GetMapping("/employee/show/detail")
	public String showEmployeeShow(Model model, @RequestParam String start, @RequestParam String end,
			@RequestParam String date, @RequestParam Long roomID, HttpSession session) throws ParseException {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		List<Movie> listMovie = movieService.getMoiveOnGoing();

		String dateReturn = employeeShowMovie.getDate(date);
		Show show = employeeShowMovie.getShowByDate(dateReturn, start, roomID);
		String startTime = start;
		String endTime = end;

		BigDecimal price = new BigDecimal("0.00");
		int comparePrice = 0;
		Movie movie = new Movie();
		Long movieID = 0L;
		TheaterRoom room = theaterRoomService.getRoomByID(roomID);
		if (show != null) {
			startTime = show.getStartTime().toString();
			endTime = show.getEndTime().toString();
			price = new BigDecimal(show.getPrice().toString());
			BigDecimal priceTest = new BigDecimal("0.00");
			comparePrice = price.compareTo(priceTest);
			movie = show.getMovie();
			movieID = movie.getMovieID();

		}

		model.addAttribute("comparePrice", comparePrice);
		model.addAttribute("room", room);
		model.addAttribute("dateReturn", dateReturn);
		model.addAttribute("startTime", startTime);
		model.addAttribute("endTime", endTime);
		model.addAttribute("price", price);
		model.addAttribute("movie", movie);
		model.addAttribute("movieID", movieID);
		model.addAttribute("listMovie", listMovie);

		return "/employee/show/detailShow";
	}

	@PostMapping("/employee/show/createShow")
	public String createNewShow(@RequestParam Long roomID, @RequestParam String date, @RequestParam String start,
			@RequestParam String end, @RequestParam String movieID, @RequestParam String price, Model model,
			HttpSession session) throws ParseException {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("employee")) {
			return "redirect:/";
		}
		Account accountLoggedIn = (Account) session.getAttribute("accountLoggedIn");
		// Employee
		Employee employee = eService.getEmployeeByEmail(accountLoggedIn.getEmail());
		// Movie
		Movie movie = movieService.getMovieByID(Long.parseLong(movieID));
		// TheaterRoom
		TheaterRoom room = theaterRoomService.getRoomByID(roomID);
		// date
		Date dateCreate = employeeShowMovie.parseDate(date);
		// Time start
		Time timeStart = employeeShowMovie.parseStringToTime(start);
		// Time end
		Time timeEnd = employeeShowMovie.parseStringToTime(end);
		// price
		BigDecimal priceCreate = new BigDecimal(price);

		Show show = new Show(employee, movie, room, priceCreate, dateCreate, timeStart, timeEnd);
		employeeShowMovie.crateNewShow(show);

		return "redirect:/employee/show";
	}
}
