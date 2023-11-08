package com.project.csm.service.customerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Theater;
import com.project.csm.repository.TheaterRepository;

@Service
public class TheaterService {
	@Autowired
	private TheaterRepository tRepository;

	public List<Theater> getAllTheater() {
		return tRepository.findAll();
	}
	
	public Theater getTheaterByName(String name) {
		List<Theater> list = getAllTheater();
		for(Theater t:list) {
			if(t.getName().equals(name)) {
				return t;
			}
		}
		return null;
	}
}
