package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
	public void addNewRank() {
		rankService.addNewRank();
	}

	@GetMapping("/get/{rankID}")
	public Rank getRankByID(@PathVariable Long rankID) {
		return rankService.getRankByID(rankID);
	}

	@GetMapping("/getall")
	public List<Rank> getALLRank() {
		return rankService.getAll();
	}
}
