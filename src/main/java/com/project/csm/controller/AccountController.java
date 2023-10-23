package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Account;
import com.project.csm.service.AccountService;

@RestController
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private AccountService accountService;

	@PostMapping("/adduser")
	public Account addUserAccount(@RequestBody Account account) {
		return accountService.createUserAccount(account);
	}
	
	@PostMapping("/addadmin")
	public Account addAdminAccount(@RequestBody Account account) {
		return accountService.createAdminAccount(account);
	}
}