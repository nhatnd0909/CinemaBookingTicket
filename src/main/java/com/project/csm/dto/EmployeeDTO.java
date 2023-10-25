package com.project.csm.dto;

import org.springframework.stereotype.Component;

import jakarta.validation.constraints.NotBlank;
@Component
public class EmployeeDTO {

	@NotBlank(message = "User Name is required")
	private String userName;
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "EmployeeDTO [userName=" + userName + "]";
	}

}
