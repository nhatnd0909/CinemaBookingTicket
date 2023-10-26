package com.project.csm.controller.adminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.csm.model.Employee;
import com.project.csm.model.Rank;
import com.project.csm.service.adminService.adminRankService;
import com.project.csm.service.customerService.RankService;

@Controller
public class AdminRankController {

	@Autowired
	private adminRankService rankService;
	
	@GetMapping("/rankDashboard")
	public String dashboardRank(Model model) {
		List<Rank> ranks = rankService.gettAllRanks();
		model.addAttribute("ranks", ranks);
		return "admin/rank/rankDashboard";
	}
	
	@GetMapping("/rankDashboard/create")
	public String getCreateRank() {
		return "admin/rank/createRank";
	}
	
	@PostMapping("/rankDashboard/create")
	public String postCreateRank (@ModelAttribute Rank rank) {
		rankService.createRank(rank);
		return "redirect:/rankDashboard";
	}
	
	@GetMapping("/rankDashboard/update/{rankId}")
	public String getUpdateRank(@PathVariable Long rankId, Model model) {
		Rank rank = rankService.getRankById(rankId);
		model.addAttribute("rank",rank);
		return "admin/rank/updateRank";
	}
	
	@PostMapping("/rankDashboard/update/{rankId}")
	public String postUpdateRank( @PathVariable Long rankId,@ModelAttribute Rank rank ) {
		Rank updateRank = rankService.getRankById(rankId);
		updateRank.setType(rank.getType());
		updateRank.setDiscount(rank.getDiscount());
		rankService.updateRank(updateRank);
		return "redirect:/rankDashboard";
	}
	
	
	@PostMapping("/deleteRank")
	@ResponseBody
	public ResponseEntity<String> deleteEmployee(@RequestParam("rankId") Long rankId) {
		Rank rank = rankService.getRankById(rankId);
		if (rank != null) {
			rankService.deleteRankById(rankId);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy nhân viên", HttpStatus.NOT_FOUND);
		}
	}
}
