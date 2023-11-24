package com.project.csm.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "Payment")
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PaymentID")
	private Long paymentID;

	@Column(name = "Date")
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@Temporal(TemporalType.DATE)
	private Date date;

	@OneToOne
	@JoinColumn(name = "TicketID")
	private Ticket ticket;

	@Column(name = "Total")
	private int total;

	public Payment() {
		super();
	}

	public Payment(Date date, Ticket ticket, int total) {
		super();
		this.date = date;
		this.ticket = ticket;
		this.total = total;
	}

	public Long getPaymentID() {
		return paymentID;
	}

	public void setPaymentID(Long paymentID) {
		this.paymentID = paymentID;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Payment [paymentID=" + paymentID + ", date=" + date + ", ticket=" + ticket + ", total=" + total + "]";
	}

}
