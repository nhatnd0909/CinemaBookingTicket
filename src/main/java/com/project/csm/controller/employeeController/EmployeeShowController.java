package com.project.csm.controller.employeeController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Account;
import com.project.csm.model.Employee;
import com.project.csm.model.Show;
import com.project.csm.model.TheaterRoom;
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

	@GetMapping("/employee/show")
	public String showEmployeeService(Model model, HttpSession session) {
		List<Show> shows = employeeShowMovie.getAllShows();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		List<String> formattedDayTimes = new ArrayList<>();
		for (Show show : shows) {
			String formattedDayTime = sdf.format(show.getDayTime());
			formattedDayTimes.add(formattedDayTime);
		}
		model.addAttribute("formattedDayTimes", formattedDayTimes);
		model.addAttribute("shows", shows);

		Account accountLoggedIn = (Account) session.getAttribute("accountLoggedIn");
		Employee employee = eService.getEmployeeByIdAccount(accountLoggedIn.getAccountID());
		List<TheaterRoom> listTheaterRoom = theaterRoomService
				.getAllTheaterRoomByIdTheater(employee.getTheater().getTheaterID());
		
		String nameTheater = employee.getTheater().getName();
		model.addAttribute("nameTheater", nameTheater);
		model.addAttribute("listTheaterRoom", listTheaterRoom);
		
		return "/employee/show/showDashboard";

	}

//	@GetMapping("/employee/show/detail")
//	public String getUpdateEmployeeShow() {
//		return "/employee/show/detailShow";
//	}

	@GetMapping("/employee/show/detail")
	public String showEmployeeShow(Model model) {
		List<Show> shows = employeeShowMovie.getAllShows();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		List<String> formattedDayTimes = new ArrayList<>();

		for (Show show : shows) {
			String formattedDayTime = sdf.format(show.getDayTime());
			formattedDayTimes.add(formattedDayTime);
		}
		model.addAttribute("formattedDayTimes", formattedDayTimes);
		model.addAttribute("shows", shows);
		return "/employee/show/detailShow";
	}

//	@PostMapping("/employee/show/update")
//	public String postUpdateEmployeeShow() {
//			return "redirect:/employee/show";
//	}
}
