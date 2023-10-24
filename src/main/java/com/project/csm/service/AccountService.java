package com.project.csm.service;

import java.util.Optional;

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

	public boolean isEmailExists(String email) {
		return accountRepository.existsByEmail(email);
	}

	public boolean isPasswordCorrect(String email, String password) {
        Optional<Account> accountOptional = accountRepository.findByEmailAndPassword(email, password);
        return accountOptional.isPresent();
    }
}
