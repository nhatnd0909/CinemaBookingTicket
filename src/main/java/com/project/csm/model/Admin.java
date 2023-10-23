package com.project.csm.model;

import java.util.Date;

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
	private int adminID;

	
	@Column(name = "Name")
	private String name;

	@Column(name = "Address")
	private String address;

	@Column(name = "PhoneNumber")
	private String phoneNumber;

	@Column(name = "DateOfBirth")
	private Date dateOfBirth;

	@OneToOne
	@JoinColumn(name = "AccountID")
	private Account account;
}