package com.project.csm.controller.userController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Customer;
import com.project.csm.model.Movie;
import com.project.csm.service.customerService.CustomerService;
import com.project.csm.service.customerService.MovieService;

@RestController
public class Test {
	@Autowired
	private MovieService movieService;
	@Autowired
	private CustomerService customerService;

	@GetMapping("/get")
	public List<Movie> getAllMovie() {
		return movieService.getAllMovie();
	}

	@GetMapping("/get1")
	public List<Movie> getAllCus() {
		return movieService.getPopularMovie();
	}
	
	@GetMapping("/get2")
    public String getEntityById(@RequestParam Long id) {
		
        return "Bạn đã gửi request với id = " + id;
    }
}
