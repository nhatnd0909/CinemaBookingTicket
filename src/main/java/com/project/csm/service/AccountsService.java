package com.project.csm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.repository.AccountRepository;

@Service
public class AccountsService {
	@Autowired
	private AccountRepository accountRepository;

	public Account addAccount(Account account) {
		account.setRole("user");

		return accountRepository.save(account);
	}

	
	public Account updateAccountById(Long accountId, Account updatedAccountDetails) {
		Optional<Account> optionalAccount = accountRepository.findById(accountId);

		if (optionalAccount.isPresent()) {
			Account existingAccount = optionalAccount.get();
			if (updatedAccountDetails.getEmail() != null) {
				existingAccount.setEmail(updatedAccountDetails.getEmail());
			}
			if (updatedAccountDetails.getUserName() != null) {
				existingAccount.setUserName(updatedAccountDetails.getUserName());
			}
			if (updatedAccountDetails.getPassword() != null) {
				existingAccount.setPassword(updatedAccountDetails.getPassword());
			}
			return accountRepository.save(existingAccount);
		}
		return null; // Account with given ID not found
	}

}
