package com.project.csm.controller.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.csm.service.AccountService;
import com.project.csm.service.CustomerService;
import com.project.csm.service.MailService;

@Controller
public class ForgotPasswordController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MailService mailService;
	@Autowired
	private AccountService accountService;
	private static final int CODE = MailService.generateRandomNumber();

	// get enter email to reset pass
	@GetMapping("/forgotpassword")
	public String getForgotPassword(Model model) {
		model.addAttribute("mess", "");
		return "/user/forgotPasword";
	}

	// get verify code to reset pass
	@GetMapping("/verifyressetpass")
	public String getverifyRessetPass(Model model) {
		model.addAttribute("mess", "");
		return "/user/fpVerify";
	}

	// get verify code to reset pass
	@GetMapping("/ressetpass")
	public String getRessetPass(Model model) {
		model.addAttribute("mess", "");
		return "/user/fpResetPass";
	}

	// form verify enter mail
	@PostMapping("/forgotpassword")
	public String sendCodeToEmailResetPass(Model model, @RequestParam String email) {
		if (customerService.findCustomerByEmail(email) == null) {
			model.addAttribute("mess", "Does not have any account with this email");
			return "/user/forgotPasword";
		}
		mailService.sendMail(email, CODE);

		model.addAttribute("mess", "");
		model.addAttribute("email", email);

		return "/user/fpVerify";
	}

	@PostMapping("/verifyressetpass")
	public String verifyRessetPass(Model model, @RequestParam String code, @RequestParam String email) {
		int codeInput = Integer.parseInt(code);
		if (codeInput != CODE) {
			model.addAttribute("email", email);
			model.addAttribute("mess", "Invalid verify code");
			return "/user/fpVerify";
		}

		model.addAttribute("mess", "");
		model.addAttribute("email", email);
		return "/user/fpResetPass";

	}

	@PostMapping("/ressetpass")
	public String resetPassword(Model model, @RequestParam String email, @RequestParam String pass,
			@RequestParam String rePass) {
		if (!pass.equals(rePass)) {
			model.addAttribute("email", email);
			model.addAttribute("mess", "Re password dose not match");
			return "/user/fpResetPass";
		}
		accountService.changePasswordByEmail(email, pass);
		return "redirect:/signin";
	}

}
