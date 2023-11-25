package com.project.csm.controller.userController;

import java.text.ParseException;
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
import com.project.csm.service.customerService.TicketService;
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
	@Autowired
	private TicketService ticketService;

	@GetMapping("/ticketBooking")
	public String showTicketBooking(HttpSession session, Model model, @RequestParam String movie,
			@RequestParam String theater, @RequestParam String roomID, @RequestParam String showID)
			throws ParseException {
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
		String futureDate3Days = sService.getFutureDate(3);
		String futureDate4Days = sService.getFutureDate(4);

		model.addAttribute("currentDate", currentDate);
		model.addAttribute("tomorow", tomorow);
		model.addAttribute("nextDate", nextDate);
		model.addAttribute("futureDate3Days", futureDate3Days);
		model.addAttribute("futureDate4Days", futureDate4Days);

		List<Show> listShowCurentDate = eShowMovie.getAllShowByTheaterDateMovie(currentDate, theater, movie);
		List<Show> listShowTomorowDate = eShowMovie.getAllShowByTheaterDateMovie(tomorow, theater, movie);
		List<Show> listShowNextDate = eShowMovie.getAllShowByTheaterDateMovie(nextDate, theater, movie);
		model.addAttribute("listShowCurentDate", listShowCurentDate);
		model.addAttribute("movie", movie);
		model.addAttribute("listShowTomorowDate", listShowTomorowDate);
		model.addAttribute("listShowNextDate", listShowNextDate);

		List<SeatOfCinema> listSOC = sOfCinemaService.getAllSeat();
		model.addAttribute("listSOC", listSOC);
		model.addAttribute("roomID", roomID);

		List<String> listSeatOrder = ticketService.getTicketByRoomID(Long.parseLong(roomID), Long.parseLong(showID));
		model.addAttribute("listSeatOrder", listSeatOrder);
		session.setAttribute("selectedMovie", movie);
        session.setAttribute("selectedTheater", theater);
        
		return "/user/ticketBooking";
	}
}