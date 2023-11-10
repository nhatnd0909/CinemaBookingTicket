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

import com.project.csm.model.Theater;
import com.project.csm.model.TheaterRoom;
import com.project.csm.service.adminService.adminTheaterRoomService;
import com.project.csm.service.adminService.adminTheaterService;

@Controller
public class AdminTheaterRoomController {
	
	@Autowired
	private adminTheaterRoomService theaterRoomService;

	@Autowired
	private adminTheaterService theaterService;

	@GetMapping("/showRooms/{theaterID}")
    public String showRooms(@PathVariable Long theaterID, Model model) {
        List<TheaterRoom> rooms = theaterService.getRoomsForTheater(theaterID);
        Theater theater = theaterService.getTheaterById(theaterID);
        model.addAttribute("theater", theater);
        model.addAttribute("rooms", rooms);
        return "admin/room/roomDashboard";
  }
	@GetMapping("/roomDashboard/create")
	public String getCreateTheaterRoom(Model model) {
		List<Theater> theaters = theaterService.getAllTheaters();
		model.addAttribute("theaters", theaters);
		return "admin/room/createTheaterRoom";
	}
	
	@PostMapping("/roomDashboard/create")
	public String postCreateTheaterRoom(@ModelAttribute TheaterRoom room) {
		theaterRoomService.createTheaterRoom(room);
		return "redirect:/roomDashboard";
	}
	
	@GetMapping("/roomDashboard/update/{roomID}")
	public String getUpdateTheaterRoom(@PathVariable Long roomID, Model model) {
		TheaterRoom room = theaterRoomService.getTheaterRoomById(roomID);
		model.addAttribute("room", room);
		return "admin/room/updateTheaterRoom";
	}
	
	@PostMapping("/roomDashboard/update/{roomID}")
	public String postUpdateTheaterRoom( @PathVariable Long roomID,@ModelAttribute TheaterRoom theaterRoom ) {
		TheaterRoom updateTheaterRoom = theaterRoomService.getTheaterRoomById(roomID);
		updateTheaterRoom.setName(theaterRoom.getName());
		updateTheaterRoom.setNumOfSeat(theaterRoom.getNumOfSeat());
		theaterRoomService.updateTheaterRoom(updateTheaterRoom);
		return "redirect:/roomDashboard";
	}
	
	
	@PostMapping("/deleteTheaterRoom")
	@ResponseBody
	public ResponseEntity<String> deleteRoom(@RequestParam("roomID") Long roomID) {
		TheaterRoom room = theaterRoomService.getTheaterRoomById(roomID);
		if (room != null) {
			theaterRoomService.deleteTheaterRoomById(roomID);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy rạp", HttpStatus.NOT_FOUND);
		}
	}
}
