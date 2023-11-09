package com.project.csm.service.customerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.repository.ServiceRepository;

@Service
public class ServiceService {
	@Autowired
	private ServiceRepository sRepository;

	public List<com.project.csm.model.Service> getAllService() {

		return sRepository.findAll();
	}
}
