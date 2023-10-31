package com.project.csm.controller.employeeController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.model.Show;
import com.project.csm.service.employeeService.employeeShowMovie;

@Controller
public class EmployeeShowController {

	@Autowired
	private employeeShowMovie employeeShowMovie;

	@GetMapping("/employee/show")
	public String showEmployeeService(Model model) {
		List<Show> shows = employeeShowMovie.getAllShows();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		List<String> formattedDayTimes = new ArrayList<>();

		for (Show show : shows) {
			String formattedDayTime = sdf.format(show.getDayTime());
			formattedDayTimes.add(formattedDayTime);
		}
		model.addAttribute("formattedDayTimes", formattedDayTimes);
		model.addAttribute("shows", shows);
		System.out.println(shows);
		return "/employee/show/showDashboard";
	}
}
