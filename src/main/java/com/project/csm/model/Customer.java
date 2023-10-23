package com.project.csm.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Customer")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CustomerID")
	private Long customerID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "DateOfBirth")
	private Date dateOfBirth;

	@Column(name = "PhoneNumber")
	private String phoneNumber;

	@Column(name = "Address")
	private String address;

	@Column(name = "CreateDate")
	private Date createDate;

	@OneToOne
	@JoinColumn(name = "AccountID")
	private Account account;

	@ManyToOne
	@JoinColumn(name = "RankID")
	private Rank rank;

	public Customer() {
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate) {
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate,
			Account account, Rank rank) {
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.account = account;
		this.rank = rank;
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
				+ ", account=" + account + ", rank=" + rank + "]";
	}

}