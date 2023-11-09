package com.project.csm.service.customerService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.TheaterRoom;
import com.project.csm.repository.TheaterRoomReposiory;

@Service
public class TheaterRoomService {
	@Autowired
	private TheaterRoomReposiory tReposiory;
	
	public List<TheaterRoom> getAllTheaterRoom(){
		
		return tReposiory.findAll();
	}
	
	public List<TheaterRoom> getRoomByTheaterName(String name){
		List<TheaterRoom> list = getAllTheaterRoom();
		List<TheaterRoom> listReturn = new ArrayList<>();
		for(TheaterRoom t:list) {
			if(t.getTheater().getName().equals(name)) {
				listReturn.add(t);
			}
		}
		return listReturn;
	}
	
	public List<TheaterRoom> getAllTheaterRoomByIdTheater(Long idTheater) {
		List<TheaterRoom> list = getAllTheaterRoom();
		List<TheaterRoom> listResult = new ArrayList<>();
		for(TheaterRoom t : list) {
			if(t.getTheater().getTheaterID()==idTheater) {
				listResult.add(t);
			}
		}
		return listResult;
	}
}
