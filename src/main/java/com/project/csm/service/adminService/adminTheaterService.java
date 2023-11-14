package com.project.csm.service.adminService;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Theater;
import com.project.csm.model.TheaterRoom;
import com.project.csm.repository.TheaterRepository;

@Service
public class adminTheaterService {
	@Autowired
	private TheaterRepository theaterRepositoy;

	public List<Theater> getAllTheaters() {
		return theaterRepositoy.findAll();
	}

	public Theater getTheaterById(Long theaterId) {
		return theaterRepositoy.findById(theaterId).orElse(null);
	}

	public void createTheater(Theater theater) {
		theaterRepositoy.save(theater);
	}

	public void updateTheater(Theater theater) {
		theaterRepositoy.save(theater);
	}

	public void deleteTheaterById(Long theaterID) {
		theaterRepositoy.deleteById(theaterID);
	}

	public List<TheaterRoom> getRoomsForTheater(Long theaterID) {
		Theater theater = getTheaterById(theaterID);
		return theater != null ? theater.getRooms() : Collections.emptyList();
	}
}