package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Customer;
import com.project.csm.repository.CustomerRepository;

@Service
public class adminCustomerService {
	@Autowired
    private CustomerRepository customerRepository;

    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    public void createCustomer(Customer customer) {
    	customerRepository.save(customer);
    }
    
    public Customer getCustomerById(Long customerId) {
        return customerRepository.findById(customerId).orElse(null);
    }
    
    public void updateCustomer(Customer customer) {
    	customerRepository.save(customer);
    }
    
   
    public void deleteCustomerById(Long customerId) {
    	customerRepository.deleteById(customerId);
  	  }
}
