package com.project.csm.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Contact")
public class Contact {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ContactID")
	private Long contactID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Email")
	private String email;

	@Column(name = "Phone")
	private String phone;

	@Column(name = "Content")
	private String content;

	public Contact() {
		super();
	}

	public Contact(String name, String email, String phone, String content) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.content = content;
	}

	public Contact(Long contactID, String name, String email, String phone, String content) {
		super();
		this.contactID = contactID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.content = content;
	}

	public Long getContactID() {
		return contactID;
	}

	public void setContactID(Long contactID) {
		this.contactID = contactID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Contact [contactID=" + contactID + ", name=" + name + ", email=" + email + ", phone=" + phone
				+ ", content=" + content + "]";
	}

}
