package com.project.csm.service.customerService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.SeatOfCinema;
import com.project.csm.repository.SeatOfCinemaRepository;

@Service
public class SeatOfCinemaService {
	@Autowired
	private SeatOfCinemaRepository sRepository;

	public List<SeatOfCinema> getAllSeat() {
		return sRepository.findAll();
	}

	public List<SeatOfCinema> getAllSeatByRoomID(Long idRoom) {
		List<SeatOfCinema> list = getAllSeat();
		List<SeatOfCinema> listReturn = new ArrayList<>();
		for (SeatOfCinema s : list) {
			if (s.getTheaterRoom().getRoomID() == idRoom) {
				listReturn.add(s);
			}
		}
		return listReturn;
	}
}
