package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.repository.AccountRepository;

@Service
public class adminAccountService {
	@Autowired
    private AccountRepository accountRepository;
	
	public List<Account>getEmployees() {
        return accountRepository.findByRole("employee");
    }
	
	public List<Account>getCustomers() {
        return accountRepository.findByRole("customer");
    }
	
	public void createAccount(Account account) {
		accountRepository.save(account);
	}
	
	public void updateAccount(Account account) {
        accountRepository.save(account);
    }

	public void deleteAccountById(Long accountId) {
	    accountRepository.deleteById(accountId);
	 }
	
	 public boolean isEmailExists(String email) {
			return accountRepository.existsByEmail(email);
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
}
