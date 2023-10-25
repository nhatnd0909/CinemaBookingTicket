package com.project.csm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.model.Theater;
import com.project.csm.repository.AccountRepository;

@Service
public class AccountService {
	@Autowired
    private AccountRepository accountRepository;
	
	public List<Account>getEmployees() {
        return accountRepository.findByRole("employee");
    }
	public void createAccount(Account account) {
		accountRepository.save(account);
	}
	
	public void updateAccount(Account account) {
        accountRepository.save(account);
    }

	public void deleteAccountById(int accountId) {
	    accountRepository.deleteById(accountId);
	 }
}
