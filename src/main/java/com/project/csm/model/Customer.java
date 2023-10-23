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
	private int customerID;

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

}