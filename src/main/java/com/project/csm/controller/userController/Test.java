package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Movie;
import com.project.csm.model.Theater;
import com.project.csm.model.TheaterRoom;
import com.project.csm.service.customerService.MovieService;
import com.project.csm.service.customerService.TheaterRoomService;
import com.project.csm.service.customerService.TheaterService;

@RestController
public class Test {
	@Autowired
	private MovieService movieService;

	@Autowired
	private TheaterRoomService tRoomService;
	@Autowired
	private TheaterService tService;

	@GetMapping("/get")
	public List<Movie> getAllMovie() {
		return movieService.getAllMovie();
	}

	@GetMapping("/get1")
	public List<Movie> getAllCus() {
		return movieService.getPopularMovie();
	}

	@GetMapping("/get2")
	public String getEntityById(@RequestParam Long id) {

		return "Bạn đã gửi request với id = " + id;
	}

	@GetMapping("/get3")
	public List<TheaterRoom> getAllTheaterRoom() {

		return tRoomService.getAllTheaterRoom();
	}

	@GetMapping("/get4")
	public List<Theater> getAllTheater() {

		return tService.getAllTheater();
	}

	@GetMapping("/get5")
	public List<TheaterRoom> getAllTheate(@RequestParam String theater) {

		return tRoomService.getRoomByTheaterName(theater);
	}

}
