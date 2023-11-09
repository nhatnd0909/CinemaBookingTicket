package com.project.csm.service.adminService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Genre;
import com.project.csm.model.Movie;
import com.project.csm.model.Rank;
import com.project.csm.repository.MovieRepository;

@Service
public class adminMovieService {
	@Autowired private MovieRepository repository;
	
	public List<Movie> listAll(){
		return repository.findAll();
	}

//	public void save(Movie movie) {
//		repository.save(movie);
//	}
	
	public Movie getMovieById(Long rankId) {
		 return repository.findById(rankId).orElse(null);
	}
	
	public Movie createMovie(Movie movie) {
		return repository.save(movie);
	}
	
	public void updateMovie(Movie movie) {
		repository.save(movie);
	}

	public void deleteMovieById(Long MovieId) {
		repository.deleteById(MovieId);
	}
	
//	public Movie get(Integer movieID) throws adminMovieNotFoundException {
//		Optional<Movie> result = repository.findById(movieID);
//		if (result.isPresent()) {
//			return result.get();
//		}
//		throw new adminMovieNotFoundException("Could not find any movies with ID" + movieID);
//	}
	

}
