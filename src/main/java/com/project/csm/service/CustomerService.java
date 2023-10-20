package com.project.csm.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private RankService rankService;
	@Autowired
	private AccountsService accountsService;

	public Customer addCustomer(Customer customer) {
		Rank rank = rankService.addRank();
		if (customer.getAccount() != null) {
			Account account = accountsService.addAccount(customer.getAccount());
			customer.setAccount(account);
		}
		customer.setRank(rank);
		customer.setCreateDate(new Date());
		customer.setTimes(0);
		return customerRepository.save(customer);
	}

	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

	public Customer getCustomerById(Long customerId) {
		return customerRepository.findById(customerId).orElse(null);
	}

	public Account getAccountByCustomerId(Long customerId) {
		Customer customer = customerRepository.findById(customerId).orElse(null);

		if (customer != null) {
			return customer.getAccount();
		}

		return null;
	}

	public Rank getRankByCustomerId(Long customerId) {
		Customer customer = customerRepository.findById(customerId).orElse(null);

		if (customer != null) {
			return customer.getRank();
		}

		return null;
	}

	public Customer updateCustomerById(Long customerId, Customer updatedCustomerDetails) {
		Optional<Customer> optionalCustomer = customerRepository.findById(customerId);

		if (optionalCustomer.isPresent()) {
			Customer existingCustomer = optionalCustomer.get();

			// Kiểm tra và cập nhật thông tin chỉ khi nó được cung cấp trong yêu cầu
			if (updatedCustomerDetails.getName() != null) {
				existingCustomer.setName(updatedCustomerDetails.getName());
			}

			if (updatedCustomerDetails.getGender() != null) {
				existingCustomer.setGender(updatedCustomerDetails.getGender());
			}

			if (updatedCustomerDetails.getDateOfBirth() != null) {
				existingCustomer.setDateOfBirth(updatedCustomerDetails.getDateOfBirth());
			}

			if (updatedCustomerDetails.getPhoneNumber() != null) {
				existingCustomer.setPhoneNumber(updatedCustomerDetails.getPhoneNumber());
			}

			if (updatedCustomerDetails.getAddress() != null) {
				existingCustomer.setAddress(updatedCustomerDetails.getAddress());
			}

			return customerRepository.save(existingCustomer);
		}

		return null; // Không tìm thấy khách hàng với ID đã cho
	}

	public Customer updateTimesByCustomerId(Long customerId) {
		Optional<Customer> optionalCustomer = customerRepository.findById(customerId);

		if (optionalCustomer.isPresent()) {
			Customer customer = optionalCustomer.get();
			int currentTimes = customer.getTimes();
			customer.setTimes(currentTimes + 1);
			return customerRepository.save(customer);
		}

		return null; // Không tìm thấy khách hàng với ID đã cho
	}

	public Customer updateAccountByCustomerId(Long customerId, Account updatedAccountDetails) {
		Optional<Customer> optionalCustomer = customerRepository.findById(customerId);

		if (optionalCustomer.isPresent()) {
			Customer customer = optionalCustomer.get();

			// Kiểm tra xem tài khoản của khách hàng đã được liên kết chưa
			if (customer.getAccount() != null) {
				Account existingAccount = customer.getAccount();

				// Kiểm tra và cập nhật thông tin tài khoản chỉ khi nó được cung cấp trong yêu
				// cầu
				if (updatedAccountDetails.getUserName() != null) {
					existingAccount.setUserName(updatedAccountDetails.getUserName());
				}

				if (updatedAccountDetails.getEmail() != null) {
					existingAccount.setEmail(updatedAccountDetails.getEmail());
				}

				if (updatedAccountDetails.getPassword() != null) {
					existingAccount.setPassword(updatedAccountDetails.getPassword());
				}
				accountsService.updateAccountById(customerId, updatedAccountDetails);
				return customerRepository.save(customer);
			} else {
				return null; // Không có tài khoản để cập nhật
			}
		}

		return null; // Không tìm thấy khách hàng với ID đã cho
	}

	public Customer updateRankByTimes(Long customerId) {
		Optional<Customer> optionalCustomer = customerRepository.findById(customerId);

		if (optionalCustomer.isPresent()) {
			Customer customer = optionalCustomer.get();
			int times = customer.getTimes();
			String rankType;

			if (times > 170) {
				rankType = "Diamond";
			} else if (times > 100) {
				rankType = "Platinum";
			} else if (times > 50) {
				rankType = "Gold";
			} else if (times > 20) {
				rankType = "Silver";
			} else {
				return customer; // No need to update rank
			}

			Rank updatedRank = rankService.updateRankByID(customer.getRank().getRankID(), rankType);

			if (updatedRank != null) {
				customer.setRank(updatedRank);
				return customerRepository.save(customer);
			}
		}

		return null; // Customer with given ID not found or rank update failed
	}
	

}
