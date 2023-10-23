package com.project.csm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.repository.AccountRepository;

@Service
public class AccountService {
	@Autowired
	private AccountRepository accountRepository;

	public Account createUserAccount(Account account) {
		account.setRole("user");
		return accountRepository.save(account);
	}
	public Account createAdminAccount(Account account) {
		account.setRole("admin");
		return accountRepository.save(account);
	}
}
