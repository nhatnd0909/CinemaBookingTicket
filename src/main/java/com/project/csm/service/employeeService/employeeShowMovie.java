package com.project.csm.service.employeeService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Show;
import com.project.csm.repository.EmployeeRepository;
import com.project.csm.repository.ShowRepository;

@Service
public class employeeShowMovie {
	
	@Autowired
	private ShowRepository showRepository;
	
	public List<Show> getAllShows() {
		return showRepository.findAll();
	} 
	
	
}
