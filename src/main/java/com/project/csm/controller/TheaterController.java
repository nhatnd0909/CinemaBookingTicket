package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Theater;
import com.project.csm.service.TheaterService;

@RestController
@RequestMapping("/theater")
public class TheaterController {
	@Autowired
	private TheaterService theaterService;

	@PostMapping("/add")
	public Theater addTheater(@RequestBody Theater theater) {
		return theaterService.addTheater(theater);
	}
	
}
