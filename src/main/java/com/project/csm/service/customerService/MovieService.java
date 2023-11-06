package com.project.csm.service.customerService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Movie;
import com.project.csm.repository.MovieRepository;

@Service
public class MovieService {
	@Autowired
	private MovieRepository movieRepository;

	public List<Movie> getAllMovie() {
		return movieRepository.findAll();
	}

	public List<Movie> getPopularMovie() {
		List<Movie> listReturn = new ArrayList<>();
		List<Movie> listMovie = getAllMovie();
		for (int i = 0; i < 4 && i < listMovie.size(); i++) {
			listReturn.add(listMovie.get(i));
		}
		return listReturn;
	}

	public List<Movie> getLatestMovie() {
		List<Movie> listReturn = new ArrayList<>();
		List<Movie> listMovie = getAllMovie();
		for (int i = 0; i < 4 && i < listMovie.size(); i++) {
			listReturn.add(listMovie.get(i));
		}
		return listReturn;
	}
}
