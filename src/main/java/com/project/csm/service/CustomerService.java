package com.project.csm.service;

import java.util.ArrayList;
import java.util.List;

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

	public List<Customer> getAllCustomer() {
		return customerRepository.findAll();
	}

	public Customer findCustomerByEmail(String email) {
		List<Customer> list = new ArrayList<>();
		list = getAllCustomer();
		for (Customer c : list) {
			if (c.getAccount().getEmail().equals(email)) {
				return c;
			}
		}
		return null;
	}
}
