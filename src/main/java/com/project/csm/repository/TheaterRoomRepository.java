package com.project.csm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Theater;
import com.project.csm.model.TheaterRoom;

@Repository
public interface TheaterRoomRepository extends JpaRepository<TheaterRoom, Long> {

	List<TheaterRoom> findByTheater(Theater theater);

}
