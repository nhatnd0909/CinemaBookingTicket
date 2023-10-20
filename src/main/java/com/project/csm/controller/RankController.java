package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Rank;
import com.project.csm.service.RankService;

@RestController
@RequestMapping("/rank")
public class RankController {
	@Autowired
	private RankService rankService;

	@PostMapping("/add")
	public Rank addRank() {
		return rankService.addRank();
	}
	
	@PutMapping("/update/{id}")
	public Rank update(@PathVariable Long id,String type) {
		return rankService.updateRankByID(id, "Platinum");
	}
	
	
}
