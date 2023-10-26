package com.project.csm.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {
	boolean existsByEmail(String email);
	Optional<Account> findByEmailAndPassword(String email, String password);
	
	List<Account> findByRole(String role);

	Account findByEmail(String email);
	boolean existsByUserName(String userName);
	
	
}
