package com.project.csm.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Account")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "AccountID")
	private Long accountID;

	@Column(name = "UserName")
	private String userName;

	@Column(name = "Email")
	private String email;

	@Column(name = "Password")
	private String password;

	@Column(name = "Role")
	private String role;

	public Account() {
	}

	public Account(String userName, String email, String password) {
		this.userName = userName;
		this.email = email;
		this.password = password;
	}

	public Account(String userName, String email, String password, String role) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public Long getAccountID() {
		return accountID;
	}

	public void setAccountID(Long accountID) {
		this.accountID = accountID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Account [accountID=" + accountID + ", userName=" + userName + ", email=" + email + ", password="
				+ password + ", role=" + role + "]";
	}
	
}