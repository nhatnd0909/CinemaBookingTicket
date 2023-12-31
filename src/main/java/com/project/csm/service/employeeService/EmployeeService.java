package com.project.csm.service.employeeService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Employee;
import com.project.csm.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepository eRepository;

	public List<Employee> getAllEmployee() {
		return eRepository.findAll();
	}

	public Employee getEmployeeByIdAccount(Long idAccount) {
		List<Employee> listEm = getAllEmployee();
		for (Employee e : listEm) {
			if (e.getAccount().getAccountID() == idAccount) {
				return e;
			}
		}
		return null;
	}

	public Employee getEmployeeByEmail(String email) {
		List<Employee> list = getAllEmployee();
		for (Employee e : list) {
			if (e.getAccount().getEmail().equals(email)) {
				return e;
			}
		}
		return null;
	}

	public Employee getEmployeeByIDAccount(Long idAccount) {
		List<Employee> list = getAllEmployee();
		for (Employee e : list) {
			if (e.getAccount().getAccountID().compareTo(idAccount) == 0) {
				return e;
			}
		}
		return null;
	}
}
