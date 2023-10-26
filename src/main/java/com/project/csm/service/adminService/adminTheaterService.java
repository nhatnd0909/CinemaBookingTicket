package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.csm.model.Theater;
import com.project.csm.repository.TheaterRepository;

@Service
public class adminTheaterService {
	@Autowired
	private TheaterRepository theaterRepositoy ; 
	
	public List<Theater> gettAllTheaters(){
		return theaterRepositoy.findAll();
	}
	public Theater getTheaterById(Long theaterId) {
		 return theaterRepositoy.findById(theaterId).orElse(null);
	}
}
