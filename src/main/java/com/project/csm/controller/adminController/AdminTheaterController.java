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

import com.project.csm.model.Account;
import com.project.csm.model.Theater;
import com.project.csm.service.adminService.adminAccountService;
import com.project.csm.service.adminService.adminRankService;
import com.project.csm.service.adminService.adminTheaterService;

@Controller
public class AdminTheaterController {

	@Autowired
	private adminTheaterService theaterService;
	
	@Autowired
	private adminAccountService acountService;
	
	@GetMapping("/theaterDashboard")
	public String dashboardTheater(Model model) {
		List<Theater> theaters = theaterService.getAllTheaters();
		model.addAttribute("theaters", theaters);
		return "admin/theater/theaterDashboard";
	}
	
	@GetMapping("/theaterDashboard/create")
	public String getCreateTheater(Model model) {
		List<Account> admins = acountService.getAdmins();
		model.addAttribute("admins", admins);
		return "admin/theater/createTheater";
	}
	
	@PostMapping("/theaterDashboard/create")
	public String postCreateTheater (@ModelAttribute Theater theater) {
		theaterService.createTheater(theater);
		return "redirect:/theaterDashboard";
	}
	
	@GetMapping("/theaterDashboard/update/{theaterID}")
	public String getUpdateTheater(@PathVariable Long theaterID, Model model) {
		Theater theater = theaterService.getTheaterById(theaterID);
		model.addAttribute("theater", theater);
		return "admin/theater/updateTheater";
	}
	
	@PostMapping("/theaterDashboard/update/{theaterID}")
	public String postUpdateTheater( @PathVariable Long theaterID,@ModelAttribute Theater theater ) {
		Theater updateTheater = theaterService.getTheaterById(theaterID);
		updateTheater.setName(theater.getName());
		updateTheater.setAddress(theater.getAddress());
		updateTheater.setNumCinemaRoom(theater.getNumCinemaRoom());
		theaterService.updateTheater(updateTheater);
		return "redirect:/theaterDashboard";
	}
	
	
	@PostMapping("/deleteTheater")
	@ResponseBody
	public ResponseEntity<String> deleteTheater(@RequestParam("theaterID") Long theaterID) {
		Theater theater = theaterService.getTheaterById(theaterID);
		if (theater != null) {
			theaterService.deleteTheaterById(theaterID);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy rạp", HttpStatus.NOT_FOUND);
		}
	}
}
