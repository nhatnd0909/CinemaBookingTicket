package com.project.csm.model;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Admin")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "AdminID")
	private Long adminID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Address")
	private String address;

	@Column(name = "PhoneNumber")
	private String phoneNumber;

	@Column(name = "DateOfBirth")
	private Date dateOfBirth;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "AccountID")
	private Account account;

	public Admin() {
	}

	public Admin(String name, String address, String phoneNumber, Date dateOfBirth, Account account) {
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.account = account;
	}

	public Admin(Long adminID, String name, String address, String phoneNumber, Date dateOfBirth, Account account) {
		this.adminID = adminID;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.account = account;
	}

	public Long getAdminID() {
		return adminID;
	}

	public void setAdminID(Long adminID) {
		this.adminID = adminID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Admin [adminID=" + adminID + ", name=" + name + ", address=" + address + ", phoneNumber=" + phoneNumber
				+ ", dateOfBirth=" + dateOfBirth + ", account=" + account + "]";
	}

}