package com.project.csm.model;

import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long adminID;

	private String name;
	private String address;
	private String phoneNumber;

	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "AccountID", referencedColumnName = "accountID")
	private Account account;

	@OneToMany(mappedBy = "admin", cascade = CascadeType.ALL)
	private List<Theater> theaters;

	public Admin() {
	}

	public Admin(String name, String address, String phoneNumber, Date dateOfBirth) {
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
	}

	public Admin(String name, String address, String phoneNumber, Date dateOfBirth, Account account) {
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.account = account;
	}

	public Admin(String name, String address, String phoneNumber, Date dateOfBirth, Account account,
			List<Theater> theaters) {
		super();
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.account = account;
		this.theaters = theaters;
	}

	public long getAdminID() {
		return adminID;
	}

	public void setAdminID(long adminID) {
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
}
