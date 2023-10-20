package com.project.csm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.service.CustomerService;

@RestController
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@PostMapping("/add")
	public Customer addCustomer(@RequestBody Customer customer) {
		return customerService.addCustomer(customer);
	}

	@GetMapping("/getall")
	public List<Customer> getAllCustomers() {
		return customerService.getAllCustomers();
	}

	@GetMapping("/get/{customerId}")
	public Customer getCustomerById(@PathVariable Long customerId) {
		return customerService.getCustomerById(customerId);
	}

	@GetMapping("/account/{customerId}")
	public Account getAccountByCustomerId(@PathVariable Long customerId) {
		return customerService.getAccountByCustomerId(customerId);
	}

	@GetMapping("/rank/{customerId}")
	public Rank getRankByCustomerId(@PathVariable Long customerId) {
		return customerService.getRankByCustomerId(customerId);
	}

	@PutMapping("/update/{customerId}")
	public ResponseEntity<Customer> updateCustomerById(@PathVariable Long customerId,
			@RequestBody Customer updatedCustomerDetails) {
		Customer updatedCustomer = customerService.updateCustomerById(customerId, updatedCustomerDetails);

		if (updatedCustomer != null) {
			return ResponseEntity.ok(updatedCustomer);
		} else {
			return ResponseEntity.notFound().build();
		}
	}

	@PutMapping("/update-times/{customerId}")
	public ResponseEntity<Customer> updateTimesByCustomerId(@PathVariable Long customerId) {
		Customer updatedCustomer = customerService.updateTimesByCustomerId(customerId);

		if (updatedCustomer != null) {
			return ResponseEntity.ok(updatedCustomer);
		} else {
			return ResponseEntity.notFound().build();
		}
	}

	@PutMapping("/update-account/{customerId}")
	public ResponseEntity<Customer> updateAccountByCustomerId(@PathVariable Long customerId,
			@RequestBody Account updatedAccountDetails) {
		Customer updatedCustomer = customerService.updateAccountByCustomerId(customerId, updatedAccountDetails);

		if (updatedCustomer != null) {
			return ResponseEntity.ok(updatedCustomer);
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@PutMapping("/update-rank-by-times/{customerId}")
    public ResponseEntity<Customer> updateRankByTimes(@PathVariable Long customerId) {
        Customer updatedCustomer = customerService.updateRankByTimes(customerId);

        if (updatedCustomer != null) {
            return ResponseEntity.ok(updatedCustomer);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
