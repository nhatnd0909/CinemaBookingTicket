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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.csm.model.Account;
import com.project.csm.model.Theater;
import com.project.csm.service.adminService.adminAccountService;
import com.project.csm.service.adminService.adminTheaterService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminTheaterController {

	@Autowired
	private adminTheaterService theaterService;

	@Autowired
	private adminAccountService acountService;

	@GetMapping("/theaterDashboard")
	public String dashboardTheater(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		List<Theater> theaters = theaterService.getAllTheaters();
		model.addAttribute("theaters", theaters);
		return "admin/theater/theaterDashboard";
	}

	@GetMapping("/theaterDashboard/create")
	public String getCreateTheater(Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		List<Account> admins = acountService.getAdmins();
		model.addAttribute("admins", admins);
		return "admin/theater/createTheater";
	}

	@PostMapping("/theaterDashboard/create")
	public String postCreateTheater(@ModelAttribute Theater theater, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		theaterService.createTheater(theater);
		return "redirect:/theaterDashboard";
	}

	@GetMapping("/theaterDashboard/update/{theaterID}")
	public String getUpdateTheater(@PathVariable Long theaterID, Model model, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		Theater theater = theaterService.getTheaterById(theaterID);
		model.addAttribute("theater", theater);
		if (!model.containsAttribute("error")) {
			model.addAttribute("error", "");
		}
		return "admin/theater/updateTheater";
	}

	@PostMapping("/theaterDashboard/update/{theaterID}")
	public String postUpdateTheater(@PathVariable Long theaterID, @ModelAttribute Theater theater,
			RedirectAttributes redirectAttributes, HttpSession session) {
		Account account = (Account) session.getAttribute("accountLoggedIn");
		if (account == null || !account.getRole().equals("admin")) {
			return "redirect:/";
		}
		Theater updateTheater = theaterService.getTheaterById(theaterID);
		if (theater.getNumCinemaRoom() < updateTheater.getNumCinemaRoom()) {
			redirectAttributes.addFlashAttribute("error",
					"Số lượng phòng mới phải lớn hơn hoặc bằng số lượng phòng hiện tại.");
			return "redirect:/theaterDashboard/update/{theaterID}";
		}
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
