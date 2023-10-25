package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Theater;


@Repository
public interface TheaterRepository extends JpaRepository<Theater, Integer> {

}
