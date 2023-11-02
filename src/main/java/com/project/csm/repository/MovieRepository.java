package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.csm.model.Movie;

public interface MovieRepository  extends JpaRepository<Movie, Integer>{
	Long countByMovieID(Integer movieID);
}
