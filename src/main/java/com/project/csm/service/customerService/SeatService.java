package com.project.csm.service.customerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Seat;
import com.project.csm.repository.SeatRepository;

@Service
public class SeatService {
	@Autowired
	private SeatRepository sRepository;

	public List<Seat> getAllSeat() {
		return sRepository.findAll();
	}
}
