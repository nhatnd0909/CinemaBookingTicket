package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Seat;

@Repository
public interface SeatRepository extends JpaRepository<Seat, Long> {

}
