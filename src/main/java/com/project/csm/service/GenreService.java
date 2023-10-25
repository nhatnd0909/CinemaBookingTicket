package com.project.csm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.model.Genre;
import com.project.csm.repository.GenreRespository;

@Service
public class GenreService {

	@Autowired GenreRespository genreResporsitory;
	
	
	public void createGenre(Genre genre) {
		genreResporsitory.save(genre);
	}
}
