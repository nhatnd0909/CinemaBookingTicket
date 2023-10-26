package com.project.csm.controller.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.csm.model.Account;
import com.project.csm.service.customerService.AccountService;

@RestController
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private AccountService accountService;

	@PostMapping("/adduser")
	public Account addUserAccount(@RequestBody Account account) {
		return accountService.createUserAccount(account);
	}
	
	@GetMapping("/email")
	public boolean CheckEmailExist(@RequestParam String email) {
		return accountService.isEmailExists(email);
	}
	
	@GetMapping("/getByEmail")
	public Account getByEmail(@RequestParam String email) {
		return accountService.findAccountByEmail(email);
	}
	
	@PostMapping("/changepass")
	public Account changePass(@RequestParam String email,@RequestParam String pass) {
		return accountService.changePasswordByEmail(email, pass);
	}
}
