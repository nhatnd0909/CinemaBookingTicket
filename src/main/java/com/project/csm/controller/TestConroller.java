package com.project.csm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestConroller {
	
	@GetMapping("/test")
	public String test(Model model) {
		model.addAttribute("mess", "hello");
		return "/user/signin";
	}
}
