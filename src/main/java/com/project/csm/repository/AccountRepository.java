package com.project.csm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Account;


@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{
	List<Account> findByRole(String role);

	
}
