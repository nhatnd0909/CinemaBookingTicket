package com.project.csm.service.customerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Order;
import com.project.csm.repository.OrderRepository;

@Service
public class OrderService {
	@Autowired
	private OrderRepository oRepository;

	public Order createNewOrder(Order order) {
		return oRepository.save(order);
	}

	public List<Order> getAllOrder() {
		return oRepository.findAll();
	}
}
