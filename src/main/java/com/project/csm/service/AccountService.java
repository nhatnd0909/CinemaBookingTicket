package com.project.csm.service;

import java.util.List;
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
		account.setRole("USER");
		return accountRepository.save(account);
	}

	public boolean isEmailExists(String email) {
		return accountRepository.existsByEmail(email);
	}

	public boolean isPasswordCorrect(String email, String password) {
		Optional<Account> accountOptional = accountRepository.findByEmailAndPassword(email, password);
		return accountOptional.isPresent();
	}

	public Account findAccountByEmail(String email) {
		List<Account> list = accountRepository.findAll();
		for (Account a : list) {
			if (a.getEmail().equals(email)) {
				return a;
			}
		}
		return null;
	}

	public Account changePasswordByEmail(String email, String password) {
		Account account = findAccountByEmail(email);
		if (account != null) {
			account.setPassword(password);
			return accountRepository.save(account);
		}
		return null;
	}
}
