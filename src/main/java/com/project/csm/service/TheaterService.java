package com.project.csm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Theater;
import com.project.csm.repository.TheaterRepository;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepository theaterRepositoy ; 
	
	public List<Theater> gettAllTheaters(){
		return theaterRepositoy.findAll();
	}
	public Theater getTheaterById(int theaterId) {
		 return theaterRepositoy.findById(theaterId).orElse(null);
	}
}
