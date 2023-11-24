package com.project.csm.service.customerService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private RankService rankService;

	public Customer addNewCusstomer(Customer customer) {
		customer.setUrlImage("avatar.png");
		return customerRepository.save(customer);
	}

	public Customer updateCustomer(Customer customer) {
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

	public Customer getCustomerByID(Long id) {
		List<Customer> list = new ArrayList<>();
		list = getAllCustomer();
		for (Customer c : list) {
			if (c.getCustomerID() == id) {
				return c;
			}
		}
		return null;
	}

	public String parseDatetoString(Date inputDate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(inputDate);
	}

	public static Date parseStringToDate(String dateString) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(dateString);
	}

	public void changeImage(String email, String url) {
		Customer customer = findCustomerByEmail(email);
		customer.setUrlImage(url);
		customerRepository.save(customer);
	}

	public void updateTimes(Customer customer, String listSeat) {
		int size = listSeat.split(",").length;
		int oldTimes = customer.getTimes();
		int newTimes = oldTimes + size;
		customer.setTimes(newTimes);
		customerRepository.save(customer);
	}

	public void updateRank(Customer customer, int newTimes) {
		Rank rank = rankService.getRankByID(1L);
		if (newTimes > 70) {
			rank = rankService.getRankByID(6L);
		} else if (newTimes > 50) {
			rank = rankService.getRankByID(4L);
		} else if (newTimes > 30) {
			rank = rankService.getRankByID(3L);
		} else if (newTimes > 10) {
			rank = rankService.getRankByID(2L);
		} else {
		}
		customer.setRank(rank);
		customerRepository.save(customer);
	}
}
