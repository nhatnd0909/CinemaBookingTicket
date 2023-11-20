package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.CascadeType;
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

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "ShowID")
	private Show show;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "SOCID")
	private SeatOfCinema seatOfCinema;

	@Column(name = "ListSeat")
	private String listSeat;

	@ManyToOne
	@JoinColumn(name = "CustomerID")
	private Customer customer;

	@Column(name = "Discount")
	private Double discount;

	@Column(name = "TotalPrice")
	private BigDecimal totalPrice;

	public Ticket() {
		super();
	}

	public Ticket(String ticketID, Show show, String listSeat, Customer customer, Double discount,
			BigDecimal totalPrice) {
		super();
		this.ticketID = ticketID;
		this.show = show;
		this.listSeat = listSeat;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
	}

	public Ticket(String ticketID, Show show, SeatOfCinema seatOfCinema, String listSeat, Customer customer,
			Double discount, BigDecimal totalPrice) {
		super();
		this.ticketID = ticketID;
		this.show = show;
		this.seatOfCinema = seatOfCinema;
		this.listSeat = listSeat;
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

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getListSeat() {
		return listSeat;
	}

	public void setListSeat(String listSeat) {
		this.listSeat = listSeat;
	}

	@Override
	public String toString() {
		return "Ticket [ticketID=" + ticketID + ", show=" + show + ", seatOfCinema=" + seatOfCinema + ", listSeat="
				+ listSeat + ", customer=" + customer + ", discount=" + discount + ", totalPrice=" + totalPrice + "]";
	}

}
