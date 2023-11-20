package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Service")
public class Service {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ServiceID")
	private Long serviceID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Price")
	private BigDecimal price;

	@Column(name = "UrlImageService")
	private String urlImageService;

	@Column(name = "Size")
	private String size;

	@ManyToOne
	@JoinColumn(name = "EmployeeID")
	private Employee employee;

	public Service() {
		super();
	}

	public Service(Long serviceID, String name, BigDecimal price, String urlImageService, String size,
			Employee employee) {
		super();
		this.serviceID = serviceID;
		this.name = name;
		this.price = price;
		this.urlImageService = urlImageService;
		this.size = size;
		this.employee = employee;
	}

	public Long getServiceID() {
		return serviceID;
	}

	public void setServiceID(Long serviceID) {
		this.serviceID = serviceID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getUrlImageService() {
		return urlImageService;
	}

	public void setUrlImageService(String urlImageService) {
		this.urlImageService = urlImageService;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@Override
	public String toString() {
		return "Service [serviceID=" + serviceID + ", name=" + name + ", price=" + price + ", urlImageService="
				+ urlImageService + ", size=" + size + ", employee=" + employee + "]";
	}

}