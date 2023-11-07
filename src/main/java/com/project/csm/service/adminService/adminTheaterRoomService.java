package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Theater;
import com.project.csm.model.TheaterRoom;
import com.project.csm.repository.TheaterRoomRepository;

@Service
public class adminTheaterRoomService {

	@Autowired
	private TheaterRoomRepository theaterRoomRepository;
	
	public List<TheaterRoom> getAllTheaterRooms(){
		return theaterRoomRepository.findAll();
	}
	public TheaterRoom getTheaterRoomById(Long roomID) {
		 return theaterRoomRepository.findById(roomID).orElse(null);
	}
	public void createTheaterRoom(TheaterRoom room) {
		 theaterRoomRepository.save(room);
	}
	
	public void updateTheaterRoom(TheaterRoom room) {
		theaterRoomRepository.save(room);
	}
	
	public void deleteTheaterRoomById(Long roomID) {
		theaterRoomRepository.deleteById(roomID);
	}
	
}
