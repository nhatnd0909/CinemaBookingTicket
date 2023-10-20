package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Account;
import com.project.csm.service.AccountsService;

@RestController
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private AccountsService accountsService;

	@PostMapping("/add")
	public Account addAccount(@RequestBody Account account) {

		return accountsService.addAccount(account);
	}

	@PutMapping("/updateAccount/{accountId}")
	public ResponseEntity<Account> updateAccountById(@PathVariable Long accountId,
			@RequestBody Account updatedAccountDetails) {
		Account updatedAccount = accountsService.updateAccountById(accountId, updatedAccountDetails);

		if (updatedAccount != null) {
			return ResponseEntity.ok(updatedAccount);
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
}
