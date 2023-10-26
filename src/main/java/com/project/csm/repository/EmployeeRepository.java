package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.project.csm.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee , Long > {
	boolean existsByPhoneNumber(String phoneNumber);
}
