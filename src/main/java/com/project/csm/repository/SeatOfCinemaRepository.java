package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.SeatOfCinema;

@Repository
public interface SeatOfCinemaRepository extends JpaRepository<SeatOfCinema, Long>{

}
