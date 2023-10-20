package com.project.csm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Admin;
import com.project.csm.model.Theater;
import com.project.csm.repository.TheaterRepository;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepository theaterRepository;
	@Autowired
	private AdminService adminService;
	
	public Theater addTheater(Theater theater) {
		Admin admin = adminService.getAdminById(theater.getAdmin().getAdminID());
		theater.setAdmin(admin);
		return theaterRepository.save(theater);
	}
	
	
}
