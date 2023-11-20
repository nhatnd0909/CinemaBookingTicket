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
@Table(name = "[Order]") // Because "Order" is a reserved keyword in SQL
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "OrderID")
	private Long orderID;

	@ManyToOne
	@JoinColumn(name = "ServiceID")
	private Service service;

	@Column(name = "Amount")
	private int amount;

	@Column(name = "TotalPrice")
	private BigDecimal totalPrice;

	@ManyToOne
	@JoinColumn(name = "TicketID")
	private Ticket ticket;

	public Order() {
		super();
	}

	public Order(Service service, int amount, BigDecimal totalPrice, Ticket ticket) {
		super();
		this.service = service;
		this.amount = amount;
		this.totalPrice = totalPrice;
		this.ticket = ticket;
	}

	public Order(Long orderID, Service service, int amount, BigDecimal totalPrice, Ticket ticket) {
		super();
		this.orderID = orderID;
		this.service = service;
		this.amount = amount;
		this.totalPrice = totalPrice;
		this.ticket = ticket;
	}

	public Long getOrderID() {
		return orderID;
	}

	public void setOrderID(Long orderID) {
		this.orderID = orderID;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	@Override
	public String toString() {
		return "Order [orderID=" + orderID + ", service=" + service + ", amount=" + amount + ", totalPrice="
				+ totalPrice + ", ticket=" + ticket + "]";
	}

}
