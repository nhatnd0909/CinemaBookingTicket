package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.csm.model.Genre;

public interface GenreRespository extends JpaRepository<Genre, Integer> {

	int  n ;

}
