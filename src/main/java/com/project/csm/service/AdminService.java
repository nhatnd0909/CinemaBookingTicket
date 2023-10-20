package com.project.csm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Account;
import com.project.csm.model.Admin;
import com.project.csm.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;

	public Admin addAdmin(Admin admin) {
		Account account = new Account();
		account.setEmail(admin.getAccount().getEmail());
		account.setUserName(admin.getAccount().getUserName());
		account.setPassword(admin.getAccount().getPassword());
		account.setRole("admin");
		admin.setAccount(account);

		return adminRepository.save(admin);
	}

	public Admin getAdminById(long adminID) {
		return adminRepository.findById(adminID).orElse(null);
	}
}
