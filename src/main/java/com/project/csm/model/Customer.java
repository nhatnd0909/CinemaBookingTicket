package com.project.csm.model;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long customerID;

	private String name;
	private String gender;
	private Date dateOfBirth;
	private String phoneNumber;
	private String address;
	private Date createDate;
	private int times;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "AccountID", referencedColumnName = "accountID")
	private Account account;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "RankID", referencedColumnName = "rankID")
	private Rank rank;

	public Customer() {
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate,
			int times) {
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.times = times;
	}

	public Customer(Long customerID, String name, String gender, Date dateOfBirth, String phoneNumber, String address,
			Date createDate, int times, Account account, Rank rank) {
		this.customerID = customerID;
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.times = times;
		this.account = account;
		this.rank = rank;
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate,
			int times, Account account, Rank rank) {
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.times = times;
		this.account = account;
		this.rank = rank;
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate,
			int times, Account account) {
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.times = times;
		this.account = account;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public Long getCustomerID() {
		return customerID;
	}

	public void setCustomerID(Long customerID) {
		this.customerID = customerID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Rank getRank() {
		return rank;
	}

	public void setRank(Rank rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", name=" + name + ", gender=" + gender + ", dateOfBirth="
				+ dateOfBirth + ", phoneNumber=" + phoneNumber + ", address=" + address + ", createDate=" + createDate
				+ ", times=" + times + ", account=" + account + ", rank=" + rank + "]";
	}

}