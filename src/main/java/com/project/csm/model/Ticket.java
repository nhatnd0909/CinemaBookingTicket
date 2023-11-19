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
	@JoinColumn(name = "CustomerID")
	private Customer customer;

	@Column(name = "Discount")
	private BigDecimal discount;

	@Column(name = "TotalPrice")
	private BigDecimal totalPrice;

	public Ticket() {
		super();
	}

	public Ticket(Show show, SeatOfCinema seatOfCinema, Customer customer, BigDecimal discount, BigDecimal totalPrice) {
		super();
		this.show = show;
		this.seatOfCinema = seatOfCinema;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
	}

	public Ticket(String ticketID, Show show, SeatOfCinema seatOfCinema, Customer customer, BigDecimal discount,
			BigDecimal totalPrice) {
		super();
		this.ticketID = ticketID;
		this.show = show;
		this.seatOfCinema = seatOfCinema;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
	}

	public String getTicketID() {
		return ticketID;
	}

	public void setTicketID(String ticketID) {
		this.ticketID = ticketID;
	}

	public Show getShow() {
		return show;
	}

	public void setShow(Show show) {
		this.show = show;
	}

	public SeatOfCinema getSeatOfCinema() {
		return seatOfCinema;
	}

	public void setSeatOfCinema(SeatOfCinema seatOfCinema) {
		this.seatOfCinema = seatOfCinema;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public BigDecimal getDiscount() {
		return discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Ticket [ticketID=" + ticketID + ", show=" + show + ", seatOfCinema=" + seatOfCinema + ", customer="
				+ customer + ", discount=" + discount + ", totalPrice=" + totalPrice + "]";
	}

}
