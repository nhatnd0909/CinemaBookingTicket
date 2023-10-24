package com.project.csm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Customer;
import com.project.csm.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	public Customer addNewCusstomer(Customer customer) {

		return customerRepository.save(customer);
	}

}
