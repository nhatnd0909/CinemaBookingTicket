package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Ticket")
public class Ticket {
	@Id
	@Column(name = "TicketID")
	private String ticketID;

	@ManyToOne
	@JoinColumn(name = "ShowID")
	private Show show;

	@ManyToOne
	@JoinColumn(name = "SOCID")
	private SeatOfCinema seatOfCinema;

	@ManyToOne
	@JoinColumn(name = "OrderID")
	private Order order;

	@ManyToOne
	@JoinColumn(name = "CustomerID")
	private Customer customer;

	@Column(name = "Discount")
	private BigDecimal discount;

	@Column(name = "TotalPrice")
	private BigDecimal totalPrice;

	// Getters and setters
}
