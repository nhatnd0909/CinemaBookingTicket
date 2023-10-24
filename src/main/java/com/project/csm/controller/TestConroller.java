package com.project.csm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.csm.service.AccountService;
import com.project.csm.service.CustomerService;
import com.project.csm.service.RankService;

@Controller
public class TestConroller {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RankService rankService;
	@Autowired
	private CustomerService customerService;

	@GetMapping("/test")
	public String test(Model model) {
		model.addAttribute("mess", "hello");
		return "/user/signin";
	}

}
