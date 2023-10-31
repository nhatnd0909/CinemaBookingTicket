package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Employee;
import com.project.csm.model.Genre;
import com.project.csm.model.Rank;
import com.project.csm.repository.GenreRepository;

@Service
public class adminGenreService {
	@Autowired
	private GenreRepository genreRepository;
	public List<Genre> getAllGenre() {
		return genreRepository.findAll();
	}

	public void deleteGenreById(Long GenreId) {
		genreRepository.deleteById(GenreId);
	}
	
	public Genre getGenreById(Long genreId) {
		return genreRepository.findById(genreId).orElse(null);
	}
	
	public Genre createGenre(Genre genre) {
		return genreRepository.save(genre);
	}
	
	public void updateGenre(Genre genre) {
		genreRepository.save(genre);
	}


}
