package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.csm.model.Employee;
import com.project.csm.repository.AccountRepository;
import com.project.csm.repository.EmployeeRepository;

@Service
public class adminEmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
    private AccountRepository accountRepository;
	

	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();
	}

	public void createEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	public Employee getEmployeeById(Long employeeId) {
		return employeeRepository.findById(employeeId).orElse(null);
	}

	public void updateEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	public void deleteEmployeeById(Long employeeId) {
		employeeRepository.deleteById(employeeId);
	}

	public boolean isEmailExists(String email) {
		return accountRepository.existsByEmail(email);
	}

	public boolean isUserNameExists(String userName) {
		return accountRepository.existsByUserName(userName);
	}
	
	public boolean isPhoneExists(String phoneNumber) {
		return employeeRepository.existsByPhoneNumber(phoneNumber);
	}


}
