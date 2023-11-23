package com.project.csm.controller.userController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewScheduleMovieController {
	@GetMapping("/view-schedule-movie")
	public String ViewScheduleMovie() {
		return "/user/viewScheduleMovie";
	}
}
