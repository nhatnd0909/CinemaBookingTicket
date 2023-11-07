package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long>{
	
}
