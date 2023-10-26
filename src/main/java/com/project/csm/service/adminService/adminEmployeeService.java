package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.csm.model.Employee;
import com.project.csm.repository.EmployeeRepository;

@Service
public class adminEmployeeService {
	
  @Autowired
  private EmployeeRepository employeeRepository ; 
  

  
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


}
