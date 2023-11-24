package com.project.csm.service.adminService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Admin;
import com.project.csm.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;

	public Admin createAddmin(Admin admin) {
		return adminRepository.save(admin);
	}

	public List<Admin> getAllAdmin() {
		return adminRepository.findAll();
	}

	public Admin getAdminByAccountID(Long idAccount) {
		List<Admin> list = getAllAdmin();
		for (Admin a : list) {
			if (a.getAccount().getAccountID().compareTo(idAccount) == 0) {
				return a;
			}
		}
		return null;
	}
}
