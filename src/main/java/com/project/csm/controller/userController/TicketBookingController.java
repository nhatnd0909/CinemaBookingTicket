package com.project.csm.controller.userController;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.model.Customer;
import com.project.csm.model.SeatOfCinema;
import com.project.csm.model.Service;
import com.project.csm.model.Show;
import com.project.csm.model.TheaterRoom;
import com.project.csm.service.customerService.SeatOfCinemaService;
import com.project.csm.service.customerService.ServiceService;
import com.project.csm.service.customerService.TheaterRoomService;
import com.project.csm.service.employeeService.employeeShowMovie;

import jakarta.servlet.http.HttpSession;

@Controller
public class TicketBookingController {
	@Autowired
	private TheaterRoomService tRoomService;
	@Autowired
	private ServiceService sService;
	@Autowired
	private employeeShowMovie eShowMovie;
	@Autowired
	private SeatOfCinemaService sOfCinemaService;

	@GetMapping("/ticketBooking")
	public String showTicketBooking(HttpSession session, Model model, @RequestParam String movie,
			@RequestParam String theater) throws ParseException {
		Customer loggedInAccount = (Customer) session.getAttribute("loggedInAccount");
		Double discount = 0.0D;
		int loggedIn = 0;
		if (loggedInAccount == null) {
			loggedIn = 0;
		} else {
			loggedIn = 1;
			discount = loggedInAccount.getRank().getDiscount();
		}
		model.addAttribute("discount", discount);
		
		model.addAttribute("loggedIn", loggedIn);
		model.addAttribute("loggedInAccount", loggedInAccount);
		////////////////////////////////////////////////////////////////////////////////////////
		List<TheaterRoom> listTRoom = tRoomService.getRoomByTheaterName(theater);
		model.addAttribute("theater", theater);
		model.addAttribute("listTRoom", listTRoom);

		List<Service> listService = sService.getAllService();
		model.addAttribute("listService", listService);

		String currentDate = sService.getCurrentDate();
		String tomorow = sService.getTomorrowDate();
		String nextDate = sService.getNextDayDate();
		model.addAttribute("currentDate", currentDate);
		model.addAttribute("tomorow", tomorow);
		model.addAttribute("nextDate", nextDate);

		List<Show> listShowCurentDate = eShowMovie.getAllShowByTheaterDateMovie(currentDate, theater, movie);
		List<Show> listShowTomorowDate = eShowMovie.getAllShowByTheaterDateMovie(tomorow, theater, movie);
		List<Show> listShowNextDate = eShowMovie.getAllShowByTheaterDateMovie(nextDate, theater, movie);
		model.addAttribute("listShowCurentDate", listShowCurentDate);
		model.addAttribute("movie", movie);
		model.addAttribute("listShowTomorowDate", listShowTomorowDate);
		model.addAttribute("listShowNextDate", listShowNextDate);

		//////////////////////////////////////////////////////////////////
		List<SeatOfCinema> listSOC = sOfCinemaService.getAllSeatByRoomID(1L);
		model.addAttribute("listSOC", listSOC);
		return "/user/ticketBooking";
	}
}
