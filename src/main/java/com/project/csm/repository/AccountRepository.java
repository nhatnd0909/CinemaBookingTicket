package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long>{

}
