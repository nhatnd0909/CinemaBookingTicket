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
	@GetMapping("/showRooms/{theaterID}/create")
	public String getCreateTheaterRoom(@PathVariable Long theaterID, Model model) {
	    Theater theater = theaterService.getTheaterById(theaterID);
	    model.addAttribute("theater", theater);
	    if (!model.containsAttribute("error")) {
	        model.addAttribute("error", ""); 
	    }
	    return "admin/room/createTheaterRoom";
	}
	
	@PostMapping("/showRooms/{theaterID}/create")
	public String postCreateTheaterRoom(@PathVariable Long theaterID, @ModelAttribute TheaterRoom room, RedirectAttributes redirectAttributes) {
	    Theater theater = theaterService.getTheaterById(theaterID);
	    if (theater.getNumCinemaRoom() <= theaterRoomService.getNumRoomsByTheater(theater)) {
	        redirectAttributes.addFlashAttribute("error", "Số lượng phòng đã đạt tới giới hạn.");
	        return "redirect:/showRooms/{theaterID}/create";
	    }

	    theaterRoomService.createTheaterRoom(room);
	    return "redirect:/showRooms/{theaterID}";
	}

	
	@GetMapping("/showRooms/{theaterID}/update/{roomID}")
	public String getUpdateTheaterRoom(@PathVariable Long theaterID,@PathVariable Long roomID, Model model) {
		Theater theater = theaterService.getTheaterById(theaterID);
	    model.addAttribute("theater", theater);
		TheaterRoom room = theaterRoomService.getTheaterRoomById(roomID);
		model.addAttribute("room", room);
		return "admin/room/updateTheaterRoom";
	}
	
	@PostMapping("/showRooms/{theaterID}/update/{roomID}")
	public String postUpdateTheaterRoom( @PathVariable Long roomID,@ModelAttribute TheaterRoom theaterRoom ) {
		TheaterRoom updateTheaterRoom = theaterRoomService.getTheaterRoomById(roomID);
		updateTheaterRoom.setName(theaterRoom.getName());
		updateTheaterRoom.setNumOfSeat(theaterRoom.getNumOfSeat());
		theaterRoomService.updateTheaterRoom(updateTheaterRoom);
		return "redirect:/showRooms/{theaterID}";
	}
	
	
	@PostMapping("/deleteTheaterRoom")
	@ResponseBody
	public ResponseEntity<String> deleteRoom(@RequestParam("roomID") Long roomID, @RequestParam("theaterID") Long theaterID) {
	    TheaterRoom room = theaterRoomService.getTheaterRoomById(roomID);
	    if (room != null) {
	        theaterRoomService.deleteTheaterRoomById(roomID);
	        return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>("Không tìm thấy phòng chiếu", HttpStatus.NOT_FOUND);
	    }
	}


}
