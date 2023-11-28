package com.project.csm.service.customerService;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	private JavaMailSender mailSender;

	@Value("${spring.mail.username}")
	private String fromMail;

	public static int generateRandomNumber() {
		Random rand = new Random();
		return rand.nextInt(900000) + 100000;
	}

	public void sendMail(String mail, int code) {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setFrom(fromMail);
		simpleMailMessage.setSubject("Verification Mail");
		simpleMailMessage.setText("Your verification code: " + code);
		simpleMailMessage.setTo(mail);

		mailSender.send(simpleMailMessage);
	}

	public void sendMailReply(String mail, String content) {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setFrom(fromMail);
		simpleMailMessage.setSubject("Reply mail:");
		simpleMailMessage.setText(content);
		simpleMailMessage.setTo(mail);

		mailSender.send(simpleMailMessage);
	}
}
