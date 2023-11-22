package com.project.csm.service.customerService;

import java.util.ArrayList;
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

	public String[] processString(String input) {
		String modifiedString = input.replaceAll("size.?", "");
		String[] resultArray = modifiedString.split(",");
		return resultArray;
	}

	public String[] processString2(String input) {
		int lastPlusIndex = input.lastIndexOf("+");
		String substringBeforeLastPlus = input.substring(0, lastPlusIndex);
		String substringAfterLastPlus = input.substring(lastPlusIndex + 1);
		String[] resultArray = { substringBeforeLastPlus, substringAfterLastPlus };

		return resultArray;
	}

	public Order getOrderByName(String name) {
		List<Order> list = getAllOrder();
		for (Order o : list) {
			if (o.getService().getName().equals(name)) {
				return o;
			}
		}
		return null;
	}

	public String[] getOrder(String input) {
		String[] resultArray = input.split("\\+");
		return resultArray;
	}

	public void deleteOrder(String idTicket) {
		List<Order> list = getAllOrder();
		for (Order o : list) {
			if (o.getTicketID().endsWith(idTicket)) {
				oRepository.delete(o);
			}
		}
	}

	public List<Order> getAllOrderByIDTicket(String idTicket) {
		List<Order> list = getAllOrder();
		List<Order> listReturn = new ArrayList<>();
		for (Order o : list) {
			if (o.getTicketID().equals(idTicket)) {
				listReturn.add(o);
			}
		}
		return listReturn;
	}
}
